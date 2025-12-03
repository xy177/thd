#reloadable
import crafttweaker.event.IWorldEvent;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerUseHoeEvent; 
 
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos; 
 

import crafttweaker.event.ItemTossEvent;
 
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.world.IFacing;
 
import mods.ctutils.utils.Math; 

import native.net.minecraft.entity.Entity;
import native.com.deeperdepths.common.entities.EntityWindCharge;
import native.thaumcraft.common.entities.EntityFluxRift;
import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;

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
import crafttweaker.event.CommandEvent;
import mods.zenutils.ICatenationBuilder;


import crafttweaker.util.IAxisAlignedBB;
import native.com.github.lunatrius.ingameinfo.client.gui.overlay.InfoIcon;
import native.com.github.lunatrius.ingameinfo.tag.registry.TagRegistry;
import native.net.minecraft.client.network.NetworkPlayerInfo;
import native.net.minecraft.client.resources.ResourcePackRepository;
import native.net.minecraft.client.Minecraft;
import native.org.zeith.thaumicadditions.entity.EntityMithminiteScythe;
import native.net.minecraft.entity.EntityLiving;
import native.net.minecraft.entity.EntityLivingBase;
import native.thaumcraft.api.items.IGoggles;
import native.thaumcraft.api.items.IVisDiscountGear;
import native.net.minecraft.item.ItemStack;
import native.com.sirsquidly.palebloom.common.world.WorldPaleGarden;

import native.net.minecraft.entity.player.EntityPlayerMP;
import crafttweaker.data.IData;

import crafttweaker.event.CriticalHitEvent;
import crafttweaker.event.PlayerWakeUpEvent;

function send(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.red(i));
    }
}

function send2(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.green(i));
    }
}

function send3(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.lightPurple(i));
    }
}

function send4(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.aqua(i));
    }
}

events.onCriticalHit(function(event as CriticalHitEvent){
if (!event.player.world.remote) { 
    event.damageModifier = event.oldDamageModifier* 1.0f;
    print("OK");
     event.allow();
}
}
); 



events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;
print(itema);
print(itemb);
}}}
);


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;

if( (itema == "itemfilters:missing") ){
server.commandManager.executeCommand(server,"gamestage clear "+player.name);
send4(player,["已清除所有阶段！"]);
}

}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
if( (itema == "oe:nautilus_shell") ){
send4(player,["您拥有以下阶段"]);
server.commandManager.executeCommand(player,"gamestage info");
}

}}}
);

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
     var player as IPlayer = event.player;
     if ((!event.player.world.remote)&&(player.hasGameStage("nutritagain"))) {
      var nutritmin =min(player.getNutrition("energy"),min(player.getNutrition("fruitable"),min(player.getNutrition("proteinairy"),min(player.getNutrition("sugarain"),player.getNutrition("abundant")))));
      if (nutritmin<=25) {
        player.setNutrition("energy",90.0f);
        player.setNutrition("fruitable",90.0f);
        player.setNutrition("proteinairy",90.0f);
        player.setNutrition("sugarain",90.0f);
        player.setNutrition("abundant",90.0f);
    player.removeGameStage("nutritagain");
send(player,["Belphegor淡忘了你灵魂的味道，并渴望着你再次允许TA浅尝其味道的那一天"]);
send2(player,["你的个体状态（营养值）已恢复到健康水平！"]);
      }
          }
});