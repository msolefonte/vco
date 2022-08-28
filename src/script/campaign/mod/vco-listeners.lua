local vco = core:get_static_object("vco");

-- UTILS --

local function complete_mission(faction_name, script_key)
  cm:complete_scripted_mission_objective(faction_name, "wh_main_long_victory", script_key, true);
end

local function set_mission_text(script_key, text_key)
  cm:set_scripted_mission_text("wh_main_long_victory", script_key, "mission_text_text_" .. text_key);
end

-- GENERIC --

local function count_regions_with_highest_corruption(corruption_key)
  local regions_count = 0;

  local province_list = cm:model():world():province_list();
  for i = 0, province_list:num_items() - 1 do
    local current_province = province_list:item_at(i);
    for _, region in model_pairs(current_province:regions()) do
      local highest_corruption_in_region = cm:get_highest_corruption_in_region(region) or '';
      if highest_corruption_in_region == corruption_key then
        regions_count = regions_count + 1;
      end
    end
  end

  return regions_count;
end

-- CHECKS --

local function check_vco_cth_the_western_provinces_caravans(faction_key)
  local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
  local num_caravans_completed = cm:get_saved_value("caravans_completed_" .. faction_key) or 0;

  if num_caravans_completed < REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY then
    set_mission_text("vco_cth_the_western_provinces_caravans",
                     "vco_cth_the_western_provinces_caravans_" .. num_caravans_completed);
  else
    set_mission_text("vco_cth_the_western_provinces_caravans", "vco_cth_the_western_provinces_caravans");
    complete_mission("wh3_main_cth_the_western_provinces", "vco_cth_the_western_provinces_caravans");
  end
end

local function check_vco_cth_the_western_provinces_goods(faction_key)
  local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;
  local total_goods_moved = cm:get_saved_value("caravan_goods_moved_" .. faction_key) or 0;

  if total_goods_moved < REQUIRED_TOTAL_GOODS_MOVED_VICTORY then
    percentage_completed = math.floor(total_goods_moved / REQUIRED_TOTAL_GOODS_MOVED_VICTORY * 100)
    set_mission_text("vco_cth_the_western_provinces_goods",
                     "vco_cth_the_western_provinces_goods_" .. percentage_completed);
  else
    set_mission_text("vco_cth_the_western_provinces_goods", "vco_cth_the_western_provinces_goods");
    complete_mission("wh3_main_cth_the_western_provinces", "vco_cth_the_western_provinces_goods");
  end
end

local function check_vco_daemons_of_chaos_the_great_game(faction_key, corruption_key)
  local REQUIRED_CORRUPTED_REGIONS_VICTORY = 100;
  local corrupted_regions = count_regions_with_highest_corruption(corruption_key);

  if corrupted_regions < REQUIRED_CORRUPTED_REGIONS_VICTORY then
    set_mission_text("vco_" .. faction_key .. "_the_great_game",
                     "vco_the_great_game_completed_" .. corrupted_regions);
  else
    set_mission_text("vco_" .. faction_key .. "_the_great_game", "vco_the_great_game_completed");
    complete_mission(faction_key, "vco_" .. faction_key .. "_the_great_game");
  end
end

local function check_vco_ogre_kingdoms_the_maw_that_walks(context)
  local REQUIRED_MEAT_OFFERED_VICTORY = 200;
  local total_meat_offered = context:factor_spent();

  if total_meat_offered < REQUIRED_MEAT_OFFERED_VICTORY then
    percentage_completed = math.floor(total_meat_offered / REQUIRED_MEAT_OFFERED_VICTORY * 100)
    set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks_" .. percentage_completed);
  else
    set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks");
    complete_mission(context:faction():name(), "vco_ogr_the_maw_that_walks");
  end
end

-- LISTENERS --

function add_listeners()
  vco:log("Adding listeners");

  vco:log("- Cathay listeners");
  core:add_listener(
    "vco_cth_all_checks",
    "FactionTurnEnd",
    function(context)
      return context:faction():name() == "wh3_main_cth_the_western_provinces" and context:faction():is_human();
    end,
    function(context)
      check_vco_cth_the_western_provinces_caravans(context:faction():name());
      check_vco_cth_the_western_provinces_goods(context:faction():name());
    end,
    true
  );

  vco:log("- Daemons of Chaos listeners");
  core:add_listener(
    "vco_doc_the_great_game_check",
    "FactionTurnStart",
    function(context)
      return context:faction():is_human();
    end,
    function(context)
      local corruption_key = "";
      if context:faction():culture() == "wh3_main_kho_khorne" then
        corruption_key = "wh3_main_corruption_khorne";
      elseif context:faction():culture() == "wh3_main_nur_nurgle" then
        corruption_key = "wh3_main_corruption_nurgle";
      elseif context:faction():culture() == "wh3_main_sla_slaanesh" then
        corruption_key = "wh3_main_corruption_slaanesh";
      elseif context:faction():culture() == "wh3_main_tze_tzeentch" then
        corruption_key = "wh3_main_corruption_tzeentch";
      end

      check_vco_daemons_of_chaos_the_great_game(context:faction():name(), corruption_key);
    end,
    true
  );

  vco:log("- Ogre Kindoms listeners");
  core:add_listener(
    "vco_ogr_meat_checks",
    "ScriptEventTrackedPooledResourceChanged",
    function(context)
      return context:faction():is_human() and context:faction():name() == "wh3_main_ogr_disciples_of_the_maw" and
        context:resource():key() == "wh3_main_ogr_meat" and context:factor():key() == "offered_to_the_great_maw";
    end,
    function(context)
      check_vco_ogre_kingdoms_the_maw_that_walks(context);
    end,
    true
  );
end

function main()
  cm:add_first_tick_callback(add_listeners)
end

main();