//mods.mekanism.crusher.removeRecipe(<mekanism:biofuel>);
mods.mekanism.crusher.removeRecipe(<minecraft:poisonous_potato>);
mods.mekanism.crusher.addRecipe(<additions:farm-exfarm01>, <mekanism:biofuel> * 12);
mods.mekanism.crusher.addRecipe(<additions:farm-exfarm02>, <mekanism:biofuel> * 21);
mods.mekanism.crusher.addRecipe(<minecraft:poisonous_potato>, <mekanism:biofuel> * 24);
//锯木
mods.mekanism.sawmill.addRecipe(<sakura:foodset:163>*3, <sakura:foodset:164> * 2, <additions:farm-exfarm01> * 6, 1.0);
//加压
//mods.mekanism.reaction.addRecipe(输入, 输入液体 * 200, 输入气体 * 100, 输出 * 8, 输出气体 * 10, 200.0, 400)
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer>, <liquid:water>*400, <gas:nutritionalpaste>*300, <additions:farm-phytogro> * 1, <gas:hydrogen> * 100, 0.0, 500);
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer:1>, <liquid:water>*200, <gas:nutritionalpaste>*250, <additions:farm-phytogro> * 3, <gas:hydrogen> * 50, 0.0, 500);
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer:2>, <liquid:water>*100, <gas:nutritionalpaste>*200, <additions:farm-phytogro> * 6, <gas:hydrogen> * 25, 0.0, 500);
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer>, <liquid:water>*400, <gas:nutrientsolution>*300, <additions:farm-phytogro> * 4, <gas:hydrogen> * 100, 0.0, 500);
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer:1>, <liquid:water>*200, <gas:nutrientsolution>*250, <additions:farm-phytogro> * 12, <gas:hydrogen> * 50, 0.0, 500);
mods.mekanism.reaction.addRecipe(<thermalfoundation:fertilizer:2>, <liquid:water>*100, <gas:nutrientsolution>*200, <additions:farm-phytogro> * 24, <gas:hydrogen> * 25, 0.0, 500);

mods.mekanism.reaction.addRecipe(<thaumicwonders:primordial_grain>, <liquid:water>*500, <gas:nutritionalpaste>*500, <thaumcraft:curio:7> * 1, <gas:visnutrientsolutionordinary_gas> * 800, 0.0, 500);
mods.mekanism.reaction.addRecipe(<additions:farm-phytogro>, <liquid:water>*500, <gas:nutritionalpaste>*500, <thermalfoundation:fertilizer:2> * 1, <gas:spnutrientsolutionordinary_gas> * 800, 0.0, 500);
