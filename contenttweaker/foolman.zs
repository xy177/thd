
#loader contenttweaker

#modloaded tconstruct
#modloaded conarm

#priority 99

import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;
import mods.ctutils.utils.Math;
import crafttweaker.player.IFoodStats;
import crafttweaker.event.EntityLivingHurtEvent;
import mods.BXLib;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.util.IRandom;
import crafttweaker.event.IEventPositionable;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IFacing;
import crafttweaker.entity.IEntityDrop;
import crafttweaker.entity.IEntityDefinition;
import mods.contenttweaker.Color;


val aacbd = TraitBuilder.create("aacbd");
aacbd.color = 0xffaadd;
aacbd.localizedName = "日口水忄";
aacbd.localizedDescription = "不归纳咋证明！§r\n§f这件装备会该咋损坏咋损坏";
aacbd.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        return newDamage;
        //词条注册名是我刚才做的题的单选答案
        //以及这种愚人节词条就别指望着我写点实际效果了
};
aacbd.register();

val cbada = TraitBuilder.create("cbada");
cbada.color = 0xffaadd;
cbada.localizedName = "不知不能";
cbada.localizedDescription = "往前靠靠！§r\n§f这件器械谁的旨意也没忤逆！\n当敌人的生命值小于0并完全死亡后，这件武器的伤害会极大幅度提升\n当你攻击了一个敌人时，那么这个敌人就被你攻击了";
cbada.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        return newDamage;
        //词条注册名是我刚才做的题的单选答案
        //以及这种愚人节词条就别指望着我写点实际效果了
};
cbada.register();

val dbcad = ArmorTraitBuilder.create("dbcad");
dbcad.color = 0xffaadd;
dbcad.localizedName = "儿人白工";
dbcad.localizedDescription = "狡兔三窟！但是水泥地你挖不动！§r\n§f这个属性不会帮你消减任何伤害\n当你的生命值降低时，那么你的生命值下降了\n当你被怪物攻击时，那就证明怪物把你攻击了";
dbcad.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return newDamage;
    //词条注册名是我刚才做的题的单选答案
    //以及这种愚人节词条就别指望着我写点实际效果了
};
dbcad.register();

val bdbca = ArmorTraitBuilder.create("bdbca");
bdbca.color = 0xffaadd;
bdbca.localizedName = "咋垂都朽";
bdbca.localizedDescription = "时断时续……我指的是你的tps§r\n§f这个属性不会为穿戴者提供任何效果\n每tick检查一次，当玩家盔甲栏有物品带有该属性时也啥都不会发生，甚至不会真的检查\n当你生命垂危时，这个盔甲会就在你身上眼睁睁的看着你生命垂危OMO";
bdbca.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return newDamage;
    //词条注册名是我刚才做的题的单选答案
    //以及这种愚人节词条就别指望着我写点实际效果了
};
bdbca.register();