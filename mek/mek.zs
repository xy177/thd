
//mods.mekanism.combiner.addRecipe(<mekanism:atomicalloy> , <minecraft:nether_star>, <additions:fxt-alloy_nether>);
mods.mekanism.combiner.addRecipe(<additions:fxt-alloy_nether> , <additions:farm-mekiron>, <additions:fxt-armyiron>);
mods.mekanism.combiner.addRecipe(<additions:fxt-alloy_nether> , <additions:farm-meksteel>,<additions:fxt-armysteel>);
mods.mekanism.combiner.addRecipe(<additions:fxt-alloy_nether> , <ore:ingotSilver>,<additions:fxt-armysliver>);
//mods.mekanism.combiner.addRecipe(<additions:fxt-alloy_nether> , <additions:fxt-ranbow_bottol>,<additions:fxt-ranbowhejin>*10);
//mods.mekanism.combiner.addRecipe(<additions:fxt-alloy_nether> , <extrautils2:decorativesolid:8>,<additions:fxt-ranbowhejin>);
//mods.mekanism.combiner.addRecipe(<thermalfoundation:material:770> , <mekanism:otherdust>, <mekanism:otherdust:5>);
mods.mekanism.combiner.addRecipe(<thermalfoundation:material:65> , <thermalfoundation:material:128>*3, <thermalfoundation:material:163>);
mods.mekanism.combiner.addRecipe(<croparia:fruit_uranium> , <minecraft:stone>*2, <mekanism:oreblock:5>*2);
mods.mekanism.combiner.addRecipe(<croparia:fruit_osmium> , <minecraft:stone>*2, <mekanism:oreblock>*2);
//回收机
mods.mekanism.recycler.addRecipe(<minecraft:coal:1>, <thermalfoundation:material:864>, 1.0);
mods.mekanism.recycler.addRecipe(<thermalfoundation:material:802>, <thermalfoundation:material:865>, 1.0);
//<ore:dustIron>
furnace.remove(<minecraft:iron_ingot>, <thermalfoundation:material>);
furnace.remove(<minecraft:iron_ingot>, <ore:dustIron>);
furnace.addRecipe(<additions:farm-mekiron>, <thermalfoundation:material>);
furnace.addRecipe(<additions:farm-mekosmium>, <additions:farm-mekosmiumfen>);
//
mods.thermalexpansion.InductionSmelter.removeRecipe(<tconstruct:ingots:1>, <tconstruct:ingots>);