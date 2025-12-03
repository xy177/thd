

#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;



//匠魂工具
var vetheaDisabled as IItemStack[] = [
            <item:tconstruct:bolt:*>,
            <item:tconstruct:broadsword:*>,
            <item:tconstruct:longsword:*>,
            <item:tconstruct:rapier:*>,
            <item:tconstruct:frypan:*>,
            <item:tconstruct:battlesign:*>,
            <item:tconstruct:cleaver:*>,
            <item:tconstruct:shortbow:*>,
            <item:tconstruct:longbow:*>,
            <item:tconstruct:crossbow:*>,
            <item:tconstruct:arrow:*>,
            <item:tconstruct:shuriken:*>,
            <item:tconstruct:hammer:*>,
            <item:tconstruct:excavator:*>,
            <item:tconstruct:lumberaxe:*>,
            <item:tconstruct:scythe:*>,
            <item:tconstruct:pickaxe:*>,
            <item:tconstruct:shovel:*>,
            <item:tconstruct:hatchet:*>,
            <item:tconstruct:mattock:*>,
            <item:tconstruct:kama:*>,
            <item:conarm:boots>,
            <item:conarm:leggings>,
            <item:conarm:chestplate>,
            <item:conarm:helmet>,     
            <item:plustic:laser_gun:*>,
            <item:plustic:katana:*>,
            <item:totaltinkers:battleaxe:*>,
            <item:totaltinkers:cutlass:*>,
            <item:totaltinkers:javelin:*>,
            <item:totaltinkers:dagger:*>,
            <item:totaltinkers:greatblade:*>,
            <item:totaltinkers:scimitar:*>,
            <item:totaltinkers:explosive_bow:*>,
            <item:totaltinkers:explosive_arrow:*>,
            <item:tinkersarsenal:boomstick:*>,
            <item:tinkersarsenal:boomstick_shot:*>,
            <item:tinkersarsenal:toolshears:*>,
            <item:tconevo:tool_sceptre:*>,
            <item:tinkers_reforged:gladius:*>,
            <item:tinkers_reforged:lightsword:*>,
            <item:tinkers_reforged:club:*>,
            <item:tinkers_reforged:greatsword:*>,
            <item:tinkers_reforged:khopesh:*>,
            <item:tinkersaether:dart_shooter:*>,
            <item:tinkersaether:dart:*>,
            <item:tcomplement:chisel:*>,
            <item:yoyos:yoyo:*>,
            <item:hydrogenation_tinker:energy_stick:*>
        
];
for item in vetheaDisabled {
    <ore:toolTiC>.add(item);
}

//秘银
/*var mither as IItemStack[] = [
    <additions:mekaddon-mithrillium00>
        
];
for item in mither {
    <ore:ingredientsMithrillium>.add(item);
}*/
