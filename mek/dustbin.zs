import mods.appliedenergistics2.Grinder;
//exu2磨粉
mods.extrautils2.Crusher.remove(<minecraft:iron_ingot>);
//ae石英磨具
Grinder.removeRecipe(<minecraft:iron_ingot>);
//热力磨粉
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:iron_ingot>);
//mek磨粉
mods.mekanism.crusher.removeRecipe(<ore:dustIron>);
mods.mekanism.crusher.addRecipe(<minecraft:iron_ingot>, <additions:farm-ironfen>);
mods.mekanism.crusher.addRecipe(<twilightforest:liveroot>, <additions:delight-cassava_flour> * 5);
//aa磨粉机
mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material>);
//mek压缩机
mods.mekanism.combiner.addRecipe(<additions:farm-ironfen>*8 , <ore:cobblestone>, <minecraft:iron_ore>);
//灌注机
mods.mekanism.infuser.addRecipe("CARBON", 20, <mekanism:enrichediron>, <additions:farm-meksteelfen>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <additions:farm-mekiron>, <mekanism:enrichediron>);
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <additions:farm-meksteel>, <mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE", 5, <minecraft:tallgrass:1>, <botania:manaresource:6>);
mods.mekanism.infuser.addRecipe("REDSTONE", 5, <rustic:ginseng>, <botania:manaresource:6>);
mods.mekanism.infuser.addRecipe("RANBOW", 5, <additions:fxt-alloy_nether>, <additions:fxt-ranbowhejin>);
mods.mekanism.infuser.addRecipe("NETHER", 5,<mekanism:atomicalloy> , <additions:fxt-alloy_nether>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <additions:farm-mekosmium>, <mekanism:controlcircuit>);
mods.mekanism.infuser.removeRecipe(<thermalfoundation:material:96>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);