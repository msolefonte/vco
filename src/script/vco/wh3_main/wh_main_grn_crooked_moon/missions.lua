local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_REGIONS_INCLUDING;
					total 1;
					override_text mission_text_text_wh_dlc06_objective_override_greenskins_skarsnik;

					region wh_main_eastern_badlands_karak_eight_peaks;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type DESTROY_FACTION;

					faction wh_main_dwf_karak_izor;

					faction wh2_main_skv_clan_mors;

                    faction wh_main_grn_necksnappers;

					confederation_valid;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]]
};

return missions;
