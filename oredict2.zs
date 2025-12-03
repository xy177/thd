

#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;


//口腹
var abundant as IItemStack[] = [
    <additions:fxt-food_08>,
<additions:fxt-food_07>,
<additions:fxt-what_you_see>,
<additions:fxt-nmp_tree>,
<additions:fxt-astsxbg>,
<avaritia:cosmic_meatballs>,
<avaritia:ultimate_stew>,
<harvestcraft:gourmetmuttonburgeritem>,
<harvestcraft:weekendpicnicitem>,
<harvestcraft:friedfeastitem>,
<harvestcraft:gourmetporkburgeritem>,
<harvestcraft:southernstylebreakfastitem>,
<harvestcraft:meatfeastpizzaitem>,
<harvestcraft:thankfuldinneritem>,
<harvestcraft:koreandinneritem>,
<harvestcraft:gourmetvenisonburgeritem>,
<harvestcraft:cornedbeefbreakfastitem>,
<harvestcraft:bentoboxitem>,
<sakura:hydra_ramen>,
<sakura:foodset:150>,
<sakura:bento:3>,
<sakura:bento:2>,
<sakura:bento:1>,
<sakura:bento>,
<additions:fxt-food_09> ,
<additions:fxt-food_06> ,
<additions:fxt-food_05>,
<additions:fxt-food_04>,
<additions:fxt-food_03>,
<additions:fxt-food_02>,
<additions:fxt-foods_01>,
<additions:fxt-tymg_yx0000>,
<forestry:ambrosia>,
<additions:fxt-food_10>,
<additions:delight-tz_meet>,
<additions:fxt-xianchong>
        
];
for item in abundant {
    <ore:AbundantFood>.add(item);
}
//精力
var energyfood as IItemStack[] = [
      <teastory:green_tea:5>,
<teastory:green_tea:4>,
<teastory:green_tea:3>,
<teastory:green_tea:2>,
<teastory:green_tea>,
<coffeework:tea_ice_drinks:2>,
<coffeework:tea_ice_drinks:1>,
<coffeework:tea_ice_drinks>,
<additions:fxt-food_06>,
<teastory:yellow_tea:3>,
<teastory:yellow_tea:2>,
<teastory:yellow_tea>,
<teastory:lemon_tea:5>,
<teastory:lemon_tea:4>,
<teastory:lemon_tea:3>,
<teastory:lemon_tea:2>,
<teastory:lemon_tea>,
<teastory:milk_tea:5>,
<teastory:milk_tea:4>,
<teastory:milk_tea:3>,
<teastory:milk_tea:2>,
<teastory:matcha_drink:3>,
<teastory:matcha_drink:4>,
<teastory:matcha_drink:4>,
<teastory:matcha_drink:5>,
<teastory:matcha_drink:5>,
<teastory:black_tea>,
<teastory:black_tea>,
<teastory:black_tea:2>,
<teastory:black_tea:3>,
<teastory:black_tea:4>,
<teastory:black_tea:5>,
<teastory:milk_tea>,
<teastory:matcha_drink:3>,
<teastory:matcha_drink:2>,
<teastory:matcha_drink>,
<sakura:tea:6>,
<sakura:tea:5>,
<sakura:tea:4>,
<sakura:tea:2>,
<sakura:tea:1>,
<sakura:tea>,
<teastory:white_tea>,
<teastory:yellow_tea:5>,
<teastory:yellow_tea:4>,
<teastory:puer_tea:3>,
<teastory:puer_tea:4>,
<teastory:puer_tea:5>,
<teastory:white_tea:4>,
<teastory:white_tea:5>,
<sakura:tea:10>,
<sakura:tea:11>,
<sakura:tea:12>,
<teastory:white_tea:2>,
<teastory:white_tea:3>,
<teastory:puer_tea:2>,
<teastory:puer_tea>,
<teastory:oolong_tea:4>,
<teastory:oolong_tea:5>,
<teastory:oolong_tea:3>,
<teastory:oolong_tea:2>,
<teastory:oolong_tea>,
<sakura:tea:9>,
<sakura:tea:8>,
<sakura:tea:7>,
<teastory:matcha_drink>,
<teastory:green_tea:5>,
<teastory:green_tea:4>,
<teastory:green_tea:2>,
<teastory:green_tea>,
<coffeework:tea_ice_drinks:2>,
<coffeework:tea_ice_drinks:1>,
<coffeework:tea_ice_drinks>,
<additions:fxt-food_06>,
<teastory:white_tea:3>,
<teastory:white_tea:2>,
<teastory:white_tea>,
<teastory:yellow_tea:5>,
<teastory:yellow_tea:4>,
<teastory:yellow_tea:3>,
<teastory:yellow_tea:2>,
<teastory:yellow_tea>,
<teastory:lemon_tea:5>,
<teastory:lemon_tea:4>,
<teastory:lemon_tea:3>,
<teastory:lemon_tea:2>,
<teastory:matcha_drink:5>,
<teastory:black_tea>,
<teastory:black_tea:2>,
<teastory:black_tea:3>,
<teastory:black_tea:4>,
<teastory:black_tea:5>,
<teastory:milk_tea>,
<teastory:milk_tea:2>,
<teastory:milk_tea:3>,
<teastory:milk_tea:4>,
<teastory:milk_tea:5>,
<teastory:lemon_tea>,
<teastory:matcha_drink:4>,
<teastory:matcha_drink:3>,
<teastory:matcha_drink:2>,
<teastory:puer_tea:2>,
<teastory:puer_tea>,
<teastory:oolong_tea:5>,
<teastory:oolong_tea:4>,
<teastory:oolong_tea:3>,
<teastory:oolong_tea:2>,
<teastory:oolong_tea>,
<teastory:white_tea:5>,
<teastory:white_tea:4>,
<sakura:tea>,
<sakura:tea:1>,
<sakura:tea:2>,
<sakura:tea:4>,
<sakura:tea:5>,
<sakura:tea:6>,
<sakura:tea:7>,
<sakura:tea:8>,
<sakura:tea:9>,
<sakura:tea:10>,
<sakura:tea:11>,
<sakura:tea:12>,
<teastory:puer_tea:5>,
<teastory:puer_tea:4>,
<teastory:puer_tea:3>,
<coffeework:coffee_latte:6>,
<coffeework:coffee_latte:5>,
<coffeework:coffee_latte:4>,
<coffeework:coffee_latte:3>,
<coffeework:coffee_latte:2>,
<coffeework:coffee_latte:1>,
<coffeework:coffee_latte>,
<coffeework:coffee_americano:1>,
<coffeework:coffee_americano>,
<coffeework:coffee_coldbrew_ice>,
<coffeework:coffee_latte_ice>,
<coffeework:coffee_latte_ice:1>,
<coffeework:coffee_latte_ice:2>,
<coffeework:coffee_latte_ice:3>,
<coffeework:coffee_latte_ice:4>,
<coffeework:coffee_latte_ice:5>,
<coffeework:coffee_latte_ice:6>,
<coffeework:coffee_latte_ice:7>,
<coffeework:coffee_latte_ice:8>,
<coffeework:coffee_americano_ice:3>,
<coffeework:coffee_americano_ice:2>,
<coffeework:coffee_coldbrew:1>,
<coffeework:coffee_coldbrew:2>,
<coffeework:coffee_coldbrew:3>,
<coffeework:coffee_coldbrew:4>,
<coffeework:coffee_coldbrew:5>,
<coffeework:coffee_coldbrew:6>,
<coffeework:coffee_coldbrew:7>,
<coffeework:coffee_other>,
<coffeework:coffee_other:1>,
<coffeework:coffee_other:2>,
<coffeework:coffee_americano_ice>,
<coffeework:coffee_americano_ice:1>,
<coffeework:coffee_coldbrew>,
<coffeework:coffee_latte:8>,
<coffeework:coffee_latte:7>,
<coffeework:coffee_other_ice:1>,
<coffeework:coffee_other_ice>,
<coffeework:coffee_coldbrew_ice:7>,
<coffeework:coffee_coldbrew_ice:6>,
<coffeework:coffee_coldbrew_ice:5>,
<coffeework:coffee_coldbrew_ice:4>,
<coffeework:coffee_coldbrew_ice:3>,
<coffeework:coffee_coldbrew_ice:2>,
<coffeework:coffee_coldbrew_ice:1>,
<coffeework:coffee_other_ice:2>,
<additions:fxt-xianchong>




];
for item in energyfood {
    <ore:EnergyFood>.add(item);
}
//可副手攻击
var dualholding as IItemStack[] = [
       <tconstruct:broadsword>,
       <tconstruct:hatchet>,
       <tinkers_reforged:lightsword>,
       <tinkers_reforged:khopesh>,
       <totaltinkers:dagger>,
       <tinkers_reforged:gladius>
];
for item in dualholding {
    <ore:DualHolding>.add(item);
}

