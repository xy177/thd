#reloadable
import crafttweaker.event.IWorldEvent;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerUseHoeEvent; 
 
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos; 
 

import crafttweaker.event.ItemTossEvent;
 
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
 
import mods.ctutils.utils.Math; 

import native.net.minecraft.entity.Entity;
import native.com.deeperdepths.common.entities.EntityWindCharge;
import native.thaumcraft.common.entities.EntityFluxRift;

import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.IEntityEvent;

import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IFoodStats;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.ITickEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.entity.IEntityArrow;
import native.net.minecraft.world.World;
import scripts.libs.TicTraitLib;
import scripts.libs.TicTraitLib.ticTraitLib;
import scripts.libs.Ticinit;
import scripts.libs.TicTraitLib.getTicTraitLib;
import crafttweaker.event.PlayerLeftClickBlockEvent;

import native.org.zeith.thaumicadditions.entity.EntityMithminiteScythe;

import native.net.minecraft.entity.player.EntityPlayerMP;
import crafttweaker.data.IData;
import crafttweaker.event.EntityLivingHealEvent;


//虚空权能
events.onEntityLivingHeal(function(event as crafttweaker.event.EntityLivingHealEvent){
  if (event.entityLivingBase instanceof IPlayer){
    var player as IPlayer = event.entityLivingBase;
    if (!player.world.remote) {
      if (player.isPotionActive(<potion:contenttweaker:voidability>)){
        event.cancel();
      }
    }
  }
}
);

//秘镰
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(ore has <ore:toolTiC>)){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "bdj" ){
 var scythe as EntityMithminiteScythe =  EntityMithminiteScythe(player.world.native, player.native);
 val mx =player.motionX;
 val my =player.motionY;
 val mz =player.motionZ; 
 player.motionX =0;
 player.motionY =0;
 player.motionZ =0;
				( scythe as EntityMithminiteScythe).shoot(player.native, player.rotationPitch, player.rotationYaw, 0, 0.5f, 0.0f);
				player.world.native.spawnEntity(scythe);   
        player.motionX =mx;
        player.motionY =my;
        player.motionZ =mz;    
        player.setCooldown(mainItem, 15);    
}else{
    print("null");
}}}
else{
    print("null");
}
}}
);
//应力
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(ore has <ore:toolTiC>)){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "hytic_chocolate_milk" &&( (itema has "tinkersaether:dart_shooter") )){   
        player.setCooldown(mainItem, 60);    
}else{
    print("null");
}}}
else{
    print("null");
}
}}
);

//蓄能
/*
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(TicLib.isGeatersword(event.item))){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "powerup" ){
if((!player.isPotionActive(<potion:contenttweaker:powerup>))&&(!player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))){
player.addPotionEffect(<potion:contenttweaker:powerup>.makePotionEffect(200, 0, true, true));
}else{print("null1");}
}
if(  trait has "powerupi" ){
if((player.isPotionActive(<potion:contenttweaker:powerup>))&&(!player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))&&(player.getActivePotionEffect(<potion:contenttweaker:powerup>).duration as int *1<= 100)){
player.addPotionEffect(<potion:contenttweaker:powerupi>.makePotionEffect(160, 0, true, true));
print(player.getActivePotionEffect(<potion:contenttweaker:powerup>).duration);
  player.removePotionEffect(<potion:contenttweaker:powerup>);
}else{print("null1");}
}
if(  trait has "powerupii" ){
if((!player.isPotionActive(<potion:contenttweaker:powerup>))&&(player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))&&(player.getActivePotionEffect(<potion:contenttweaker:powerupi>).duration as int *1<= 100)){
player.addPotionEffect(<potion:contenttweaker:powerupii>.makePotionEffect(120, 0, true, true));
  player.removePotionEffect(<potion:contenttweaker:powerupi>);
}else{print("null1");}
}else{print("null2");}}
}else{print("null3");}}else{print("null4");}}
);*/

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(TicLib.isGeatersword(event.item))){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "powerup" ){
if((!player.isPotionActive(<potion:contenttweaker:powerup>))&&(!player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))){
player.addPotionEffect(<potion:contenttweaker:powerup>.makePotionEffect(200, 0, true, true));
}else{print("null1");}
}else{print("null2");}}
}else{print("null3");}}else{print("null4");}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(TicLib.isGeatersword(event.item))){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "powerupi" ){
if((player.isPotionActive(<potion:contenttweaker:powerup>))&&(!player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))&&(player.getActivePotionEffect(<potion:contenttweaker:powerup>).duration as int *1<= 80)){
player.addPotionEffect(<potion:contenttweaker:powerupi>.makePotionEffect(160, 0, true, true));
print(player.getActivePotionEffect(<potion:contenttweaker:powerup>).duration);
  player.removePotionEffect(<potion:contenttweaker:powerup>);
}else{print("null1");}
}else{print("null2");}}
}else{print("null3");}}else{print("null4");}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
    var player as IPlayer = event.player;
    var p = event.player.position; 
    var w = event.player.world;
    var mainItem  as IItemStack = event.item;
    var ore = event.item.definition.ores;
if(!isNull(event.item)&&(TicLib.isGeatersword(event.item))){
       var traits as string[] = [];
       var itemStack as IItemStack = event.item;
       var data as IData = itemStack.tag;
       var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");
        for modifier in modifiers {
            traits += modifier.trim();
        }
var itema = mainItem.definition.id;
for trait in traits {
  if(  trait has "powerupii" ){
if((!player.isPotionActive(<potion:contenttweaker:powerup>))&&(player.isPotionActive(<potion:contenttweaker:powerupi>))&&(!player.isPotionActive(<potion:contenttweaker:powerupii>))&&(player.getActivePotionEffect(<potion:contenttweaker:powerupi>).duration as int *1<= 80)){
player.addPotionEffect(<potion:contenttweaker:powerupii>.makePotionEffect(120, 0, true, true));
  player.removePotionEffect(<potion:contenttweaker:powerupi>);
}else{print("null1");}
}else{print("null2");}}
}else{print("null3");}}else{print("null4");}}
);