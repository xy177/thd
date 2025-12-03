import mods.sakura.Barrel;
import mods.sakura.campfirePot;
import mods.sakura.Distillation;
import mods.sakura.liquid_to_itemStack;
import mods.sakura.stoneMorter;


Barrel.AddRecipe( <liquid:water> * 1000, [<minecraft:hay_block>,<harvestcraft:agaveitem>,<harvestcraft:agaveitem>],<liquid:longshelan> * 1000);
Distillation.AddRecipe( <liquid:water> * 1000,[<ore:cropJuniperberry>,<minecraft:hay_block>,<ore:cropNutmeg>],<liquid:qinjiu> * 1000);

liquid_to_itemStack.AddRecipe(<sakura:materials:47>, <sakura:bottle_alcoholic:11>.withTag({}), <liquid:qinjiu> * 1000);
liquid_to_itemStack.AddRecipe(<sakura:materials:47>, <sakura:bottle_alcoholic:12>.withTag({}), <liquid:longshelan> * 1000);