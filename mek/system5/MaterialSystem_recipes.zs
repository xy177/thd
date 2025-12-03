import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mod.mekanism.gas.IGasStack;

#ignoreBracketErrors
#priority 101
//这是由辰林（chengming or chenming）与Minecraft 魔改交流群 | 周易内的大佬修改完成的，如果可以可否保留这条注释让我们在你的包里有一点点的名分，虽然你执意要删我也无法强制让你保留.......
//This was done by Minecraft CraftTweaker Exchange groups | Zhou Yi in the big Lao and chengming, if possible could you keep this comment to give us a bit of a name in your bag, although I can't force you to keep it if you insist on deleting it .......
//本文件时参考原文件经本人（xy177）一定量调整后而成，原文件的使用已征得原作者同意
for ench in oreDict.entries /* oreDict.entries 在所有注册OD中循环 */ {
    var oreName as string = ench.name;
    var enchGear as IItemStack = ench.firstItem; // 获得OD的第一个物品

    // 进行条件判断获取cot新建的矿物粉，第二条是排除mek原版已经搞好的的5倍
    if (oreName.startsWith("spdust") && enchGear.definition.owner != "mekanism") {
        var key as string = oreName.substring("spdust".length); // 获取金属名

        // 获取魔改需要的该金属的其他部件
        var crystal as IOreDictEntry= oreDict.get("spcrystal" ~ key);//晶体
        var shard as IOreDictEntry = oreDict.get("spshard" ~ key);//碎片
        var clump as IOreDictEntry = oreDict.get("spclump" ~ key);//碎块
        var dirty_dust as IOreDictEntry =oreDict.get("spdirty_dust" ~ key);//污浊粉
        var ingredients as IOreDictEntry = oreDict.get("ingredients" ~ key);//原料
        var raw as IOreDictEntry= oreDict.get("raw" ~ key);//小件
        var splate as IOreDictEntry = oreDict.get("splate" ~ key);//板材
        var wire as IOreDictEntry = oreDict.get("wire" ~ key);//线材
        var spseed as IOreDictEntry = oreDict.get("spseed" ~ key);//种子
        var spotato as IOreDictEntry = oreDict.get("spotato" ~ key);//块茎
        var plantsilt as IOreDictEntry= oreDict.get("plantsilt" ~ key);//植泥
        var silt as IOreDictEntry =oreDict.get("silt" ~ key);//淤泥
        var flocculent as IOreDictEntry = oreDict.get("flocculent" ~ key);//凝结团
        var spblock as IOreDictEntry =oreDict.get("spblock" ~ key);//构件
        var spignot as IOreDictEntry =oreDict.get("spignot" ~ key);//锭
        var spchest as IOreDictEntry =oreDict.get("spchest" ~ key);//箱装
        //因为气体的名称通常为“矿物名字+类型”
        //例如<gas:abyssalnitedirty_ore_slurry_gas>所以获取的金属名要小写
        //所以将key转成小写
        var key1 as string = key.toLowerCase();
        //获取魔改需要的该金属的其他气体，污浊的矿物浆，纯净的矿物浆液
        var dirtgas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "dirty_ore_slurry_gas");//污浊的矿物浆
        var cleangas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "clean_ore_slurry_gas");//纯净的矿物浆液
        //避免撒B忘记注册导致脚本错误
        if (! crystal.empty && ! shard.empty && ! dirty_dust.empty && ! ingredients.empty ) {
            mods.mekanism.chemical.dissolution.addRecipe(ingredients.firstItem, dirtgas*1000);
            mods.mekanism.chemical.washer.addRecipe(dirtgas*200, cleangas*200);
            mods.mekanism.chemical.crystallizer.addRecipe(cleangas*200, crystal.firstItem);
            mods.mekanism.chemical.injection.addRecipe(crystal.firstItem, <gas:hydrogenchloride>, shard.firstItem);
            mods.mekanism.chemical.injection.addRecipe(ingredients.firstItem, <gas:hydrogenchloride>, shard.firstItem * 4);
            mods.mekanism.purification.addRecipe(shard.firstItem, clump.firstItem);
            mods.mekanism.purification.addRecipe(ingredients.firstItem, clump.firstItem * 3);
            mods.mekanism.crusher.addRecipe(clump.firstItem, dirty_dust.firstItem);
            mods.mekanism.crusher.addRecipe(ingredients.firstItem, dirty_dust.firstItem *2);
            mods.mekanism.enrichment.addRecipe(dirty_dust.firstItem, enchGear);
            //融合机
mods.mekanism.combiner.addRecipe(ingredients.firstItem , <minecraft:poisonous_potato>, spseed.firstItem);
//加压
//mods.mekanism.reaction.addRecipe(输入, 输入液体 * 200, 输入气体 * 100, 输出 * 8, 输出气体 * 10, 200.0, 400)
mods.mekanism.organicfarm.addRecipe(spseed.firstItem, <gas:nutrientsolution>*500, spotato.firstItem * 15, spseed.firstItem, 0.05);
mods.mekanism.organicfarm.addRecipe(spseed.firstItem, <gas:spnutrientsolutionordinary_gas>*500, spotato.firstItem * 15, spseed.firstItem, 0.17);
mods.mekanism.reaction.addRecipe(spseed.firstItem, <liquid:water>*400, <gas:nutrientsolution>*500, spotato.firstItem * 15, <gas:hydrogen> * 100, 0.0, 500);
//细胞提取机
mods.mekanism.cellextractor.addRecipe(spotato.firstItem, plantsilt.firstItem, <botania:overgrowthseed>*2, 0.25);
//细胞分离机
mods.mekanism.cellseparator.addRecipe(plantsilt.firstItem, flocculent.firstItem*1, null, 1.0);
//回收机
mods.mekanism.recycler.addRecipe(flocculent.firstItem, silt.firstItem, 1.0);
mods.mekanism.recycler.addRecipe(ingredients.firstItem, silt.firstItem*10, 1.0);
//数控冲床
mods.mekanism.stamping.addRecipe(silt.firstItem, spblock.firstItem * 1);
mods.mekanism.stamping.addRecipe(ingredients.firstItem, spblock.firstItem * 9);
//数控车床
mods.mekanism.turning.addRecipe(spblock.firstItem, raw.firstItem*1);
mods.mekanism.turning.addRecipe(ingredients.firstItem, raw.firstItem*8);
//数控轧制机
mods.mekanism.rolling.addRecipe(raw.firstItem, splate.firstItem * 1);
mods.mekanism.rolling.addRecipe(ingredients.firstItem, splate.firstItem * 7);
//数控拉丝机
//mods.mekanism.brushed.addRecipe(<minecraft:dirt>, <minecraft:sand> * 2)
mods.mekanism.brushed.addRecipe(splate.firstItem,wire.firstItem * 1);
mods.mekanism.brushed.addRecipe(ingredients.firstItem,wire.firstItem * 6);
//化学溶解室
mods.mekanism.chemical.dissolution.addRecipe(wire.firstItem, dirtgas * 200);
mods.mekanism.chemical.dissolution.addRecipe(spchest.firstItem, dirtgas * 1000);
//工作台
recipes.addShaped(spchest.firstItem, [[<ore:plankWood>, wire.firstItem,<ore:plankWood>], [wire.firstItem, wire.firstItem, wire.firstItem], [<ore:plankWood>, wire.firstItem, <ore:plankWood>]]);
        }
    }
}
