import mods.botaniatweaks.Agglomeration;
import mods.botania.RuneAltar;
import mods.botania.ManaInfusion;

Agglomeration.addRecipe(<additions:fxt-xy>,[<botania:manaresource:14>,
<draconicevolution:awakened_core>,
<additions:fxt-subsharp>,
<extrabotany:material:3>,
<sakura:sakura_diamond>],1000000,0xA439FB,0xFF6600,
<text:fuwenstone>,<extrabotany:blockorichalcos>,<text:fuwenstone>,
<text:nostone>,null,<text:nostone>);

Agglomeration.addRecipe(<contenttweaker:material_part:107>,[<botania:manaresource:14>,
<tconevo:metal:5>,
<contenttweaker:material_part:551>,
<contenttweaker:material_part:56>,
<sakura:sakura_diamond>],2000000,0xA439FB,0xFF6600,
<text:fuwenstone>,<extrabotany:blockorichalcos>,<text:fuwenstone>,
<text:nostone>,null,<text:nostone>);

Agglomeration.addRecipe(<botanicadds:gaiasteel_ingot>,[<ore:gaiaIngot>,
<ore:elvenDragonstone>,
<ore:elvenPixieDust>],2000000,0xcde6c7,0xc63c26,
<botanicadds:dreamrock>,<botanicadds:elven_lapis_block>,<botanicadds:dreamrock>,
null,null,null);

Agglomeration.addRecipe(<avaritiaitem:fatum>,[<additions:fxt-magicwarp>,
<additions:fxt-vispearl>,
<additions:fxt-visdiamond>],200000,0x45b97c,0x694d9f,
<thaumcraft:taint_rock>,<minecraft:lapis_block>,<thaumcraft:metal_thaumium>,
null,null,null);



Agglomeration.addRecipe(<botania:manaresource:4>,[<ore:manaDiamond>,<ore:manaPearl>,<ore:ingotManasteel>],500000);

Agglomeration.addRecipe(<mowziesmobs:foliaath_seed>*2,[<botania:overgrowthseed>,
<mowziesmobs:foliaath_seed>,
<botania:rune:10>,
<botania:rune:2>,
<botania:rune:8>],500000,0xA439FB,0xFF6600,
<rustic:fertile_soil>,<rustic:fertile_soil>,<rustic:fertile_soil>,
<botania:enchantedsoil>,<botania:enchantedsoil>,<botania:enchantedsoil>);

Agglomeration.addRecipe(<botanianeedsit:mana_capacitor_terrasteel:1>*8,
[<text:star_alloy>*2,
<text:hunhemagic>*2,
<botanianeedsit:mana_capacitor_terrasteel>*8],
1000000,0xA439FB,0xFF6600,
<ore:blockMirion>,<text:nostone>,<extrabotany:blockshadowium>,
<thermalfoundation:storage:6>,<text:fuwenstone>,<thermalfoundation:storage:4>);

Agglomeration.addRecipe(<text:light_shadow_ingot>,
[<extrabotany:material:8>,
<extrabotany:material:5>,
<botania:manaresource:5>],
50000,0x000000,0xFFFFFF,
<ore:blockMirion>,<extrabotany:blockphotonium>,<extrabotany:blockshadowium>,
null,null,null);

mods.botania.ManaInfusion.addAlchemy(<extrabotany:spiritfuel>, <extrabotany:nightmarefuel>, 10000);

Agglomeration.addRecipe(<text:fxtgaika>,[<botania:rune:2>,<mowziesmobs:foliaath_seed>,<botania:rune:13>,<botania:rune:4>,<botania:rune:15>],5000);

Agglomeration.addRecipe(<text:fxt_tuoleina>,[<botania:rune:13>,<iceandfire:rotten_egg>,<botania:rune:10>,<botania:rune:1>,<botania:rune:5>],5000);

Agglomeration.addRecipe(<botania:storage:1>,[<botania:storage>,<botania:storage:3>,<botania:manaresource:1>*9],5000000);

Agglomeration.addRecipe(<additions:fxt-light_terrastee_ignot>,[<botania:manaresource:4>,<tconstruct:throwball>,<botania:quartz:1>,<botania:manaresource:23>,<botania:manaresource:16>],200000);

