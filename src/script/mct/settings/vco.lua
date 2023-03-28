if not get_mct then return end
local mct = get_mct();

if not mct then return end
local mct_mod = mct:register_mod("wolfy_vco");

mct_mod:set_title("Victory Conditions Overhaul");
mct_mod:set_author("Wolfy");
mct_mod:set_description("Complete overhaul of Victory Conditions for all factions. Also a framework.");

mct_mod:add_new_section("1_vco_campaigns", "Victory Conditions Overhaul Campaigns");

local campaign_immortal_empires_enabled = mct_mod:add_new_option("campaign_immortal_empires_enabled", "checkbox");
campaign_immortal_empires_enabled:set_default_value(true);
campaign_immortal_empires_enabled:set_text("Enable Immortal Empires");
campaign_immortal_empires_enabled:set_tooltip_text("Do you want VCO victory conditions for Immortal Empires?");

local campaign_realms_of_chaos_enabled = mct_mod:add_new_option("campaign_realms_of_chaos_enabled", "checkbox");
campaign_realms_of_chaos_enabled:set_default_value(true);
campaign_realms_of_chaos_enabled:set_text("Enable Realms of Chaos");
campaign_realms_of_chaos_enabled:set_tooltip_text("Do you want VCO victory conditions for Realms of Chaos?");

mct_mod:add_new_section("3_vco_ao", "Advanced Options", false);

local logging_enabled = mct_mod:add_new_option("logging_enabled", "checkbox");
logging_enabled:set_default_value(false);
logging_enabled:set_text("Enable logging");
logging_enabled:set_tooltip_text("If enabled, a log will be populated as you play. Use it to report bugs!");
