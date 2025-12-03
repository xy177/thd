#loader contenttweaker
#priority 101
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.RegisterMaterialPart;
import mods.contenttweaker.MaterialPart;
import mods.mekatweaker.Gas;
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.InfuserType;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

import mods.contenttweaker.PartType;  

//这是由Minecraft 魔改交流群 | 周易内的大佬与辰林（chengming or chenming）修改完成的，如果可以可否保留这条注释让我们在你的包里有一点点的名分，虽然你执意要删我也无法强制让你保留.......
//This was done by Minecraft CraftTweaker Exchange groups | Zhou Yi in the big Lao and chengming, if possible could you keep this comment to give us a bit of a name in your bag, although I can't force you to keep it if you insist on deleting it .......
//创建mek气体类型
val gasPartType = MaterialSystem.createPartType("mekanism_gas_type", function(materialPart) {
    val material = materialPart.getMaterial();
    val part = materialPart.getPart();
    logger.logInfo("Registering Gas MaterialPart with Part " ~ materialPart.getPart().getName() ~ " and Material " ~ material.getName());
	var gas = GasFactory.createGas(material.getName().toLowerCase() ~ part.getName().toLowerCase());

	gas.setIcon("blocks/gas/" ~ part.getName().toLowerCase());
	gas.setColor(material.getColor());
	gas.setColorize(true);

    //This way users dont have to add all the names to the lang file themselves, remove this and you will have to localize "gas.<material.getName().toLowerCase()>"
	game.setLocalization("gas." ~ material.getName().toLowerCase() ~ part.getName().toLowerCase(), materialPart.getLocalizedName());
    gas.register();
});

//创建部件(纯净的矿物浆液气体)
val CleanOreSlurryGasPart = MaterialSystem.getPartBuilder()
    .setName("clean_ore_slurry_gas")
    .setPartType(gasPartType)
.build();

//创建部件(污浊的矿物浆液气体)
val DirtyOreSlurryGasPart = MaterialSystem.getPartBuilder()
    .setName("dirty_ore_slurry_gas")
    .setPartType(gasPartType)
.build();

//创建部件(普通材料用气体)
val OrdinaryGasPart = MaterialSystem.getPartBuilder()
    .setName("ordinary_gas")
    .setPartType(gasPartType)
.build();

//创建部件(矿粉)
val Spdust = MaterialSystem.getPartBuilder()
    .setName("spdust")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(污浊矿粉)
val SpdirtyDust = MaterialSystem.getPartBuilder()
    .setName("spdirty_dust")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿晶体)
val Spcrystal = MaterialSystem.getPartBuilder()
    .setName("spcrystal")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿碎片)
val Spshard = MaterialSystem.getPartBuilder()
    .setName("spshard")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿碎块)
val Spclump = MaterialSystem.getPartBuilder()
    .setName("spclump")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(原料簇)
val IngredientsPart = MaterialSystem.getPartBuilder()
    .setName("ingredients")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(粗矿小件)
val Raw = MaterialSystem.getPartBuilder()
    .setName("raw")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(板材)
val Splate = MaterialSystem.getPartBuilder()
    .setName("splate")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(线材)
val Wire = MaterialSystem.getPartBuilder()
    .setName("wire")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(粗矿构件)
val Spblock = MaterialSystem.getPartBuilder()
    .setName("spblock")
    .setPartType(MaterialSystem.getPartType("block"))
.build();

//创建部件(种子)
val Spseed = MaterialSystem.getPartBuilder()
    .setName("spseed")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(块茎)
val Spotato = MaterialSystem.getPartBuilder()
    .setName("spotato")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(植泥)
val Plantsilt = MaterialSystem.getPartBuilder()
    .setName("plantsilt")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(淤泥)
val Silt = MaterialSystem.getPartBuilder()
    .setName("silt")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(凝结团)
val Flocculent = MaterialSystem.getPartBuilder()
    .setName("flocculent")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件（箱装线材）
val Spchest = MaterialSystem.getPartBuilder()
    .setName("spchest")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();



function mekaddMaterial(name as string , Color as string , Part as string[]) {
    MaterialSystem.getMaterialBuilder().setName(name).setColor(Color).build().registerParts(Part);
}

//例子
//当你的游戏里有  深渊国度（AbyssalCraft）mod时会创建一套渊素的mek5倍矿
//没有时只会生成一些没有合成的物品而已
val Part1 as string[]=["spdust", "spcrystal", "spshard","spclump","spdirty_dust","ingredients","raw", "splate", "wire","spblock","spseed","spotato","plantsilt","silt","flocculent","spchest","clean_ore_slurry_gas","dirty_ore_slurry_gas"];
val Part2 as string[]=["ordinary_gas"];
//单气体
mekaddMaterial("Spnutrientsolution", 0x50b7c1, Part2);
mekaddMaterial("Visnutrientsolution", 0x8552a1, Part2);
//全套
mekaddMaterial("Mithrillium", 0x68d6ff, Part1);
mekaddMaterial("Mithminite", 0xFF1493, Part1);
mekaddMaterial("Adaminite", 0xCD2626, Part1);
mekaddMaterial("Orichalcos", 0xC71585, Part1);
mekaddMaterial("Tz", 0x4682B4, Part1);
mekaddMaterial("Sjy", 0xEEAD0E, Part1);
mekaddMaterial("Ylx", 0xFFFF00, Part1);
mekaddMaterial("Ff", 0xFFE4E1, Part1);
mekaddMaterial("Bx", 0xC0FF3E, Part1);
mekaddMaterial("Draconicmetal", 0xFF8C00, Part1);
mekaddMaterial("Chaoticmetal", 0x130c0e, Part1);
mekaddMaterial("Infinity", 0xffffff, Part1);
mekaddMaterial("Baddream", 0xba1808, Part1);
mekaddMaterial("Netherite", 0x6b473c, Part1);
mekaddMaterial("Worldtitaniu", 0xffce7b, Part1);
mekaddMaterial("Primordial", 0xf15b6c, Part1);
mekaddMaterial("Ichorium", 0xe0861a, Part1);