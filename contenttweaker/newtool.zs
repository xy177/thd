#reloadable
#loader contenttweaker 
#modloaded tconstruct

#priority 99

import mods.contenttweaker.tconstruct.TraitBuilder;

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
import zentraits.TraitManager;
import mods.tconstruct.traits.KnockBack;
import crafttweaker.data.IData;
import mods.zenutils.DataUpdateOperation.OVERWRITE;
import mods.zenutils.DataUpdateOperation.APPEND;
import mods.zenutils.DataUpdateOperation.MERGE;
import mods.zenutils.DataUpdateOperation.REMOVE;
import mods.zenutils.DataUpdateOperation.BUMP;
import crafttweaker.world.IBiome;
import crafttweaker.entity.IEntityArrow;

import scripts.libs.CotTicTraitLib.cotticTraitLib;
import scripts.libs.CotTicinit;
import scripts.libs.CotTicTraitLib.getCotTicTraitLib;

import native.com.deeperdepths.common.entities.EntityWindCharge;
import native.net.minecraft.entity.EntityLivingBase;

import native.org.zeith.thaumicadditions.entity.EntityMithminiteScythe;

import native.net.minecraft.entity.player.EntityPlayerMP;

val mace = TraitBuilder.create("mace");
mace.color = 0x72777b;
mace.localizedName = "沉重一击";
mace.localizedDescription = "天赐良击！§r\n§f可以提高下落攻击伤害，且若击中生物则无视摔落伤害";
mace.addItem(<item:deeperdepths:heavy_core>);
mace.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
  var attack as EntityLivingBase = attacker.native;
  var fall = attack.fallDistance;
  if (attacker instanceof IPlayer){
        var player as IPlayer = attacker;
        var item = tool.definition.ores;
        if(item has <ore:Bigweapon>){
  if(fall <= 3){
    attack.fallDistance = 0;
    return  ((fall * 1.0f)+newDamage) as float;
  }else if (fall <= 8) {
    attack.fallDistance = 0;
        return  ((3 * 4.0f + (fall - 3) * 2.0f)+newDamage) as float;
    }else {
        attack.fallDistance = 0;
        return  ((3 * 4.0f + 5 * 2.0f + (fall - 8)*1.0f)+newDamage) as float;
    }}else{return newDamage;}}else{return newDamage;}
};
mace.register();

val windburst = TraitBuilder.create("windburst");
windburst.color = 0x7bbfea;
windburst.localizedName = "风爆";
windburst.localizedDescription = "还要啥火箭啊？§r\n§f在下坠攻击后产生类似旋风人的风弹爆炸";
windburst.addItem(<item:deeperdepths:wind_charge>*10);
//windburst.canApplyTogetherTrait = function(thisTrait, otherTrait) {return otherTrait = "mace"; };
windburst.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var p = attacker.position; 
    var w = attacker.world;
    var attack as EntityLivingBase = attacker.native;
  var fall = attack.fallDistance;
    if(fall >= 1.5){
       if (!attacker.world.remote) { 
                val burst = <entity:deeperdepths:wind_charge>;
val entity = burst.spawnEntity(w, p);
(entity.native as EntityWindCharge).setBurstPower(2.0f );
        (entity.native as EntityWindCharge).setBurstRange(10.0f);
        (entity.native as EntityWindCharge).setBurstInteractRange(5.0f);
        (entity.native as EntityWindCharge).forceSpawn = true;
        (entity.native as EntityWindCharge).forceExplode(null);
        (entity.native as EntityWindCharge).setDead();
             return newDamage;   
       
            }
            return newDamage;
}return newDamage;};
windburst.register();

val bdj = TraitBuilder.create("bdj");
bdj.color = 0xffaadd;
bdj.localizedName = "秘镰";
bdj.localizedDescription = "如死神经过一般§r\n§f在你攻击后留下一道留在原地的镰刀型剑气，当你右键时发射一道向前飞行的镰刀型剑气但发射后武器会进入冷却";
bdj.onHit = function(trait, tool, attacker, target, damage, isCritical){
  var player as IPlayer = attacker;
    var p = target.position; 
    var w = target.world; 
    if(!target.world.remote){
        var scythe as EntityMithminiteScythe =  EntityMithminiteScythe(player.world.native, player.native);
 val mx =player.motionX;
 val my =player.motionY;
 val mz =player.motionZ; 
 player.motionX =0;
 player.motionY =0;
 player.motionZ =0;
				( scythe as EntityMithminiteScythe).shoot(player.native, player.rotationPitch, player.rotationYaw, 0, 0.0f, 0.0f);
				player.world.native.spawnEntity(scythe);   
        player.motionX =mx;
        player.motionY =my;
        player.motionZ =mz; 
}
};
bdj.register();