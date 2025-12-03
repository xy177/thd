#reloadable

import mods.botaniatweaks.Agglomeration;
import mods.botania.RuneAltar;
import mods.botania.ManaInfusion;
import mods.botania.ElvenTrade;
import mods.botania.PureDaisy;
import mods.botania.Orechid;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.botania.Apothecary;
import mods.botania.OrechidIgnem;

RuneAltar.addRecipe(<item:text:gaia_radiating_cavity>,[<item:extrabotany:material:3>,<item:botania:manaresource:14>,<tconstruct:shard>.withTag({Material: "aoliha"}),<item:extrabotany:material:7>,<item:extrabotany:material:7>], 50000);
RuneAltar.addRecipe(<item:text:fxtgaika>,[<item:botania:rune:2>,<item:mowziesmobs:foliaath_seed>,<item:botania:rune:13>,<item:botania:rune:4>,<item:botania:rune:15>], 50000);
RuneAltar.addRecipe(<item:text:fxt_tuoleina>,[<item:botania:rune:13>,<item:iceandfire:rotten_egg>,<item:botania:rune:10>,<item:botania:rune:1>,<item:botania:rune:5>], 50000);
ManaInfusion.addInfusion(<item:text:charged_gaia_radiating_chamber>, <item:text:gaia_radiating_cavity>, 200);
RuneAltar.addRecipe(<text:lucky_clover>,[<botania:flower>,<botania:flower:1>,<botania:flower:2>,<botania:flower:3>,<botania:flower:4>,<botania:flower:5>,<botania:flower:6>,<botania:flower:7>,<botania:flower:8>,<botania:flower:9>,<botania:flower:10>,<botania:flower:11>,<botania:flower:12>,<botania:flower:13>,<botania:flower:14>,<botania:flower:15>],200);
ManaInfusion.addInfusion(<minecraft:blaze_rod>, <thermalfoundation:material:2048>, 2000);
ManaInfusion.addAlchemy(<deeperdepths:material:1>, <appliedenergistics2:material:8>, 200);
ManaInfusion.addAlchemy(<touhou_little_maid:power_point>,<minecraft:experience_bottle>, 1000);
ManaInfusion.addAlchemy(<mod_lavacow:parasite_item>, <mod_lavacow:parasite_item:2>, 2000);
ManaInfusion.addAlchemy(<mod_lavacow:parasite_item:2>, <mod_lavacow:parasite_item:1>, 2000);
ManaInfusion.addAlchemy(<mod_lavacow:parasite_item:1>, <mod_lavacow:parasite_item>, 2000);
mods.extrabotany.ManaInfusion.addDimension(<additions:fxt-magicwarp>, <thaumcraft:ingot:2> , 2000);
ManaInfusion.addAlchemy( <mysticalagriculture:electrotine_essence>,<mysticalagriculture:redstone_essence>, 2000);
ManaInfusion.addAlchemy(<projectred-core:resource_item:105>, <minecraft:redstone>, 2000);
ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
//次元催化
mods.extrabotany.ManaInfusion.addDimension(<da:glow_berry>, <futuremc:sweet_berries>, 200);
mods.extrabotany.ManaInfusion.addDimension(<deadguyshallucinationnightmare:phantomfins>,<mod_lavacow:banshee_vocal_cord>, 1000);
mods.extrabotany.ManaInfusion.addDimension(<extrautils2:ingredients:10>,<magicbees:resource:3>, 2000);
mods.extrabotany.ManaInfusion.addDimension(<harvestcraft:venisonrawitem>,<twilightforest:raw_venison>, 20);
mods.extrabotany.ManaInfusion.addDimension(<harvestcraft:venisoncookeditem>,<twilightforest:cooked_venison>, 20);
mods.extrabotany.ManaInfusion.addDimension(<atum:emmer_seeds>,<minecraft:wheat_seeds>, 20);

mods.botania.ManaInfusion.addConjuration( <thermalfoundation:material:2048>, <thermalfoundation:material:2050>, 2000);
mods.botania.ManaInfusion.addConjuration( <thermalfoundation:material:2050>, <thermalfoundation:material:2052>, 2000);
mods.botania.ManaInfusion.addConjuration(<thermalfoundation:material:2052>, <minecraft:blaze_rod>, 2000);
mods.botania.ManaInfusion.addConjuration(<minecraft:blaze_rod>, <thermalfoundation:material:2048>, 2000);


