 
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
val tianchong = <ore:anynotusefood>;
val bigmeat = <ore:bigmeat>;
val meat =<ore:listAllmeatraw>;
val notmeat =<ore:notmeat>;
val vegetable =<ore:listAllveggie>;
ExSartagine.addWokRecipe([egg],[<additions:delight-fried_egg>*2]);
ExSartagine.addWokRecipe([<botania:manaresource:2>,<tofucraft:tofu_material>],[<tofucraft:tofu_material:1>]);
//厨锅ExSartigine.addKettleRecipe(IIngredient[] inputs, IIngredient catalyst, ILiquidStack liquid,IItemStack[] outputs, @Optional("200") int time);
ExSartagine.addKettleRecipe([bigmeat,bigmeat,bigmeat,tianchong],<liquid:oliveoil>*50,[<additions:delight-meatystew>], 300);
ExSartagine.addKettleRecipe([meat,tianchong,tianchong,tianchong],<liquid:oliveoil>*50,[<additions:delight-meatball>], 300);
ExSartagine.addKettleRecipe([<backportsupplement:cactusflower>,vegetable,vegetable,notmeat],<liquid:oliveoil>*50,[<additions:delight-flowersalad>], 200);