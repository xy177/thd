import crafttweaker.item.IItemStack;

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Fuel;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tcomplement.highoven.MixRecipeManager;

import crafttweaker.liquid.ILiquidStack;

HighOven.addFuel(<additions:fxt-mana_shard>, 30, 500);
HighOven.addMeltingOverride(<liquid:blood> * 150,<tconstruct:edible:33>, 2000);
HighOven.addMeltingOverride(<liquid:nsmana> * 1000,<additions:fxt-mana_shard>, 500);
HighOven.addMeltingOverride(<liquid:fluidedmana> * 1000,<forge:bucketfilled>.withTag({FluidName: "fluidedmana", Amount: 1000}), 500);
HighOven.addMeltingOverride(<liquid:experience>* 200,<actuallyadditions:item_solidified_experience>, 2000);
HighOven.addMeltingOverride(<liquid:fluidedmana> * 500000,<botania:manatablet>.withTag({mana: 500000}), 2000);
HighOven.addMeltingOverride(<liquid:fluidedmana> * 100000,<botanianeedsit:mana_capacitor_terrasteel>, 2000);
HighOven.addMeltingOverride(<liquid:fluidedmana> * 1000,<botanianeedsit:mana_capacitor_manasteel>, 2000);
HighOven.addMeltingOverride(<liquid:fluidedmana> * 10000,<botanianeedsit:mana_capacitor_elementium>, 2000);
HighOven.addMeltingOverride(<liquid:astralsorcery.liquidstarlight> * 1000,<astralsorcery:itemcraftingcomponent>, 3500);
HighOven.addMeltingOverride(<liquid:astralsorcery.liquidstarlight> * 1000,<astralsorcery:itemcraftingcomponent:4>, 3500);
//加热配方
HighOven.removeHeatRecipe(<liquid:steam>);
HighOven.addHeatRecipe(<liquid:xu_demonic_metal> *72, <liquid:gold> *72, 6966);
HighOven.addHeatRecipe(<liquid:obsidian> *1000, <liquid:obsidian> *500, 800);
HighOven.addHeatRecipe(<liquid:ambe> *1000, <liquid:ambe> *500, 800);
HighOven.addHeatRecipe(<liquid:steam> * 100, <liquid:water> * 100, 2300);
//高炉

HighOven.newMixRecipe(<liquid:gaiya_ingot>*144, <liquid:terrasteel>*72, 3500) //产出流体，输入流体，温度
         .addOxidizer(<ore:eternalLifeEssence>, 100)
    .addReducer(<ore:eternalLifeEssence>, 100)
.addPurifier(<ore:eternalLifeEssence>, 50)
.register();

HighOven.newMixRecipe(<liquid:lifeessence>*15000, <liquid:blood>*150, 2000) //产出流体，输入流体，温度
         .addOxidizer(<bloodarsenal:blood_orange>, 100)
    .addReducer(<bloodarsenal:base_item:2>, 100)
.addPurifier(<bloodarsenal:base_item:4>, 100)
.register();

HighOven.newMixRecipe(<liquid:cold_sliver>*288, <liquid:silver>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<additions:fxt-cold_sliver>, 100)
    .addReducer(<mysticalagradditions:nether_star_essence>, 100)
.addPurifier(<mysticalagradditions:nether_star_essence>, 100)
.register();

HighOven.newMixRecipe(<liquid:sun_gold>*288, <liquid:gold>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<additions:fxt-fuc_iron>, 100)
    .addReducer(<mysticalagradditions:nether_star_essence>, 100)
.addPurifier(<mysticalagradditions:nether_star_essence>, 100)
.register();

HighOven.newMixRecipe(<liquid:dust_iron>*288, <liquid:steel>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<additions:fxt-dust_iron>, 100)
    .addReducer(<mysticalagradditions:nether_star_essence>, 100)
.addPurifier(<mysticalagradditions:nether_star_essence>, 100)
.register();

HighOven.newMixRecipe(<liquid:netherite>*288, <liquid:gold>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<futuremc:netherite_scrap>, 0)
    .addReducer(<mysticalagradditions:nether_star_essence>, 100)
.addPurifier(<mysticalagradditions:nether_star_essence>, 100)
.register();

HighOven.newMixRecipe(<liquid:superardite>*144, <liquid:ardite>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<minecraft:nether_star>, 100)
    .addReducer(<minecraft:nether_star>, 100)
.addPurifier(<minecraft:nether_star>, 100)
.register();

HighOven.newMixRecipe(<liquid:supermanyullyn>*144, <liquid:manyullyn>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<minecraft:nether_star>, 100)
    .addReducer(<minecraft:nether_star>, 100)
.addPurifier(<minecraft:nether_star>, 100)
.register();

