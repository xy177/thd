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
import crafttweaker.event.PlayerInteractBlockEvent;

//创建jei界面
var deploying as IJeiPanel = JEI.createJei("deploying", "使用物品转化");
//很明显uid不能重复(也不能与现有的重复)
deploying.setModid("minecraft");
deploying.setIcon(<additions:fxt-whatitis>);
//设置显示的模组id
deploying.setBackground(IJeiUtils.createBackground(150, 50));
//设置一个界面的大小
deploying.addRecipeCatalyst(<additions:fxt-whatitis>);
//jei界面左边的显示
//比如对着熔炉按u会跳转到熔炉烧炼的界面
//对上面添加的物品按u也会跳转到这个界面
deploying.addSlot(IJeiUtils.createItemSlot("input",40, 18, true,false));
deploying.addSlot(IJeiUtils.createItemSlot("output",95, 18, false,false));
deploying.addSlot(IJeiUtils.createItemSlot("item",65, 5, true,false));

deploying.addElement(mods.randomtweaker.jei.IJeiUtils.createArrowElement(65, 18, 0));
//增加物品格子(当然也可以增加流体)
deploying.addElement(IJeiUtils.createFontInfoElement("使用物品右键方块", 0, 40,  0x000000));
//增加描述
deploying.register();
//注册


function Deploying(inputItem as IItemStack, inputBlock as IBlock,inputBlock_meta as int, blockitem as IItemStack ,outputItem as IItemStack, itemExpend as bool){

     var deploying_recipe as IJeiRecipe = JEI.createJeiRecipe("deploying");
deploying_recipe.addInput(blockitem);
deploying_recipe.addInput(inputItem);
deploying_recipe.addOutput(outputItem);
deploying_recipe.build();


    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
        var Deploying_block = event.block;
        var Deploying_item = event.item;
        var Deploying_position = event.position;
        var world = event.world;
        var player = event.player;
        if(!world.remote) {
        if(inputItem.matches(Deploying_item)){
            if(!isNull(Deploying_block) && Deploying_block.definition.id == inputBlock.definition.id && Deploying_block.meta == inputBlock_meta){
                world.destroyBlock(Deploying_position, false);
                //world.spawnEntity(outputItem.createEntityItem(world,Deploying_position));
        player.give(outputItem);
                if(itemExpend != false){
                    if(Deploying_item.amount >= 1){
                    Deploying_item.mutable().withAmount(Deploying_item.amount - 1);
                }}   
            }
        }
    }});


}

var deployingnoi as IJeiPanel = JEI.createJei("deployingnoi", "使用物品转化");
//很明显uid不能重复(也不能与现有的重复)
deployingnoi.setModid("minecraft");
deployingnoi.setIcon(<additions:fxt-whatitis>);
//设置显示的模组id
deployingnoi.setBackground(IJeiUtils.createBackground(150, 50));
//设置一个界面的大小
deployingnoi.addRecipeCatalyst(<additions:fxt-whatitis>);
//jei界面左边的显示
//比如对着熔炉按u会跳转到熔炉烧炼的界面
//对上面添加的物品按u也会跳转到这个界面
deployingnoi.addSlot(IJeiUtils.createItemSlot("input",40, 18, true,false));
deployingnoi.addSlot(IJeiUtils.createItemSlot("output",95, 18, false,false));
deployingnoi.addSlot(IJeiUtils.createItemSlot("item",65, 5, true,false));

deployingnoi.addElement(mods.randomtweaker.jei.IJeiUtils.createArrowElement(65, 18, 0));
//增加物品格子(当然也可以增加流体)
deployingnoi.addElement(IJeiUtils.createFontInfoElement("使用物品右键方块，物品不消耗", 0, 40,  0x000000));
//增加描述
deployingnoi.register();
//注册