//精灵交易
ElvenTrade.addRecipe([<additions:fxt-warpmagic2>], [<thaumcraft:ingot>]);
ElvenTrade.addRecipe([<botina:mana_to_liq>], [<botania:alchemycatalyst>]);
ElvenTrade.addRecipe([<extrabotany:spiritfuel>], [<extrabotany:nightmarefuel>]);
//英雄勋章缎带
mods.botania.ElvenTrade.addRecipe([<additions:fxt-drg3>], [<additions:fxt-drg2>]);
//睿智滑稽
RuneAltar.addRecipe(<additions:fxt-huaji1>,[<futuremc:netherite_ingot>,<botania:manaresource:14>,<twilightforest:knightmetal_ingot>,<avaritia:resource:1>,<additions:fxt-huaji>,<harvestcraft:maplesyrupitem>], 114);
//太阳面具
RuneAltar.addRecipe(<mowziesmobs:barako_mask>,[<minecraft:nether_star>,<extrautils2:suncrystal>,<mowziesmobs:barakoa_mask_fury>,<mowziesmobs:barakoa_mask_bliss>,<mowziesmobs:barakoa_mask_fury>,<mowziesmobs:barakoa_mask_fear>,<mowziesmobs:barakoa_mask_misery>], 20000);
//诗之蜜酒
mods.botania.ElvenTrade.addRecipe([<additions:fxt-magicdrink>], [<forestry:ambrosia>,<star_rains_toybox:soundblood>]);
//mods.botania.ElvenTrade.addRecipe([<baubles:max_verstappen>], [<ore:bread>]);
//英雄勋章合成
RuneAltar.addRecipe(<extrabotany:material:3>,[<additions:fxt-drg3>,<additions:fxt-xisuihero>,<additions:fxt-xisuihero>], 500000);
//神弃石
RuneAltar.addRecipe(<beto:uslessstone>,[<twilightforest:cube_talisman>,<forestry:royal_jelly>,<beto:keybag>,<atum:sarcophagus>], 50000);
//源质种子
RuneAltar.addRecipe(<thaumadditions:vis_seeds/fabrico>,[<mysticalagriculture:mystical_flower_seeds>,<minecraft:crafting_table>],1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/tenebrae>, [<mysticalagriculture:mystical_flower_seeds>, <minecraft:obsidian>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/potentia>, [<mysticalagriculture:mystical_flower_seeds>, <minecraft:redstone>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/sonus>, [<mysticalagriculture:mystical_flower_seeds>, <avaritia:resource:7>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/fluctus>, [<mysticalagriculture:mystical_flower_seeds>, <aquaculture:loot:1>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/ventus>, [<mysticalagriculture:mystical_flower_seeds>, <thermalfoundation:material:2051>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/imperium>, [<extrautils2:user>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/aqua>, [<harvestcraft:freshwateritem>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/desiderium>, [<atum:coin_gold>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/bestia>, [<harvestcraft:friedeggitem>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/herba>, [<minecraft:leaves>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/terra>, [<minecraft:grass>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/visum>, [<minecraft:golden_carrot>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/motus>, [<minecraft:carrot_on_a_stick>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/permutatio>, [<harvestcraft:market>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/vacuos>, [<actuallyadditions:item_crystal:3>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/praemunio>, [<minecraft:iron_chestplate>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/gelum>, [<minecraft:ice>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/lux>, [<quark:candle>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/cognitio>, [<thaumcraft:brain>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/vinculum>, [<openblocks:beartrap>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/ignis>, [<minecraft:blaze_powder>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/ordo>, [<oe:blue_ice>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/volatus>, [<minecraft:feather>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/draco>, [<iceandfire:dragon_bone_block>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/auram>, [<thaumcraft:sapling_silverwood>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/exitium>, [<minecraft:tnt>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/alienis>, [<minecraft:ender_pearl>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/instrumentum>, [<minecraft:iron_pickaxe>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/infernum>, [<extrautils2:ingredients:11>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/vitium>, [<botania:grassseeds:2>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/perditio>, [<thaumcraft:vishroom>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/spiritus>, [<minecraft:soul_sand>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/machina>, [<minecraft:hopper>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/humanus>, [<minecraft:skull:2>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/victus>, [<tconstruct:edible:3>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/aversio>, [<minecraft:iron_sword>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/mortuus>, [<rustic:deathstalk_mushroom>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/sensus>, [<forestry:naturalist_helmet>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/alkimia>, [<botania:brewery>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/praecantatio>, [<botania:manaresource:23>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/exanimis>, [<tconstruct:soil:3>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/vitreus>, [<minecraft:glass>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/aer>, [<botania:rune:3>, <mysticalagriculture:mystical_flower_seeds>], 1000);
RuneAltar.addRecipe(<thaumadditions:vis_seeds/metallum>, [<minecraft:iron_block>, <mysticalagriculture:mystical_flower_seeds>], 1000);
//花药台

Apothecary.addRecipe("sancho", [<ore:petalRed>,<ore:petalRed>,<ore:petalOrange>,<rustic:crop_stake>,<minecraft:saddle>,<bloodmagic:component:8>,<ore:runeWrathB>,<ore:runeLustB>,<ore:runeGluttonyB>]);
Apothecary.addRecipe("fluxrift", [<ore:petalBlack>,<ore:petalBlack>,<ore:petalPurple>,<ore:petalPurple>,<thaumcraft:nugget:7>,<thaumcraft:nugget:7>,<thaumcraft:causality_collapser>,<ore:runeManaB>,<ore:runeGluttonyB>,<ore:runeLustB>]);
Apothecary.addRecipe("beechange", [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<text:fxtgaika>,<forestry:bee_combs:5>,<deeperdepths:material:1>,<botania:manasteelshears>]);
//Apothecary.addRecipe("electric_flower", [<ore:petalWhite>,<ore:petalLightBlue>,<ore:petalBlue>,<botanicadds:rune_energy>,<ore:runeManaB>,<deeperdepths:lightning_rod>]);

//白雏菊相关
PureDaisy.addRecipe(<botanicadds:elvenwood_log>, <thaumcraft:taint_log>, 600);
PureDaisy.addRecipe(<botanicadds:elvenwood_log>, <thaumcraft:taint_log>, 600);
PureDaisy.addRecipe(<botanicadds:dreamrock>, <thaumcraft:taint_rock>, 600);
PureDaisy.addRecipe(<minecraft:dirt:1>, <thaumcraft:taint_soil>, 600);
PureDaisy.addRecipe(<avaritia:block_resource:1>, <minecraft:dirt>, 600);
PureDaisy.addRecipe(<twilightforest:root>, <twilightforest:root:1>, 300);
PureDaisy.addRecipe(<thaumcraft:stone_porous>, <thaumcraft:taint_rock>, 2);
PureDaisy.addRecipe(<deeperdepths:amethyst_block>, <deeperdepths:budding_amethyst>, 2400);
PureDaisy.addRecipe(<minecraft:iron_ore>, <astralsorcery:blockcustomore:1>, 300);
//PureDaisy.addRecipe(<appliedenergistics2:fluix_block>, <deeperdepths:amethyst_block>, 300);
PureDaisy.addRecipe(<futuremc:wither_rose>, <rats:ratglove_flower>, 40);
PureDaisy.removeRecipe(<botania:dreamwood>);
//炎矿兰
OrechidIgnem.addOre(<ore:oreAncientDebris>, 100);


//凝矿兰
Orechid.addOre(<ore:orePlatinum>, 100);

//奥利哈刚簇
mods.botania.RuneAltar.addRecipe(<contenttweaker:material_part:56>, [<ore:gaiaIngot>, <ore:gaiaIngot>, <extrabotany:material:3>, <botania:manaresource:5>, <botania:manaresource:5>, <botania:manaresource:5>, <botania:manaresource:5>], 150000);
//空理
mods.botania.RuneAltar.addRecipe(<beto:worldtitaniu>, [<additions:fxt-subsharp>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<extrabotany:material:10>,<extrabotany:material:10>], 150000);
mods.botania.RuneAltar.addRecipe(<contenttweaker:material_part:551>, [<additions:fxt-subsharp>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<extrabotany:material:2>,<extrabotany:material:10>], 200000);