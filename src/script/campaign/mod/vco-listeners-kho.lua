local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_EOK_ID = "kho_eok";
local FACTION_EOK_KEY = "wh3_main_kho_exiles_of_khorne";
local KEY_PR_SKULLS = "wh3_main_kho_skulls";
local KEY_U_SKARBRAND = "wh3_main_kho_skarbrand";
local REQUIRED_SKARBRAND_LEVEL = 40;
local REQUIRED_SKULLS = 8888;

local function add_eok_skulls_earned(amount)
	vlc.pooled_resources:add_faction_earnings(FACTION_EOK_ID, KEY_PR_SKULLS, amount)
end

-- CHECKS --

local function check_eok_skulls_earned()
	if vlc.pooled_resources:is_faction_earnings_gte(FACTION_EOK_ID, KEY_PR_SKULLS, REQUIRED_SKULLS) then
		vco:complete_mission(FACTION_EOK_KEY, "vco_kho_exiles_of_khorne_skulls_earned");
	end
end

local function check_eok_skarbrand_rank(character)
	if vlc.characters:is_rank_gte(character, REQUIRED_SKARBRAND_LEVEL) then
		vco:complete_mission(FACTION_EOK_KEY, "vco_kho_exiles_of_khorne_skarbrand_rank");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_kho_eok_earned_skulls",
		"PooledResourceChanged",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_EOK_KEY and
				context:resource():key() == KEY_PR_SKULLS;
		end,
		function(context)
			add_eok_skulls_earned(context:amount());
			check_eok_skulls_earned();
		end,
		true
	);

	core:add_listener(
		"vco_kho_skarbrand_rank_up",
		"CharacterRankUp",
		function(context)
			return context:faction():is_human() and
				context:character():unit_key() == KEY_U_SKARBRAND;
		end,
		function(context)
			check_eok_skarbrand_rank(context:character());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