function Deployingnoi(inputItem as IItemStack, inputBlock as IBlock,inputBlock_meta as int, blockitem as IItemStack ,outputItem as IItemStack, itemExpend as bool){

     var deployingnoi_recipe as IJeiRecipe = JEI.createJeiRecipe("deployingnoi");
deployingnoi_recipe.addInput(blockitem);
deployingnoi_recipe.addInput(inputItem);
deployingnoi_recipe.addOutput(outputItem);
deployingnoi_recipe.build();


    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
        var Deploying_block = event.block;
        var Deploying_item = event.item;
        var Deploying_position = event.position;
        var world = event.world;
        var player = event.player;
        if(!world.remote) {
        if(inputItem.matches(Deploying_item)){
            if(!isNull(Deploying_block) && Deploying_block.definition.id == inputBlock.definition.id && Deploying_block.meta == inputBlock_meta){
                world.destroyBlock(Deploying_position, false);
                //world.spawnEntity(outputItem.createEntityItem(world,Deploying_position));
        player.give(outputItem);
                if(itemExpend != false){
                    if(Deploying_item.amount >= 1){
                    Deploying_item.mutable().withAmount(Deploying_item.amount - 1);
                }}   
            }
        }
    }});


}
Deploying(<suikerawore:raw_osmium>,<blockstate:minecraft:redstone_block>.block,0,<minecraft:redstone_block>,<mekanism:controlcircuit>,true);
Deploying(<minecraft:iron_ingot>,<blockstate:minecraft:stone>.block,1,<minecraft:stone:1>,<additions:fxt-hgingot>,true);
Deploying(<minecraft:iron_ingot>,<blockstate:minecraft:stone>.block,3,<minecraft:stone:3>,<additions:fxt-scingot>,true);
Deploying(<minecraft:redstone>,<blockstate:twilightforest:root>.block,0,<twilightforest:root>,<botania:manaresource:6>,true);
Deploying(<minecraft:dye:15>,<blockstate:twilightforest:root>.block,0,<twilightforest:root>,<twilightforest:root:1>,true);
Deploying(<astralsorcery:itemrockcrystalsimple>,<blockstate:thaumcraft:log_greatwood>.block,0,<thaumcraft:log_greatwood>,<astralsorcery:itemlinkingtool>,true);
Deploying(<astralsorcery:itemrockcrystalsimple>,<blockstate:botania:livingwood>.block,0,<botania:livingwood>,<astralsorcery:itemlinkingtool>,true);
Deployingnoi(<twilightforest:cube_talisman>,<blockstate:minecraft:concrete>.block,7,<minecraft:concrete:7>,<twilightforest:castle_brick:3>,false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:flower>.block,1,<botania:flower:1>,<botania:specialflower>.withTag({type: "sunbless"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:flower>.block,10,<botania:flower:10>,<botania:specialflower>.withTag({type: "moonbless"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:flower>.block,0,<botania:flower>,<botania:specialflower>.withTag({type: "puredaisy"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:flower>.block,14,<botania:flower:14>,<botania:specialflower>.withTag({type: "endoflame"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:flower>.block,3,<botania:flower:3>,<botania:specialflower>.withTag({type: "hydroangeas"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:doubleflower1>.block,1,<botania:doubleflower1:1>,<botania:specialflower>.withTag({type: "sunbless"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:doubleflower2>.block,2,<botania:doubleflower2:2>,<botania:specialflower>.withTag({type: "moonbless"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:doubleflower1>.block,0,<botania:doubleflower1>,<botania:specialflower>.withTag({type: "puredaisy"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:doubleflower2>.block,6,<botania:doubleflower2:6>,<botania:specialflower>.withTag({type: "endoflame"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:botania:doubleflower1>.block,3,<botania:doubleflower1:3>,<botania:specialflower>.withTag({type: "hydroangeas"}),false);
Deployingnoi(<botania:twigwand>,<blockstate:minecraft:sand>.block,0,<minecraft:sand>,<suikecherry:suspicious_sand>,false);
Deployingnoi(<botania:twigwand>,<blockstate:minecraft:gravel>.block,0,<minecraft:gravel>,<suikecherry:suspicious_gravel>,false);
Deployingnoi(<botania:twigwand>,<blockstate:biomesoplenty:flesh>.block,0,<biomesoplenty:flesh>,<additions:delight-nomed_will>,false);
Deployingnoi(<botania:twigwand>,<blockstate:tconstruct:slime>.block,3,<tconstruct:slime:3>,<additions:delight-nomed_will>,false);
Deployingnoi(<tconstruct:pickaxe>,<blockstate:twilightforest:force_field>.block,0,<twilightforest:force_field>,<twilightforest:force_field>,false);
Deploying(<astralsorcery:itemcraftingcomponent:2>,<blockstate:extendedcrafting:storage>.block,2,<extendedcrafting:storage:2>,<enigmaticlegacy:astral_dust>,true);
//Deploying(<botanicadds:rune_energy>,<blockstate:botania:enchantedsoil>.block,0,<botania:enchantedsoil>,<renaissance_core:energy_dirt>,true);


