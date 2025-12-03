#reloadable

import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IWorld;

//创建jei界面
var worldsalt as IJeiPanel = JEI.createJei("worldsalt", "世界盐转化");
//很明显uid不能重复(也不能与现有的重复)
worldsalt.setModid("thaumcraft");
worldsalt.setIcon(<thaumcraft:salis_mundus>);
//设置显示的模组id
worldsalt.setBackground(IJeiUtils.createBackground(150, 50));
//设置一个界面的大小
worldsalt.addRecipeCatalyst(<thaumcraft:salis_mundus>);
worldsalt.addRecipeCatalyst(<thaumicwands:item_wand>);
//jei界面左边的显示
//比如对着熔炉按u会跳转到熔炉烧炼的界面
//对上面添加的物品按u也会跳转到这个界面
worldsalt.addSlot(IJeiUtils.createItemSlot("input",40, 18, true,false));
worldsalt.addSlot(IJeiUtils.createItemSlot("output",95, 18, false,false));
worldsalt.addSlot(IJeiUtils.createItemSlot("salt",65, 5, true,false));

worldsalt.addElement(mods.randomtweaker.jei.IJeiUtils.createArrowElement(65, 18, 0));
//增加物品格子(当然也可以增加流体)
worldsalt.addElement(IJeiUtils.createFontInfoElement("解锁对应研究后(若有)使用世界盐右键方块", 0, 40,  0x000000));
//增加描述
worldsalt.register();
//注册

//注册
function addsalt(imputblock as IBlock , inputitem as IItemStack , output as IItemStack , research as string = null ) {

mods.thaumcraft.SalisMundus.addSingleConversion(imputblock, output,research);

    var worldsalt_recipe as IJeiRecipe = JEI.createJeiRecipe("worldsalt");
worldsalt_recipe.addInput(inputitem);
worldsalt_recipe.addInput(<thaumcraft:salis_mundus>);
worldsalt_recipe.addOutput(output);
worldsalt_recipe.build();
}

function addsaltjei(inputitem as IItemStack , output as IItemStack ) {

    var worldsalt_recipe as IJeiRecipe = JEI.createJeiRecipe("worldsalt");
worldsalt_recipe.addInput(inputitem);
worldsalt_recipe.addInput(<thaumcraft:salis_mundus>);
worldsalt_recipe.addOutput(output);
worldsalt_recipe.build();
}

addsalt(<blockstate:extrautils2:user>.block , <extrautils2:user>, <gadothaumy:infusion_claw>,"INFUSION_CLAW");
addsaltjei(<minecraft:bookshelf>, <thaumcraft:thaumonomicon>);
addsaltjei(<minecraft:cauldron>, <thaumcraft:crucible>);
addsaltjei(<minecraft:crafting_table>, <thaumcraft:arcane_workbench>);
addsalt(<blockstate:botania:opencrate:1>.block , <botania:opencrate:1>, <thaumtweaks:crafter>,"FIRSTSTEPS");
addsalt(<blockstate:minecraft:stone>.block , <minecraft:stone>, <botania:livingrock>,"FIRSTSTEPS");
addsalt(<blockstate:minecraft:log>.block , <minecraft:log>,<botania:livingwood>,"FIRSTSTEPS");
addsalt(<blockstate:minecraft:iron_ore>.block , <minecraft:iron_ore>,<astralsorcery:blockcustomore:1>,"FIRSTSTEPS");
addsalt(<blockstate:minecraft:pumpkin>.block , <minecraft:pumpkin>,<minecraft:cake>,"FIRSTSTEPS");
addsalt(<blockstate:thaumcraft:arcane_workbench>.block , <thaumcraft:arcane_workbench>,<astralsorcery:blockaltar>,"FIRSTSTEPS");
addsalt(<blockstate:tconstruct:slime>.block , <tconstruct:slime:3>,<additions:delight-nomed_will>,"FIRSTSTEPS");
addsalt(<blockstate:biomesoplenty:flesh>.block, <biomesoplenty:flesh>,<additions:delight-nomed_will>,"FIRSTSTEPS");
addsalt(<blockstate:bloodarsenal:blood_infused_wooden_log>.block, <bloodarsenal:blood_infused_wooden_log>,<twilightforest:charm_of_life_1>,"FIRSTSTEPS");