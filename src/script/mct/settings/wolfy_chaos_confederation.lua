if not get_mct then return end
local mct = get_mct();

if not mct then return end
local mct_mod = mct:register_mod("wolfy_vco");

mct_mod:set_title("Allegiance of the Damned");
mct_mod:set_author("Wolfy");
mct_mod:set_description("Allow Chaos factions to confederate via imposition following loreful rules.");

mct_mod:add_new_section("1-wcc-base", "Base Options");

local vco_enable_immortal_empires = mct_mod:add_new_option("vco_enable_immortal_empires", "checkbox");
vco_enable_immortal_empires:set_default_value(true);
vco_enable_immortal_empires:set_text("Enable Immortal Empires");
vco_enable_immortal_empires:set_tooltip_text("TBD");  -- TODO
vco_enable_immortal_empires:set_read_only(true);

local vco_enable_roc = mct_mod:add_new_option("vco_enable_roc", "checkbox");
vco_enable_roc:set_default_value(true);
vco_enable_roc:set_text("Enable Realms of Chaos");
vco_enable_roc:set_tooltip_text("TBD");  -- TODO
vco_enable_roc:set_read_only(true);
