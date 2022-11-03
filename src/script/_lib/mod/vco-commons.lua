local vco = core:get_static_object("vco");

local vlc = {
  characters = {},
  corruption = {},
  diplomacy = {},
  nagash_books = {},
  pooled_resources = {},
  unit_locks = {},
};

-- CHARACTERS --

function vlc.characters:is_rank_gte(character, target_rank)
  return character:rank() >= target_rank;
end

function vlc.characters:replenish_campaign_movement(character)
	-- TODO: I replaced movement to replenish with 100
	--       We might want this to be *2 which doubles remaining action points?
	--       Much discussion and testing to be had here
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

-- NAGASH BOOKS --

function vlc.nagash_books:add(faction_id, book_number)
	cm:set_saved_value("vco_" .. faction_id .. "_book_" .. book_number .. "_collected", true);
end

function vlc.nagash_books:count(faction_id)
	local count_collected_books = 0;

	for book_number=1, 9 do
		if cm:get_saved_value("vco_" .. faction_id .. "_book_" .. book_number .. "_collected") then
			count_collected_books = count_collected_books + 1;
		end
	end

	return count_collected_books;
end

function vlc.nagash_books:check_generic_all_books_collected(faction_id, mission, max_books)
	local book_number = string.sub(mission:mission_record_key(), -1);
	self:add(faction_id, book_number);

	local count_books = self:count(faction_id);
	if count_books < max_books then
		vco:set_mission_text("vco_" .. faction_id.. "_nagash_books", "vco_common_nagash_books_collected_" .. count_books);
	else
		vco:set_mission_text("vco_" .. faction_id .. "_nagash_books", "vco_common_nagash_books_collected");
		vco:complete_mission(faction_id, "vco_" .. faction_id .. "_nagash_books");
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
  cm:add_event_restricted_unit_record_for_faction(unit_key, faction_key);
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

-- EXPORT --

core:add_static_object("vco-lib-commons", vlc);
