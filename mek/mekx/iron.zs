/*
//融合机
mods.mekanism.combiner.addRecipe(<minecraft:iron_ore> , <minecraft:poisonous_potato>, <additions:mekaddon-iron01>);
//加压
//mods.mekanism.reaction.addRecipe(输入, 输入液体 * 200, 输入气体 * 100, 输出 * 8, 输出气体 * 10, 200.0, 400)
mods.mekanism.reaction.addRecipe(<additions:mekaddon-iron01>, <liquid:water>*400, <gas:nutrientsolution>*500, <additions:mekaddon-iron02> * 7, <gas:hydrogen> * 100, 0.0, 500);
//细胞提取机
mods.mekanism.cellextractor.removeRecipe(<minecraft:iron_ore>, <minecraft:iron_block>, <minecraft:iron_ingot>);
mods.mekanism.cellextractor.addRecipe(<additions:mekaddon-iron02>, <additions:mekaddon-iron03>, <mekanism:biofuel>*64, 1.0);
//细胞分离机
mods.mekanism.cellseparator.removeRecipe(<minecraft:iron_ore>, <minecraft:iron_block>, <minecraft:iron_ingot>);
mods.mekanism.cellseparator.addRecipe(<additions:mekaddon-iron03>, <additions:mekaddon-iron04>*4, <additions:mekaddon-iron04>*3, 1.14);
//回收机
mods.mekanism.recycler.addRecipe(<additions:mekaddon-iron04>, <additions:mekaddon-iron05>, 1.0);
//数控冲床
mods.mekanism.stamping.removeRecipe(<minecraft:dirt>, <minecraft:sand> * 2);
mods.mekanism.stamping.addRecipe(<additions:mekaddon-iron05>, <additions:mekaddon-iron06> * 5);
mods.mekanism.stamping.addRecipe(<minecraft:iron_ore>, <additions:mekaddon-iron06> * 5);
//数控车床
mods.mekanism.turning.removeRecipe(<minecraft:dirt>, <minecraft:sand> * 2);
mods.mekanism.turning.addRecipe(<additions:mekaddon-iron06>, <additions:mekaddon-iron07>);
//数控轧制机
mods.mekanism.rolling.removeRecipe(<minecraft:dirt>, <minecraft:sand> * 2);
mods.mekanism.rolling.addRecipe(<additions:mekaddon-iron07>, <additions:mekaddon-iron08> * 5);
mods.mekanism.rolling.addRecipe(<minecraft:iron_ore>, <additions:mekaddon-iron08> * 5);
//数控拉丝机
//mods.mekanism.brushed.addRecipe(<minecraft:dirt>, <minecraft:sand> * 2)
mods.mekanism.brushed.removeRecipe(<minecraft:dirt>, <minecraft:sand> * 2);
mods.mekanism.brushed.addRecipe(<additions:mekaddon-iron08>,<additions:mekaddon-iron09> * 2);
mods.mekanism.brushed.addRecipe(<minecraft:iron_ore>,<additions:mekaddon-iron09> * 2);
//化学溶解室
mods.mekanism.chemical.dissolution.addRecipe(<additions:mekaddon-iron09>, <gas:iron> * 1000);
*/