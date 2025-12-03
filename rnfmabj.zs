import mods.tconstruct.Casting;
mods.tconstruct.Casting.removeBasinRecipe(<suikerawore:block_cobalt>);
mods.tconstruct.Casting.removeTableRecipe(<tcomplement:materials:1>);
mods.tconstruct.Casting.removeTableRecipe(<moretcon:rawsteel>);
mods.tconstruct.Casting.removeBasinRecipe(<moretcon:blocksolarsteel>);
mods.tconstruct.Casting.removeTableRecipe(<suikerawore:ingot_cobalt>);
mods.tconstruct.Casting.removeBasinRecipe(<suikerawore:block_cobalt>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:common_ingots:4>);
//冰火产物浇筑×
mods.tconstruct.Casting.addTableRecipe(<iceandfire:stymphalian_bird_feather>, <minecraft:feather>, <liquid:bronze>, 1440, true);
//mods.tconstruct.Casting.addTableRecipe(<mowziesmobs:wrought_helmet>, <twilightforest:phantom_helmet>, <liquid:dragonsteel_fire>, 3600, true);
//mods.tconstruct.Casting.addTableRecipe(<mowziesmobs:wrought_axe>, <twilightforest:minotaur_axe>, <liquid:dragonsteel_ice>, 3600, true);
//英雄勋章缎带√
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-drg1>, <additions:fxt-drg0>, <liquid:bloodmagneticfluid>, 500, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-drg2>, <additions:fxt-drg1>, <liquid:rhine_collapse_fluid>, 500, true);
//合金耗材
mods.tconstruct.Casting.addBasinRecipe(<additions:fxt-box1>, <tconstruct:seared:6>, <liquid:adamant_fluid>, 18, true);
//五彩碎片×
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-stw_01>, <biomesoplenty:terrestrial_artifact>, <liquid:manyullyn>, 288, true);
//刃铁√
mods.tconstruct.Casting.addTableRecipe(<tconstruct:large_sword_blade>.withTag({Material: "bladeiron"}), <tconstruct:large_sword_blade>.withTag({Material: "wood"}), <liquid:iron>, 1152);
//银河之剑×
mods.tconstruct.Casting.addTableRecipe(<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 13750, HarvestLevel: 5, Attack: 11.5 as float}, display: {Name: "银河之剑"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 13750, HarvestLevel: 5, Attack: 11.5 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["fs2", "fs2", "fs2"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.artifact", color: -10747460, level: 1}, {identifier: "bloodeater", color: -10747460, level: 1}, {identifier: "bugkiller", color: -10747460, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.artifact", "bloodeater", "bugkiller", "toolleveling"]}), <minecraft:iron_sword>, <liquid:wucai>, 1000, true);
//银河匕首×
mods.tconstruct.Casting.addTableRecipe(<totaltinkers:dagger>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 8625, HarvestLevel: 5, Attack: 10.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 8625, HarvestLevel: 5, Attack: 10.5 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["fs2", "fs2", "fs2"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "bloodeater", color: -10747460, level: 1}, {identifier: "tconevo.artifact", color: -10747460, level: 1}, {identifier: "qiaomiao", color: -10747460, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["bloodeater", "tconevo.artifact", "qiaomiao", "toolleveling"]}), <atum:iron_dagger>, <liquid:wucai>, 1000, true);
//银河之锤×
mods.tconstruct.Casting.addTableRecipe(<tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 26250, HarvestLevel: 5, Attack: 10.5 as float}, display: {Name: "银河之锤"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 26250, HarvestLevel: 5, Attack: 10.5 as float}, Special: {Categories: ["harvest", "tool", "aoe", "weapon"]}, TinkerData: {Materials: ["fs2", "fs2", "fs2", "fs2"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "bloodeater", color: -10747460, level: 1}, {identifier: "tconevo.artifact", color: -10747460, level: 1}, {identifier: "rifumei", color: -10747460, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["bloodeater", "tconevo.artifact", "rifumei", "toolleveling"]}), <thermalfoundation:tool.hammer_iron>, <liquid:wucai>, 1000, true);
//黏骨√
mods.tconstruct.Casting.addTableRecipe(<beto:slimebones>, <minecraft:bone>, <liquid:blueslime>, 1000, true);
//匠心√
mods.tconstruct.Casting.addTableRecipe(<text:fxt_tinkersstone>, <beto:uslessstone>, <liquid:wucai>, 1000, true);
//老三锭
/*mods.tconstruct.Casting.addTableRecipe(<additions:fxt-fuc_iron>,<mysticalagradditions:nether_star_essence>, <liquid:sun_gold>, 72, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-cold_sliver>,<mysticalagradditions:nether_star_essence>, <liquid:cold_sliver>, 72, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-dust_iron>,<mysticalagradditions:nether_star_essence>, <liquid:dust_iron>, 72, true);*/
//铸模
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-goldkey>,<aether_legacy:dungeon_key:2>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-goldkey2>,<aether_legacy:dungeon_key:1>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-goldkey3>,<aether_legacy:dungeon_key>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-goldkey4>,<lost_aether:platinum_key>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}),<tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_shaft"}), <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<aether_legacy:dungeon_key:2>,<additions:fxt-goldkey>, <liquid:gold>, 288, false);
mods.tconstruct.Casting.addTableRecipe(<aether_legacy:dungeon_key:1>,<additions:fxt-goldkey2>, <liquid:silver>, 288, false);
mods.tconstruct.Casting.addTableRecipe(<aether_legacy:dungeon_key>,<additions:fxt-goldkey3>, <liquid:bronze>, 288, false);
mods.tconstruct.Casting.addTableRecipe(<lost_aether:platinum_key>,<additions:fxt-goldkey4>, <liquid:platinum>, 288, false);