Agglomeration.addRecipe(<text:lucky_clover>,[<botania:flower>,<botania:flower:1>,<botania:flower:2>,<botania:flower:3>,<botania:flower:4>,<botania:flower:5>,<botania:flower:6>,<botania:flower:7>,<botania:flower:8>,<botania:flower:9>,<botania:flower:10>,<botania:flower:11>,<botania:flower:12>,<botania:flower:13>,<botania:flower:14>,<botania:flower:15>],200);

RuneAltar.addRecipe(<text:aurora_block_maker_03>,[<botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <minecraft:ender_chest>], 200);
ManaInfusion.addInfusion(<text:essay>, <additions:fxt-essay>, 200);
//mods.botania.ManaInfusion.addInfusion(IItemStack output, IIngredient input, int mana);
mods.botania.ManaInfusion.addInfusion(<text:essay>, <additions:fxt-essay>, 200);

//mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);
mods.botania.ManaInfusion.addAlchemy(<text:essay>, <additions:fxt-essay>, 200);

//mods.botania.ManaInfusion.addConjuration(IItemStack output, IIngredient input, int mana);
mods.botania.ManaInfusion.addConjuration(<text:essay>, <additions:fxt-essay>, 200);
//真蓝人
Agglomeration.addRecipe(<text:blueman>,
[<botania:flower:3>,
<iceandfire:dragonsteel_ice_ingot>,
<iceandfire:sapphire_gem>,
<twilightforest:aurora_block>,
<botania:rune>,
<botania:rune:3>,
<botania:manaresource>,
<ore:ingotCrystalMatrix>,
<astralsorcery:itemcraftingcomponent>,
<biomesoplenty:gem:6>,
<minecraft:lapis_block>],
5000,0x2b4490,0x2b4490,
<iceandfire:dragonsteel_ice_block>,<twilightforest:aurora_block>,<botania:petalblock:3>,
null,null,null);
//终兆立方
Agglomeration.addRecipe(<twilightforest:cube_talisman>,
[
    <ore:nagalin>,
    <additions:fxt-twfo02>,
    <twilightforest:alpha_fur>,
    <additions:fxt-twfo03>,
    <additions:fxt-wtfo_05>,
    <additions:fxt-wtfo_06>,
    <additions:fxt-twfo_07>,
    <additions:fxt-twfo_08>
],
800000,0x1d953f,0x0c212b,
<twilightforest:castle_brick:3>,<twilightforest:block_storage:2>,<twilightforest:block_storage>,
<star_rains_toybox:wtfo_10>,<twilightforest:block_storage>,<twilightforest:block_storage:2>);
//令牌
Agglomeration.addRecipe(<rats:chunky_cheese_token>,
[
    <rats:vial_of_sentience>,
    <rats:black_death_mask>
],
8000,0xfcaf17,0xfcaf17,
<rats:block_of_cheese>,<rats:block_of_cheese>,<rats:block_of_cheese>,
<minecraft:redstone_block>,<minecraft:tnt>,<minecraft:tnt>);
//奥利哈刚簇
mods.botania.RuneAltar.addRecipe(<contenttweaker:material_part:56>,[<ore:gaiaIngot>, <ore:gaiaIngot>, <extrabotany:material:3>, <botania:manaresource:5>, <botania:manaresource:5>, <botania:manaresource:5>, <botania:manaresource:5>], 150000);
//空理
mods.botania.RuneAltar.addRecipe(<beto:worldtitaniu>, [<additions:fxt-subsharp>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<extrabotany:material:10>,<extrabotany:material:10>], 150000);
mods.botania.RuneAltar.addRecipe(<extrabotany:ultimatehammer>.withTag({Unbreakable: 1 as byte}), [<additions:fxt-subsharp>,<extrabotany:ultimatehammer>,<deeperdepths:heavy_core>,<extrabotany:material:3>], 200000);
mods.botania.RuneAltar.addRecipe(<contenttweaker:material_part:551>, [<additions:fxt-subsharp>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<text:light_shadow_ingot>,<extrabotany:material:2>,<extrabotany:material:10>], 200000);

//透镜
mods.guguutils.BurstTransform.addRecipe(<additions:fxt-elfgift>, 10, <ore:elvenPixieDust>);
mods.guguutils.BurstTransform.addRecipe(<additions:fxt-worldball>, 10, <additions:fxt-stw_01>);
//mods.guguutils.BurstTransform.addRecipe(<moreflowers:block_energydandron_capacitor>, 10, <botania:enchantedsoil>);