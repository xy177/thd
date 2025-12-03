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
    .setName("clean_ore_slurry_gast")
    .setPartType(gasPartType)
.build();

//创建部件(污浊的矿物浆液气体)
val DirtyOreSlurryGasPart = MaterialSystem.getPartBuilder()
    .setName("dirty_ore_slurry_gast")
    .setPartType(gasPartType)
.build();
//创建部件(矿粉)
val Spdust = MaterialSystem.getPartBuilder()
    .setName("sptdust")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(污浊矿粉)
val SpdirtyDust = MaterialSystem.getPartBuilder()
    .setName("sptdirty_dust")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿晶体)
val Spcrystal = MaterialSystem.getPartBuilder()
    .setName("sptcrystal")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿碎片)
val Spshard = MaterialSystem.getPartBuilder()
    .setName("sptshard")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(矿碎块)
val Spclump = MaterialSystem.getPartBuilder()
    .setName("sptclump")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(原料簇)
val IngredientsPart = MaterialSystem.getPartBuilder()
    .setName("tingredients")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(粗矿小件)
val Raw = MaterialSystem.getPartBuilder()
    .setName("traw")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(板材)
val Splate = MaterialSystem.getPartBuilder()
    .setName("sptlate")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(线材)
val Wire = MaterialSystem.getPartBuilder()
    .setName("twire")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(粗矿构件)
val Spblock = MaterialSystem.getPartBuilder()
    .setName("sptblock")
    .setPartType(MaterialSystem.getPartType("block"))
.build();

//创建部件(种子)
val Spseed = MaterialSystem.getPartBuilder()
    .setName("sptseed")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(块茎)
val Spotato = MaterialSystem.getPartBuilder()
    .setName("sptotato")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(植泥)
val Plantsilt = MaterialSystem.getPartBuilder()
    .setName("tplantsilt")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件(淤泥)
val Silt = MaterialSystem.getPartBuilder()
    .setName("tsilt")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件(凝结团)
val Flocculent = MaterialSystem.getPartBuilder()
    .setName("tflocculent")
    .setPartType(MaterialSystem.getPartType("item"))
.build();

//创建部件（箱装线材）
val Sptchesta = MaterialSystem.getPartBuilder()
    .setName("sptchesta")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件（箱装线材）
val Sptchestb = MaterialSystem.getPartBuilder()
    .setName("sptchestb")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();

//创建部件（箱装线材）
val Sptchestc = MaterialSystem.getPartBuilder()
    .setName("sptchestc")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();


function mekaddMaterial(name as string , Color as string , Part as string[]) {
    MaterialSystem.getMaterialBuilder().setName(name).setColor(Color).build().registerParts(Part);
}

//例子
//当你的游戏里有  深渊国度（AbyssalCraft）mod时会创建一套渊素的mek5倍矿
//没有时只会生成一些没有合成的物品而已
val Part1 as string[]=["sptdust", "sptcrystal", "sptshard","sptclump","sptdirty_dust","tingredients","traw", "sptlate", "twire","sptblock","sptseed","sptotato","tplantsilt","tsilt","tflocculent","sptchesta","sptchestb","sptchestc","clean_ore_slurry_gast","dirty_ore_slurry_gast"];
mekaddMaterial("Iron", 0xe9c8b1, Part1);
mekaddMaterial("Gold", 0xfcaf17, Part1);
mekaddMaterial("Lapis", 0x1b315e, Part1);
mekaddMaterial("Redstone", 0xaa2116, Part1);
mekaddMaterial("Quartz", 0xf2eada, Part1);
mekaddMaterial("Copper", 0xb4533c, Part1);
mekaddMaterial("Tin", 0x5e7c85, Part1);
mekaddMaterial("Lead", 0x3c3645, Part1);
mekaddMaterial("Silver", 0xd3d7d4, Part1);
mekaddMaterial("Nickel", 0xdbce8f, Part1);
mekaddMaterial("Diamond", 0x50b7c1, Part1);
mekaddMaterial("Emerald", 0x45b97c, Part1);