mods.tconstruct.Casting.addTableRecipe(<additions:fxt-capzm>,<thaumicwands:item_wand_cap>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap_ta>,<additions:fxt-capzm>, <liquid:mithrillium>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap>,<additions:fxt-capzm>, <liquid:iron>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap:1>,<additions:fxt-capzm>, <liquid:gold>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap:2>,<additions:fxt-capzm>, <liquid:brass>, 80, false);
//mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap_ta:2>,<additions:fxt-capzm>, <liquid:platinum>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap_ta:4>,<additions:fxt-capzm>, <liquid:mithminite>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap_pa:1>,<additions:fxt-capzm>, <liquid:molten_bismuth>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap_pa>,<additions:fxt-capzm>, <liquid:molten_alkimium>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap:5>,<additions:fxt-capzm>, <liquid:voidmetal>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap:5>,<additions:fxt-capzm>, <liquid:void_metal>, 80, false);
mods.tconstruct.Casting.addTableRecipe(<thaumicwands:item_wand_cap:3>,<additions:fxt-capzm>, <liquid:thaumium>, 80, false);
//焦黑冶炼炉控制器
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_controller>,<tconstruct:seared:3>, <liquid:copper>, 576, true);
mods.tconstruct.Casting.addBasinRecipe(<tcomplement:high_oven_controller>,<tcomplement:scorched_block:3>, <liquid:obsidian>, 576, true);
//石板
mods.tconstruct.Casting.addTableRecipe(<bloodmagic:slate>,<minecraft:stone>, <liquid:lifeessence>, 1250, true);
mods.tconstruct.Casting.addTableRecipe(<bloodmagic:slate:1>,<bloodmagic:slate>, <liquid:lifeessence>, 2500, true);
mods.tconstruct.Casting.addTableRecipe(<bloodmagic:slate:2>,<bloodmagic:slate:1>, <liquid:lifeessence>, 5750, true);
mods.tconstruct.Casting.addTableRecipe(<bloodmagic:slate:3>,<bloodmagic:slate:2>, <liquid:lifeessence>, 17500, true);
mods.tconstruct.Casting.addTableRecipe(<bloodmagic:slate:4>,<bloodmagic:slate:3>, <liquid:lifeessence>, 38000, true);
mods.tconstruct.Casting.addTableRecipe(<tconevo:metal:25>,<additions:fxt-no_color>, <liquid:lifeessence>, 30000, true);
//智能输出端
mods.tconstruct.Casting.addBasinRecipe(<tinker_io:smart_output>,<tcomplement:scorched_block:3>, <liquid:cold_sliver>, 288, true);
//土豆泥
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-lightpotato>,<extrabotany:gildedmashedpotato>, <liquid:light>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-darkpotato>,<extrabotany:gildedmashedpotato>, <liquid:dark>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<extrabotany:material:8>,<additions:fxt-lightpotato>, <liquid:fluidedmana>, 4200, true);
mods.tconstruct.Casting.addTableRecipe(<extrabotany:material:5>,<additions:fxt-darkpotato>, <liquid:fluidedmana>, 4200, true);
//泡水晶
//mods.tconstruct.Casting.addTableRecipe(<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}),<ore:shuijingbai>, <liquid:astralsorcery.liquidstarlight> , 400, true);
//mods.tconstruct.Casting.addTableRecipe(<astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}),<ore:shuijinglan> ,<liquid:astralsorcery.liquidstarlight> , 900, true);
//附魔之瓶
mods.tconstruct.Casting.addTableRecipe(<minecraft:experience_bottle>,<minecraft:glass_bottle>, <liquid:experience>, 100, true);
//浇筑口
mods.tconstruct.Casting.addTableRecipe(<moretcon:blockgravitoniumfaucet>,<tcomplement:scorched_faucet>, <liquid:dust_iron>, 72, true);
//蛋糕
mods.tconstruct.Casting.addTableRecipe(<minecraft:cake>,<coffeework:cake_sponge>, <liquid:milk>, 100, true);
//符文
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeWaterB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeFireB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeEarthB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeAirB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeSpringB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeSummerB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeAutumnB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeWinterB>, <liquid:lyhgd>, 25, false);

mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeManaB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeLustB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeGluttonyB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeGreedB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeSlothB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeWrathB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runeEnvyB>, <liquid:lyhgd>, 25, false);
mods.tconstruct.Casting.addTableRecipe(<text:allfromthis>,<ore:runePrideB>, <liquid:lyhgd>, 25, false);
//力场核心
mods.tconstruct.Casting.addTableRecipe(<hydrogenation_tinker:field_generator>.withTag({Material: "lightshadow"}),<hydrogenation_tinker:field_generator>.withTag({Material: "amethystex"}), <liquid:lightshadow>, 1008, true);
mods.tconstruct.Casting.addTableRecipe(<hydrogenation_tinker:field_generator>.withTag({Material: "sjy"}),<hydrogenation_tinker:field_generator>.withTag({Material: "amethystex"}), <liquid:sjy>, 1008, true);
//框架
mods.tconstruct.Casting.addTableRecipe(<forestry:frame_proven>,<forestry:frame_untreated>, <liquid:oliveoil>, 1000, true);
mods.tconstruct.Casting.addTableRecipe(<forestry:frame_impregnated>,<forestry:frame_untreated>, <liquid:seed.oil>, 100, true);
mods.tconstruct.Casting.addTableRecipe(<magicbees:frames.magic>,<forestry:frame_untreated>, <liquid:fluidedmana>, 100, true);
mods.tconstruct.Casting.addTableRecipe(<magicbees:frames.temporal>,<forestry:frame_untreated>,<liquid:sand>, 100, true);
//容器
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-yellowheart>,<minecraft:totem_of_undying>, <liquid:silver>, 1440, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-greenheart>,<additions:fxt-yellowheart>, <liquid:imperomite_fluid>, 720, true);
//鱼塘
mods.tconstruct.Casting.addBasinRecipe(<fish:fishbox>,<minecraft:stonebrick>, <liquid:kingofsea>, 288, true);
//基岩
//mods.tconstruct.Casting.addTableRecipe(<additions:fxt-lrrrrrrrockbed>,<tconstruct:nuggets>, <liquid:stone>, 43046721*144, true);
//饰品
mods.tconstruct.Casting.addTableRecipe(<artifacts:cobalt_shield>,<lost_aether:zanite_shield>, <liquid:cobalt>, 720, true);
mods.tconstruct.Casting.addTableRecipe(<artifacts:lucky_horseshoe>,<artifacts:lucky_clover>, <liquid:gold>, 720, true);
mods.tconstruct.Casting.addTableRecipe(<twilightforest:charm_of_life_2>,<twilightforest:charm_of_life_1>, <liquid:liquidsolarsteel>, 432, true);
//注入
mods.tconstruct.Casting.addTableRecipe(<draconicevolution:crafting_injector:1>,<draconicevolution:crafting_injector>, <liquid:wyvern_metal>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<draconicevolution:crafting_injector:2>,<draconicevolution:crafting_injector:1>, <liquid:draconic_metal>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<draconicevolution:crafting_injector:3>,<draconicevolution:crafting_injector:2>, <liquid:chaotic_metal>, 432, true);
//子弹
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-coldbullet>,<tinkersarsenal:bullet>.withTag({Material: "cold_sliver"}), <liquid:sun_gold>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-firebullet>,<tinkersarsenal:bullet>.withTag({Material: "burningdebris"}), <liquid:sun_gold>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-goastbullet>,<tinkersarsenal:bullet>.withTag({Material: "mod_lavacow.ectoplasm"}), <liquid:sun_gold>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-grassbullet>,<tinkersarsenal:bullet>.withTag({Material: "terrasteel"}), <liquid:sun_gold>, 432, true);
mods.tconstruct.Casting.addTableRecipe(<additions:fxt-thunderbullet>,<tinkersarsenal:bullet>.withTag({Material: "thunderblood"}), <liquid:sun_gold>, 432, true);

