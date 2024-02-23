cm:load_global_script("vco");
local vco = core:get_static_object("vco");

local vlc = {
	characters = {},
	corruption = {},
	diplomacy = {},
	items = {},
	nagash_books = {},
	pooled_resources = {},
	unit_locks = {},
};

-- CHARACTERS --

function vlc.characters:is_rank_gte(character, target_rank)
	return character:rank() >= target_rank;
end

function vlc.characters:replenish_campaign_movement(character)
	cm:replenish_action_points(cm:char_lookup_str(character), (character:action_points_remaining_percent() + 100) / 100);
end

-- CORRUPTION --

function vlc.corruption:is_corruption_highest_in_region(corruption_key, region)
	return (cm:get_highest_corruption_in_region(region) or '') == corruption_key;
end

function vlc.corruption:count_regions_where_corruption_is_highest(corruption_key)
	local regions_count = 0;

	local provinces_list = cm:model():world():province_list();
	for i = 0, provinces_list:num_items() - 1 do
		local current_province = provinces_list:item_at(i);
		for _, region in model_pairs(current_province:regions()) do
			if self:is_corruption_highest_in_region(corruption_key, region) then
				regions_count = regions_count + 1;
			end
		end
	end

	return regions_count;
end

-- DIPLOMACY --

function vlc.diplomacy:apply_effect_bundle_safe(effect_bundle_key, faction_key, number_turns)
	if self:is_target_faction_valid(target_faction_key) then
		cm:apply_effect_bundle(effect_bundle_key, faction_key, number_turns);
	end
end

function vlc.diplomacy:is_faction_military_ally_or_destroyed(self_faction, target_faction_key)
	local target_faction = cm:get_faction(target_faction_key);
	return target_faction and (target_faction:is_dead() or target_faction:military_allies_with(self_faction));
end

function vlc.diplomacy:is_faction_vassal_or_destroyed(self_faction, target_faction_key, consider_military_allies)
	local target_faction = cm:get_faction(target_faction_key);
	if target_faction then
		if target_faction:is_dead() or target_faction:is_vassal_of(self_faction) then
			return true;
		end

		if consider_military_allies then
			local player_faction_military_allies = self_faction:factions_military_allies_with();
			for i = 0, player_faction_military_allies:num_items() - 1 do
				if target_faction:is_vassal_of(player_faction_military_allies:item_at(i)) then
					return true;
				end
			end
		end
	end

	return false;
end

function vlc.diplomacy:is_faction_under_your_control(self_faction, target_faction_key, consider_military_allies)
	return self:is_faction_vassal_or_destroyed(self_faction, target_faction_key, consider_military_allies) or
		self:is_faction_military_ally_or_destroyed(self_faction, target_faction_key);
end

function vlc.diplomacy:is_target_faction_valid(target_faction_key)
	local target = cm:get_faction(target_faction_key);
	return target ~= nil and not (target:is_null_interface() or target:is_human() or target:is_dead());
end

function vlc.diplomacy:vassalise_faction_safe(self_faction, target_faction_key)
	if self:is_target_faction_valid(target_faction_key) then
		cm:force_make_vassal(self_faction, target_faction_key);
	end
end

-- ITEMS --

function vlc.items:add_item_to_faction_inventory(item_key, faction_key)
	local faction = cm:get_faction(faction_key);
	cm:add_ancillary_to_faction(faction, item_key, false);
end

-- NAGASH BOOKS --

function vlc.nagash_books:add(faction_key, book_number)
	vco:log("Book of Nagash collected (" .. faction_key .. "): " .. book_number);
	cm:set_saved_value("vco_" .. faction_key .. "_book_" .. book_number .. "_collected", true);
end

function vlc.nagash_books:count(faction_key)
	vco:log("Counting Books of Nagash (" .. faction_key .. ")");
	local count_collected_books = 0;

	for book_number=1, 8 do
		if cm:get_saved_value("vco_" .. faction_key .. "_book_" .. book_number .. "_collected") then
			vco:log("- Book " .. book_number .. " OK");
			count_collected_books = count_collected_books + 1;
		end
	end

	vco:log("Total Books of Nagash: " .. count_collected_books);
	return count_collected_books;
end

function vlc.nagash_books:check_all_books_collected(faction_key, base_books)
	vco:log("Checking Books of Nagash (" .. faction_key .. ")");
	local MAX_BOOKS = 8;

	local count_books = self:count(faction_key);
	if count_books < MAX_BOOKS then
	    local message_count_books = count_books + base_books;
		vco:log("Checking Books of Nagash | Count updated to " .. message_count_books);
		vco:set_mission_text("vco_" .. faction_key .. "_nagash_books", "vco_common_nagash_books_collected_" .. message_count_books);
		return false;
	else
		vco:log("Checking Books of Nagash | Mission completed");
		vco:set_mission_text("vco_" .. faction_key .. "_nagash_books", "vco_common_nagash_books_collected");
		vco:complete_mission(faction_key, "vco_" .. faction_key .. "_nagash_books");
		return true;
	end
end

function vlc.nagash_books:check_all_books_collected_and_trigger_final_battle(faction_key, base_books, final_battle_key)
    if self:check_all_books_collected(faction_key, base_books) then
        cm:trigger_mission(faction_key, final_battle_key, true);
        --cm:override_building_chain_display("wh2_dlc09_special_settlement_pyramid_of_nagash_tmb", "wh2_dlc09_special_settlement_pyramid_of_nagash_floating")
    end
end

-- POOLED RESOURCES --

function vlc.pooled_resources:get_faction_earnings(faction_id, pooled_resource_key)
	return cm:get_saved_value("vco_pooled_resource_earned_" .. faction_id .. "_" .. pooled_resource_key) or 0;
end

function vlc.pooled_resources:add_faction_earnings(faction_id, pooled_resource_key, amount)
	if amount > 0 then
		local current_earnings = self:get_faction_earnings(faction_id, pooled_resource_key);
		cm:set_saved_value(
			"vco_pooled_resource_earned_" .. faction_id .. "_" .. pooled_resource_key, current_earnings + amount
		);
	end
end

function vlc.pooled_resources:is_faction_earnings_gte(faction_id, pooled_resource_key, target_amount)
	return self:get_faction_earnings(faction_id, pooled_resource_key) >= target_amount;
end

-- UNIT LOCKS & UNLOCKS --

function vlc.unit_locks:lock_unit(unit_key, faction_key)
	--vco:log("lock_unit | Locking unit " .. unit_key .. " for faction " .. faction_key);
	cm:add_event_restricted_unit_record_for_faction(unit_key, faction_key,"norsca_monster_hunt_ror_unlock");
end

function vlc.unit_locks:unlock_unit(unit_key, faction_key)
	cm:remove_event_restricted_unit_record_for_faction(unit_key, faction_key);
end

function vlc.unit_locks:lock_units(unit_keys_list, faction_key)
	for _, unit_key in ipairs(unit_keys_list) do
		self:lock_unit(unit_key, faction_key);
	end
end

function vlc.unit_locks:unlock_units(unit_keys_list, faction_key)
	for _, unit_key in ipairs(unit_keys_list) do
		self:unlock_unit(unit_key, faction_key);
	end
end

function vlc.unit_locks:lock_units_by_subculture(unit_keys_list, subculture_key)
	local all_subculture_factions = cm:get_factions_by_subculture(subculture_key);
	for _, unit_key in ipairs(unit_keys_list) do
		for _, faction_key in ipairs(all_subculture_factions) do
			self:lock_unit(unit_key, faction_key:name())
		end
	end
end

-- EXPORT --

core:add_static_object("vco-lib-commons", vlc);
