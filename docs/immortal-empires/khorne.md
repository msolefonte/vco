# Khorne

## Skarbrand: Exiles of Khorne

**Route I - Blood for the Blood God*
  * There must be more slaughter, more death, and more blood. There must be more armies under Skarbrand's banner.
    * Own 60 units.
  * These blades you hold sow death and destruction upon all, but they are not enough. Slaughter & Carnage await your grasp and the blood of your foes.
    * Complete Mission: Slaughter & Carnage
  * **Reward:** 
    * The Reaping: Skarbrand's forces sweep across the land at pace, staining the lands with blood.
      * Passive "Hellblade" for all Bloodletters and Bloodthirsters
    * The Recovery: Khorne's servants shrug off their wounds, for he does not care from whom the blood spills.
      * +8% replenishment (all armies)

**Route II - Skulls for the Skull Throne*
  * Earn 8888 skulls (script_key: `vco_kho_exiles_of_khorne_skulls_earned`)
  * Thousands of Skaven slaves. Legions of Imperial conscripts. Cults of filthy Slaaneshi devotees. Send their skulls to Khorne.
    * Destroy 1 faction: Clan Mors, Clan Rictus, Clan Skryre
    * Destroy 1 faction: Reikland, The Golden Order, Cult of Sigmar
    * Destroy 1 faction: The Ecstatic Legion, Seekers of Slaanesh
  * **Reward:** 
    * The Throne Grows: No death is wasted, no unbroken skull left behind. Khorne will sit upon them all.
      * Skulls earned from battle +50% (effect_key: `wh3_main_effect_kho_post_battle_skull_income`)
    * Inspired Hosts: Your contributions to the Skull Throne have been noticed... And are envied realm-wide. The Blood Hosts push themselves harder, striving to reach your prowess.
      * Blood Hosts +1 turn before attrition (effect_key: wh3_main_effect_force_khorne_bloodthirst_attrition_immunity)
      * Blood Hosts +1 guaranteed Bloodthirster (effect_key: wh3_main_effect_kho_spawned_armies_guaranteed_bloodthirster)

**Route III - Unending Rage*
  * Reach Level 40 with Skarbrand (script_key: `vco_kho_exiles_of_khorne_skarbrand_rank`)
  * Sack or Raze 40 settlements
  * Spread Khorne corruption in 40 regions
  * **Reward:** 
    * Devasted World: The world is in flames, broken and crumbling. Khorne may look upon his exiled Bloodthirster with pride.
      * Melee Attack +12 for Skarbrand
      * Weapon Strength +12% for Skarbrand
      * Speed +12% for Skarbrand (Bonus Value Id: `mod_land_movement_battle`)
    * United In Blood Once More: Skarbrand may once again walk among the Hunting Fields and the Cracked Lands of the Blood God's Domain. Daemons flock to his armies in fervorous admiration.
      * 25% recruitment cost reduction for Bloodletters, Flesh Hounds of Khorne, Chaos Furies (Khorne), Exalted Bloodletters, Bloodcrushers, Bloodthirsters
      * 25% upkeep reduction for Bloodletters, Flesh Hounds of Khorne, Chaos Furies (Khorne), Exalted Bloodletters, Bloodcrushers, Bloodthirsters (effect_key: `wh3_dlc20_effect_upkeep_kho_daemons`)
