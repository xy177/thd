
import mods.sakura.campfirePot;
import mods.sakura.stoneMorter;
//搜索用：樱，askura
campfirePot.AddRecipe([<ore:ingotNetherite>,<ore:ingotNetherite>,<tofucraft:tofu_material:1>,<tofucraft:blocktofumetal>,<tofucraft:blocktofuishi>,<tofucraft:material:23>,<tofucraft:material:21>,<tofucraft:material:24>,<quark:candle:15>], <additions:fxt-black_candle>, <liquid:manyullyn> * 1000);
campfirePot.AddRecipe([<additions:fxt-meetfood_01>,<additions:fxt-meetfood_02>,<additions:fxt-meetfood_03>,<additions:fxt-meetfood_04>,<additions:fxt-meetfood_05>],<avaritia:cosmic_meatballs>, <liquid:oliveoil> * 2000);
campfirePot.AddRecipe([<ore:listAllbeefraw>,<ore:bamboo>],<sakura:foodset:90>, <liquid:sakura.food_oil> * 100);
campfirePot.AddRecipe([<ore:listAllporkraw>,<ore:bamboo>],<sakura:foodset:92>, <liquid:sakura.food_oil> * 100);
campfirePot.AddRecipe([<ore:listAllchickenraw>,<ore:bamboo>],<sakura:foodset:91>, <liquid:sakura.food_oil> * 100);
campfirePot.AddRecipe([<additions:fxt-fan_xing>,<iceandfire:dragonsteel_ice_block>,<tconstruct:large_plate>.withTag({Material: "moon_stone"}),<tconstruct:large_plate>.withTag({Material: "lightshadow"}),<tconstruct:large_plate>.withTag({Material: "gaiya_ingot"}),<tconstruct:large_plate>.withTag({Material: "extrabotany:ingotorichalcos"}),<tconstruct:large_plate>.withTag({Material: "allgem"}),<tconstruct:large_plate>.withTag({Material: "carminite"}),<iceandfire:dragonsteel_fire_block>], <additions:fxt-redandblue>*8, <liquid:pyrotheum> * 1000);
//米诺即食口粮
campfirePot.AddRecipe([<twilightforest:meef_stroganoff>,<twilightforest:cooked_meef>,<twilightforest:cooked_meef>,<minecraft:mushroom_stew>,<harvestcraft:grilledmushroomitem>,<harvestcraft:whitemushroomitem>],<additions:fxt-twfo_00>*6, <liquid:sakura.food_oil> * 100);
//烫嘴肉排
campfirePot.AddRecipe([<twilightforest:fiery_blood>,<twilightforest:hydra_chop>,<twilightforest:hydra_chop>],<additions:fxt-wtfo_06>, <liquid:fierymetal> * 144);
//沙拉酱肉
campfirePot.AddRecipe([<twilightforest:cooked_meef>,<twilightforest:cooked_meef>,<harvestcraft:lettuceitem>],<twilightforest:meef_stroganoff>, <liquid:water> * 144);
//麸皮
stoneMorter.AddRecipe([<sakura:foodset:163>,<sakura:foodset:163>,<sakura:foodset:163>,<sakura:foodset:163>],[<sakura:foodset:164>*4,<additions:farm-exfarm01>*4]);