//可横扫攻击
var cansweep as IItemStack[] = [
       <tconstruct:broadsword>,
       <tinkers_reforged:khopesh>,
       <tinkers_reforged:greatsword>,
       <tconstruct:longsword>,
       <tinkers_reforged:gladius>
];
for item in cansweep {
    <ore:CanSweep>.add(item);
}

//巨型武器
var begweapon as IItemStack[] = [
       <tconstruct:hammer>,
       <tconstruct:lumberaxe>,
       <tconstruct:cleaver>,
       <tinkers_reforged:greatsword>,
       <tinkers_reforged:club>,
       <totaltinkers:battleaxe>,
       <totaltinkers:greatblade>
];
for item in begweapon {
    <ore:Bigweapon>.add(item);
}

//可格挡
var cansheld as IItemStack[] = [
       <tconstruct:broadsword>,
       <totaltinkers:cutlass>,
       <tconstruct:lumberaxe>,
       <tinkers_reforged:club>,
       <tinkers_reforged:greatsword>,
       <totaltinkers:scimitar>
];
for item in cansheld {
    <ore:CanSheld>.add(item);
}

//右键可远程
var rightattacktic as IItemStack[] = [
<tconstruct:longbow>,
<tconstruct:shortbow>,
<tinkersaether:dart_shooter>,
<tinkersarsenal:boomstick>,
<plustic:laser_gun>,
<tconevo:tool_sceptre>,
<tconstruct:shuriken>

];
for item in rightattacktic {
    <ore:RightAttackTic>.add(item);
}