HighOven.newMixRecipe(<liquid:supercobalt>*144, <liquid:cobalt>*144, 3000) //产出流体，输入流体，温度
         .addOxidizer(<minecraft:nether_star>, 100)
    .addReducer(<minecraft:nether_star>, 100)
.addPurifier(<minecraft:nether_star>, 100)
.register();

HighOven.newMixRecipe(<liquid:ambe>*288, <liquid:ambe>*144, 500) //产出流体，输入流体，温度
         .addOxidizer(<ore:gemAmber>, 0)
    .addReducer(<ore:gemAmber>, 0)
.addPurifier(<ore:gemAmber>, 0)
.register();

HighOven.newMixRecipe(<liquid:obsidian>*288, <liquid:obsidian>*144, 500) //产出流体，输入流体，温度
         .addOxidizer(<minecraft:obsidian>, 0)
    .addReducer(<minecraft:obsidian>, 0)
.addPurifier(<minecraft:obsidian>, 0)
.register();

HighOven.manageMixRecipe(<liquid:pigiron>,<liquid:iron>)
.addOxidizer(<ore:beeComb>, 25)
.removeOxidizer(<minecraft:sugar>);

HighOven.newMixRecipe(<liquid:wucai>*1000, <liquid:manyullyn>*576, 1500) //产出流体，输入流体，温度
         .addOxidizer(<biomesoplenty:terrestrial_artifact>, 100)
.register();

HighOven.newMixRecipe(<liquid:netherite>*144, <liquid:gold>*432, 2500) //产出流体，输入流体，温度
         .addOxidizer(<futuremc:netherite_scrap>, 100)
    .addReducer(<futuremc:netherite_scrap>, 100)
.addPurifier(<futuremc:netherite_scrap>, 50)
.register();


HighOven.newMixRecipe(<liquid:terrasteel>*144, <liquid:fluidedmana>*500000, 2500) //产出流体，输入流体，温度
         .addOxidizer(<botania:manaresource>,100)
    .addReducer(<botania:manaresource:1>, 100)
.addPurifier(<botania:manaresource:2>, 100)
.register();

HighOven.newMixRecipe(<liquid:terrasteel>*144, <liquid:nsmana>*500, 2500) //产出流体，输入流体，温度
         .addOxidizer(<botania:manaresource>,100)
    .addReducer(<botania:manaresource:1>, 100)
.addPurifier(<botania:manaresource:2>, 100)
.register();

HighOven.newMixRecipe(<liquid:dark>*144, <liquid:elementium>*144, 2500) //产出流体，输入流体，温度
         .addOxidizer(<extrabotany:nightmarefuel>,100)
    .addReducer(<extrabotany:nightmarefuel>, 100)
.addPurifier(<extrabotany:nightmarefuel>, 100)
.register();

HighOven.newMixRecipe(<liquid:light>*144, <liquid:elementium>*144, 2500) //产出流体，输入流体，温度
         .addOxidizer(<extrabotany:material>,100)
    .addReducer(<extrabotany:material>, 100)
.addPurifier(<extrabotany:material>, 100)
.register();

HighOven.newMixRecipe(<liquid:photonium>*144, <liquid:fluidedmana>*4200, 3500) //产出流体，输入流体，温度
         .addOxidizer(<botania:manaresource:7>,100)
    .addReducer(<additions:fxt-lightpotato>, 85)
.register();

HighOven.newMixRecipe(<liquid:shadowium>*144, <liquid:fluidedmana>*4200, 3500) //产出流体，输入流体，温度
         .addOxidizer(<botania:manaresource:7>,100)
    .addReducer(<additions:fxt-darkpotato>, 85)
.register();

HighOven.newMixRecipe(<liquid:dragonsteel_fire>*144, <liquid:iron>*144, 3300) //产出流体，输入流体，温度
         .addOxidizer(<iceandfire:fire_dragon_blood>,100)
    .addReducer(<minecraft:nether_star>, 0)
.addPurifier(<iceandfire:fire_dragon_heart>, 0)
.register();

HighOven.newMixRecipe(<liquid:dragonsteel_ice>*144, <liquid:iron>*144, 2300) //产出流体，输入流体，温度
         .addOxidizer(<iceandfire:ice_dragon_blood>,100)
    .addReducer(<minecraft:nether_star>, 0)
.addPurifier(<iceandfire:ice_dragon_heart>, 0)
.register();

HighOven.newMixRecipe(<liquid:dragonsteel_lightning>*144, <liquid:iron>*144, 1300) //产出流体，输入流体，温度
         .addOxidizer(<iceandfire:lightning_dragon_blood>,100)
    .addReducer(<minecraft:nether_star>, 0)
.addPurifier(<iceandfire:lightning_dragon_heart>, 0)
.register();