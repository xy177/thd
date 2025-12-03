import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mod.mekanism.gas.IGasStack;
import mods.botania.RuneAltar;
import moretweaker.draconicevolution.FusionCrafting;
#priority 101
#ignoreBracketErrors
//这是由辰林（chengming or chenming）与Minecraft 魔改交流群 | 周易内的大佬修改完成的，如果可以可否保留这条注释让我们在你的包里有一点点的名分，虽然你执意要删我也无法强制让你保留.......
//This was done by Minecraft CraftTweaker Exchange groups | Zhou Yi in the big Lao and chengming, if possible could you keep this comment to give us a bit of a name in your bag, although I can't force you to keep it if you insist on deleting it .......
//本文件时参考原文件经本人（xy177）一定量调整后而成，原文件的使用已征得原作者同意
for ench in oreDict.entries /* oreDict.entries 在所有注册OD中循环 */ {
    var oreName as string = ench.name;
    var enchGear as IItemStack = ench.firstItem; // 获得OD的第一个物品

    // 进行条件判断获取cot新建的矿物粉，第二条是排除mek原版已经搞好的的5倍
    if (oreName.startsWith("sptdust") && enchGear.definition.owner != "mekanism") {
        var key as string = oreName.substring("sptdust".length); // 获取金属名

        // 获取魔改需要的该金属的其他部件
        var crystal as IOreDictEntry= oreDict.get("sptcrystal" ~ key);//晶体
        var shard as IOreDictEntry = oreDict.get("sptshard" ~ key);//碎片
        var clump as IOreDictEntry = oreDict.get("sptclump" ~ key);//碎块
        var dirty_dust as IOreDictEntry =oreDict.get("sptdirty_dust" ~ key);//污浊粉
        var ingredients as IOreDictEntry = oreDict.get("tingredients" ~ key);//原料
        var raw as IOreDictEntry= oreDict.get("traw" ~ key);//小件
        var splate as IOreDictEntry = oreDict.get("sptlate" ~ key);//板材
        var wire as IOreDictEntry = oreDict.get("twire" ~ key);//线材
        var spseed as IOreDictEntry = oreDict.get("sptseed" ~ key);//种子
        var spotato as IOreDictEntry = oreDict.get("sptotato" ~ key);//块茎
        var plantsilt as IOreDictEntry= oreDict.get("tplantsilt" ~ key);//植泥
        var silt as IOreDictEntry =oreDict.get("tsilt" ~ key);//淤泥
        var flocculent as IOreDictEntry = oreDict.get("tflocculent" ~ key);//凝结团
        var spblock as IOreDictEntry =oreDict.get("sptblock" ~ key);//构件
        var spignot as IOreDictEntry =oreDict.get("sptignot" ~ key);//锭
        var spchesta as IOreDictEntry =oreDict.get("sptchesta" ~ key);//箱装1
        var spchestb as IOreDictEntry =oreDict.get("sptchestb" ~ key);//箱装2
        var spchestc as IOreDictEntry =oreDict.get("sptchestc" ~ key);//箱装3
        var ore as IOreDictEntry= oreDict.get("ore" ~ key);//矿石
        var qidian as IOreDictEntry= oreDict.get("qidian" ~ key);//寄点
        //因为气体的名称通常为“矿物名字+类型”
        //例如<gas:abyssalnitedirty_ore_slurry_gas>所以获取的金属名要小写
        //所以将key转成小写
        var key1 as string = key.toLowerCase();
        //获取魔改需要的该金属的其他气体，污浊的矿物浆，纯净的矿物浆液
        var dirtgas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "dirty_ore_slurry_gast");//污浊的矿物浆
        var cleangas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "clean_ore_slurry_gast");//纯净的矿物浆液
        //避免撒B忘记注册导致脚本错误
        if (! crystal.empty && ! shard.empty && ! dirty_dust.empty && ! ingredients.empty ) {          
//融合机
mods.mekanism.combiner.addRecipe(ingredients.firstItem , <minecraft:poisonous_potato>, spseed.firstItem);
mods.mekanism.combiner.addRecipe(wire.firstItem*10 , <ore:plankWood>, spchesta.firstItem);
mods.mekanism.combiner.addRecipe(wire.firstItem*25 , <ore:logWood>, spchestb.firstItem);
mods.mekanism.combiner.addRecipe(wire.firstItem*50 , <forestry:wood_pile>, spchestc.firstItem);
//加压
//mods.mekanism.reaction.addRecipe(输入, 输入液体 * 200, 输入气体 * 100, 输出 * 8, 输出气体 * 10, 200.0, 400)
mods.mekanism.organicfarm.addRecipe(spseed.firstItem, <gas:nutrientsolution>*500, spotato.firstItem * 7, spseed.firstItem, 0.05);
mods.mekanism.organicfarm.addRecipe(spseed.firstItem, <gas:spnutrientsolutionordinary_gas>*500, spotato.firstItem * 7, spseed.firstItem, 0.17);
mods.mekanism.reaction.addRecipe(spseed.firstItem, <liquid:water>*400, <gas:nutrientsolution>*500, spotato.firstItem * 7, <gas:hydrogen> * 100, 0.0, 500);
//细胞提取机
mods.mekanism.cellextractor.addRecipe(spotato.firstItem, plantsilt.firstItem, <botania:overgrowthseed>*2, 0.75);
//细胞分离机
mods.mekanism.cellseparator.addRecipe(plantsilt.firstItem, flocculent.firstItem*7, null, 1.0);
//回收机
mods.mekanism.recycler.addRecipe(flocculent.firstItem, silt.firstItem, 1.0);
//数控冲床
mods.mekanism.stamping.addRecipe(silt.firstItem, spblock.firstItem * 5);
mods.mekanism.stamping.addRecipe(ingredients.firstItem, spblock.firstItem * 3);
//数控车床
mods.mekanism.turning.addRecipe(spblock.firstItem, raw.firstItem*1);
//数控轧制机
mods.mekanism.rolling.addRecipe(raw.firstItem, splate.firstItem * 5);
mods.mekanism.rolling.addRecipe(ingredients.firstItem, splate.firstItem * 3);
//数控拉丝机
//mods.mekanism.brushed.addRecipe(<minecraft:dirt>, <minecraft:sand> * 2)
mods.mekanism.brushed.addRecipe(splate.firstItem,wire.firstItem * 2);
mods.mekanism.brushed.addRecipe(ingredients.firstItem,wire.firstItem * 1);

//化学溶解室
mods.mekanism.chemical.dissolution.addRecipe(spchesta.firstItem, dirtgas * 20);
mods.mekanism.chemical.dissolution.addRecipe(spchestb.firstItem*7, dirtgas * 350);
mods.mekanism.chemical.dissolution.addRecipe(spchestc.firstItem*49, dirtgas * 4900);
//清洗机
mods.mekanism.chemical.washer.addRecipe(dirtgas*700, cleangas*700);
//结晶器
mods.mekanism.chemical.crystallizer.addRecipe(cleangas*350, crystal.firstItem);
//压射
mods.mekanism.chemical.injection.addRecipe(crystal.firstItem, <gas:hydrogenchloride>, shard.firstItem);
//净化
mods.mekanism.purification.addRecipe(shard.firstItem, clump.firstItem);
//粉碎
mods.mekanism.crusher.addRecipe(clump.firstItem, dirty_dust.firstItem);
//富集
mods.mekanism.enrichment.addRecipe(dirty_dust.firstItem, enchGear);
//工作台
recipes.addShaped(ingredients.firstItem, [[<avaritia:resource:2>, <avaritia:resource:2>,<avaritia:resource:2>], [<avaritia:resource:2>, ore.firstItem,<avaritia:resource:2>], [<avaritia:resource:2>, <avaritia:resource:2>,<avaritia:resource:2>]]);

        }
    }
}