//rb1
var rb1 as IItemStack[] = [
<extrautils2:decorativesolid:8>

];
for item in rb1 {
    <ore:Ranbow1>.add(item);
}

//rb5
var rb5 as IItemStack[] = [
<additions:fxt-ranbow_bottol>

];
for item in rb5 {
    <ore:Ranbow5>.add(item);
}

//蛋白质
var cookmeat as IItemStack[] = [
    
<additions:delight-barbecue_stick>,
<additions:delight-egg_sandwich>,
<additions:delight-fried_egg>,
<additions:delight-tz_meet>,
<additions:fxt-xianchong>
        
];
for item in cookmeat {
    <ore:cookMeat>.add(item);
}

//维生素
var cookfruit as IItemStack[] = [
    
<additions:delight-barbecue_stick>,
<additions:delight-mixed_salad>,
<additions:fxt-sky_jiangguo>,
<additions:fxt-enderdragonfruit>
        
];
for item in cookfruit {
    <ore:cookFruit>.add(item);
}

//碳水
var cookcandy as IItemStack[] = [
    
<additions:delight-egg_sandwich>
        
];
for item in cookcandy {
    <ore:cookCandy>.add(item);
}
//养蜂
var beeshop as IItemStack[] = [
<magicbees:frames.metabolic>,
<forestry:frame_proven>,
<magicbees:frames.necrotic>/* ,
<forestry:bee_princess_ge>.withTag({MaxH: 50, Mate: {Chromosomes: [{UID1: "forestry.speciesMonastic", UID0: "forestry.speciesMonastic", Slot: 0 as byte}, {UID1: "forestry.speedSlower", UID0: "forestry.speedSlower", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth1", UID0: "forestry.toleranceBoth1", Slot: 4 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth1", UID0: "forestry.toleranceBoth1", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "forestry.flowersWheat", UID0: "forestry.flowersWheat", Slot: 9 as byte}, {UID1: "forestry.floweringFaster", UID0: "forestry.floweringFaster", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}, Health: 50, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.speciesMonastic", UID0: "forestry.speciesMonastic", Slot: 0 as byte}, {UID1: "forestry.speedSlower", UID0: "forestry.speedSlower", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth1", UID0: "forestry.toleranceBoth1", Slot: 4 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth1", UID0: "forestry.toleranceBoth1", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "forestry.flowersWheat", UID0: "forestry.flowersWheat", Slot: 9 as byte}, {UID1: "forestry.floweringFaster", UID0: "forestry.floweringFaster", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}}),
<forestry:bee_princess_ge>.withTag({MaxH: 50, Mate: {Chromosomes: [{UID1: "forestry.speciesValiant", UID0: "forestry.speciesValiant", Slot: 0 as byte}, {UID1: "forestry.speedSlow", UID0: "forestry.speedSlow", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}, Health: 50, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.speciesValiant", UID0: "forestry.speciesValiant", Slot: 0 as byte}, {UID1: "forestry.speedSlow", UID0: "forestry.speedSlow", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}})
*/];
for item in beeshop {
    <ore:Beeshop>.add(item);
}
/* 
//养蜂
var beeshop2 as IItemStack[] = [
<forestry:bee_combs:5>,
<forestry:bee_combs>];
for item in beeshop2 {
    <ore:Beeshop2>.add(item);
}
//林业
var treeshop as IItemStack[] = [
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeCherry", UID0: "forestry.treeCherry", Slot: 0 as byte}, {UID1: "forestry.heightSmaller", UID0: "forestry.heightSmaller", Slot: 1 as byte}, {UID1: "forestry.saplingsLow", UID0: "forestry.saplingsLow", Slot: 2 as byte}, {UID1: "forestry.fruitCherry", UID0: "forestry.fruitCherry", Slot: 3 as byte}, {UID1: "forestry.yieldAverage", UID0: "forestry.yieldAverage", Slot: 4 as byte}, {UID1: "forestry.sappinessLow", UID0: "forestry.sappinessLow", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationAverage", UID0: "forestry.maturationAverage", Slot: 7 as byte}, {UID1: "forestry.i1d", UID0: "forestry.i1d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}),
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeLime", UID0: "forestry.treeLime", Slot: 0 as byte}, {UID1: "forestry.heightSmall", UID0: "forestry.heightSmall", Slot: 1 as byte}, {UID1: "forestry.saplingsLow", UID0: "forestry.saplingsLow", Slot: 2 as byte}, {UID1: "forestry.fruitNone", UID0: "forestry.fruitNone", Slot: 3 as byte}, {UID1: "forestry.yieldLower", UID0: "forestry.yieldLower", Slot: 4 as byte}, {UID1: "forestry.sappinessLower", UID0: "forestry.sappinessLower", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationAverage", UID0: "forestry.maturationAverage", Slot: 7 as byte}, {UID1: "forestry.i1d", UID0: "forestry.i1d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}),
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeIpe", UID0: "forestry.treeIpe", Slot: 0 as byte}, {UID1: "forestry.heightLarge", UID0: "forestry.heightLarge", Slot: 1 as byte}, {UID1: "forestry.saplingsLower", UID0: "forestry.saplingsLower", Slot: 2 as byte}, {UID1: "forestry.fruitNone", UID0: "forestry.fruitNone", Slot: 3 as byte}, {UID1: "forestry.yieldLowest", UID0: "forestry.yieldLowest", Slot: 4 as byte}, {UID1: "forestry.sappinessLower", UID0: "forestry.sappinessLower", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationAverage", UID0: "forestry.maturationAverage", Slot: 7 as byte}, {UID1: "forestry.i2d", UID0: "forestry.i2d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}),
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeWillow", UID0: "forestry.treeWillow", Slot: 0 as byte}, {UID1: "forestry.heightAverage", UID0: "forestry.heightAverage", Slot: 1 as byte}, {UID1: "forestry.saplingsLower", UID0: "forestry.saplingsLower", Slot: 2 as byte}, {UID1: "forestry.fruitNone", UID0: "forestry.fruitNone", Slot: 3 as byte}, {UID1: "forestry.yieldLowest", UID0: "forestry.yieldLowest", Slot: 4 as byte}, {UID1: "forestry.sappinessLow", UID0: "forestry.sappinessLow", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationFaster", UID0: "forestry.maturationFaster", Slot: 7 as byte}, {UID1: "forestry.i1d", UID0: "forestry.i1d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}),
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeMahogony", UID0: "forestry.treeMahogony", Slot: 0 as byte}, {UID1: "forestry.heightLarge", UID0: "forestry.heightLarge", Slot: 1 as byte}, {UID1: "forestry.saplingsLower", UID0: "forestry.saplingsLower", Slot: 2 as byte}, {UID1: "forestry.fruitNone", UID0: "forestry.fruitNone", Slot: 3 as byte}, {UID1: "forestry.yieldLowest", UID0: "forestry.yieldLowest", Slot: 4 as byte}, {UID1: "forestry.sappinessLow", UID0: "forestry.sappinessLow", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationSlow", UID0: "forestry.maturationSlow", Slot: 7 as byte}, {UID1: "forestry.i2d", UID0: "forestry.i2d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}}),
<forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeChestnut", UID0: "forestry.treeChestnut", Slot: 0 as byte}, {UID1: "forestry.heightLarge", UID0: "forestry.heightLarge", Slot: 1 as byte}, {UID1: "forestry.saplingsLower", UID0: "forestry.saplingsLower", Slot: 2 as byte}, {UID1: "forestry.fruitChestnut", UID0: "forestry.fruitChestnut", Slot: 3 as byte}, {UID1: "forestry.yieldAverage", UID0: "forestry.yieldAverage", Slot: 4 as byte}, {UID1: "forestry.sappinessLower", UID0: "forestry.sappinessLower", Slot: 5 as byte}, {UID1: "forestry.leavesNone", UID0: "forestry.leavesNone", Slot: 6 as byte}, {UID1: "forestry.maturationAverage", UID0: "forestry.maturationAverage", Slot: 7 as byte}, {UID1: "forestry.i2d", UID0: "forestry.i2d", Slot: 8 as byte}, {UID1: "forestry.fireproofFalse", UID0: "forestry.fireproofFalse", Slot: 9 as byte}]}})
];
for item in treeshop {
    <ore:Treeshop>.add(item);
}
//
var foodshop as IItemStack[] = [
<harvestcraft:thankfuldinneritem>,
<additions:delight-barbecue_stick>,
<additions:delight-egg_sandwich>,
<additions:delight-mixed_salad>,
<harvestcraft:ploughmanslunchitem>,
<harvestcraft:gourmetmuttonburgeritem>,
<harvestcraft:weekendpicnicitem>,
<harvestcraft:bbqplatteritem>,
<harvestcraft:meatfeastpizzaitem>,
<harvestcraft:footlongitem>,
<harvestcraft:friedchickenitem>,
<harvestcraft:coleslawburgeritem>
];
for item in foodshop {
    <ore:Foodshop>.add(item);
}
//
var modonshop as IItemStack[] = [
<thermalfoundation:upgrade:34>,
<thermalfoundation:upgrade:33>,
<mekanism:tierinstaller:1>,
<mekanism:tierinstaller>,
<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}),
<text:allfromthis>,
<bloodmagic:soul_gem>.withTag({souls: 64.0}),
<botanianeedsit:mana_capacitor_manasteel>,
<botania:manatablet>.withTag({mana: 50000}),
<thermalfoundation:upgrade:35>,
<mekanism:tierinstaller:2>,
<thaumcraft:curio:7>,
<extrautils2:ingredients:15>,
<extrautils2:ingredients:6>
];
for item in modonshop {
    <ore:Modonshop>.add(item);
}
//
var fishshop as IItemStack[] = [
<beto:motherfish_3>,
<beto:motherfish_2>,
<beto:motherfish_1>,
<beto:motherfish_4>,
<beto:motherfish_5>,
<beto:motherfish_6>
];
for item in fishshop {
    <ore:Fishshop>.add(item);
}
//
var worldshopex as IItemStack[] = [
<mod_lavacow:kings_crown>,
<deeperdepths:trial_key:1>,
<oe:heart_of_the_sea>,
<deeperdepths:heavy_core>,
<enigmaticlegacy:earth_heart>,
<enigmaticlegacy:golem_heart>,
<enigmaticlegacy:ocean_stone>,
<enigmaticlegacy:angel_blessing>,
<enigmaticlegacy:magma_heart>,
<iceandfire:cockatrice_eye>,
<iceandfire:siren_tear>,
<iceandfire:pixie_wings>,
<iceandfire:hippogryph_talon>
];
for item in worldshopex {
    <ore:WorldshopEx>.add(item);
}
//
var worldshop as IItemStack[] = [
<deeperdepths:ominous_bottle:4>,
<deeperdepths:trial_key>,
<enigmaticlegacy:astral_dust>,
<raids:ominous_bottle:4>,
<futuremc:ancient_debris>
];
for item in worldshop {
    <ore:Worldshop>.add(item);
}
*/
//
var worldshop2in as IItemStack[] = [
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_ice>
];
for item in worldshop2in {
    <ore:Worldshop2in>.add(item);
}

//
var worldshop2out as IItemStack[] = [
<iceandfire:dragonegg_red>,
<iceandfire:dragonegg_blue>,
<iceandfire:dragonegg_amethyst>
];
for item in worldshop2out {
    <ore:Worldshop2out>.add(item);
}
//
var worldshop3 as IItemStack[] = [
<mowziesmobs:wrought_helmet>,
<mowziesmobs:barako_mask>,
<mowziesmobs:ice_crystal>
];
for item in worldshop3 {
    <ore:Worldshop3>.add(item);
}


var bullet as IItemStack[] = [
   <tconstruct:arrow:*>,
     <totaltinkers:explosive_arrow:*>,
      <totaltinkers:javelin:*>,  
      <tconstruct:bolt:*>,
      <tinkersarsenal:boomstick_shot:*>,
      <tinkersaether:dart:*>
];
for item in bullet {
    <ore:Ticbullet>.add(item);
    
}