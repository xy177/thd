import mods.exsartagine.ExSartagine;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Drying;

//晾干
Drying.addRecipe(<tconstruct:edible>,<croparia:roast_porc>, 600);
Drying.addRecipe(<tofucraft:blocktofuishi>,<tofucraft:blocktofumomen>, 600);
Drying.addRecipe(<tofucraft:blocktofumetal>,<tofucraft:blocktofuishi>, 1200);
Drying.addRecipe(<tofucraft:material:1>,<ore:douqu>, 1200);
//煎锅ExSartigine.addWokRecipe(IIngredient[] inputs, IItemStack[] outputs,@Optional int flips);
val egg = <ore:listAllegg>;
ExSartagine.addWokRecipe([egg],[<additions:delight-fried_egg>*2]);
ExSartagine.addWokRecipe([<botania:manaresource:2>,<tofucraft:tofu_material>],[<tofucraft:tofu_material:1>]);