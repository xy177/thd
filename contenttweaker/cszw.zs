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


//创建部件（传颂之物）
val Chuansong = MaterialSystem.getPartBuilder()
    .setName("chuansong")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();



function chuanshuoaddMaterial(name as string , Color as string , Part as string[]) {
    MaterialSystem.getMaterialBuilder().setName(name).setColor(Color).build().registerParts(Part);
}


val Part3 as string[]=["chuansong"];

chuanshuoaddMaterial("Gangshou", 0x464547, Part3);
chuanshuoaddMaterial("Fenyan", 0xf36c21, Part3);
chuanshuoaddMaterial("Lilith", 0x411445, Part3);
chuanshuoaddMaterial("Sathanism", 0x411445, Part3);
chuanshuoaddMaterial("Beelzebub", 0x411446, Part3);
chuanshuoaddMaterial("Rophocale", 0x411447, Part3);
chuanshuoaddMaterial("Astaroth", 0x411448, Part3);
chuanshuoaddMaterial("Asmodeus", 0x411495, Part3);
chuanshuoaddMaterial("Belphegor", 0x411450, Part3);
chuanshuoaddMaterial("Baal", 0x411444, Part3);
chuanshuoaddMaterial("Adramelech", 0x411443, Part3);
chuanshuoaddMaterial("Nahema", 0x411442, Part3);

//创建部件（针剂）
val Zhenji = MaterialSystem.getPartBuilder()
    .setName("zhenji")
    .setPartType(MaterialSystem.getPartType("item"))
    .setHasOverlay(true)
.build();



function zhenjiaddMaterial(name as string , Color as string , Part as string[]) {
    MaterialSystem.getMaterialBuilder().setName(name).setColor(Color).build().registerParts(Part);
}

//针剂
val Part4 as string[]=["zhenji"];
zhenjiaddMaterial("Empty", 0xFFFAFA, Part4);
zhenjiaddMaterial("Health", 0x00FFFF, Part4);
zhenjiaddMaterial("Qbdragon", 0x7B68EE, Part4);
zhenjiaddMaterial("Yidaosuu", 0xFF4500, Part4);