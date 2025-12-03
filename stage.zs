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
import crafttweaker.event.CommandEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;

import mods.BXLib;
import native.org.zeith.thaumicadditions.entity.EntityMithminiteScythe;

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

events.onPlayerWakeUp(function(event as crafttweaker.event.PlayerWakeUpEvent)
{
    if (event.player.world.remote)return;
    var player as IPlayer = event.player;
    if(player.hasGameStage("lilith")){
        server.commandManager.executeCommand(server,"nutrition set "+player.name+" energy 40");
        send(player,["在Lilith的干扰下，你头昏脑涨，一夜未得安眠"]);
    }else{
server.commandManager.executeCommand(server,"nutrition set "+player.name+" energy 100");
}

}
);

events.onPlayerWakeUp(function(event as crafttweaker.event.PlayerWakeUpEvent)
{
    if (event.player.world.remote)return;
    var player as IPlayer = event.player;
    if((!player.hasGameStage("beelzebub"))&&(!player.hasGameStage("reduction"))){
        player.addGameStage("reduction");
        send2(player,["你知晓了如何在使用黑曜石和黄金来保护自己！"]);
    }else if((player.hasGameStage("beelzebub"))&&(!player.hasGameStage("noreduction"))){
send(player,["在Belzebub的呓语下，你完全没记下梦中关于保护的灵感..."]);}
player.addGameStage("noreduction");
}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:chuansongLilith>)&&(itemb == 585)&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
    if((!(player.hasGameStage("lilith")))&&(!(player.hasGameStage("lilithissb")))){
   player.executeCommand("gamerule keepInventory false");
    player.addGameStage("lilith");
        player.give(<enigmaticlegacy:cursed_ring>);
        player.give(<enigmaticlegacy:desolation_ring>);
        player.give(<enigmaticlegacy:twisted_core>);
        //player.give(<enigmaticlegacy:astral_fruit>);
        //player.give(<enigmaticlegacy:ichor_bottle>);
        player.give(<enigmaticlegacy:enigmatic_amulet:7>);
        server.commandManager.executeCommand(server,"baubles slots modify "+player.name+" bauble 2");
send(player,["Lilith破坏了这个世界的安定"]);
send3(player,["混乱的世界中尚可求得一丝生机，你的饰品栏数量提升了"]);
}else{
   player.server.commandManager.executeCommand(player,"/setnoringtime 0");
   send(player,["Lilith为你虚构了苦难的经历"]);
        }}

}}}
);

events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) { 
    var w = event.player.world;
    if ((!event.player.world.remote)&&(event.player.isSneaking)&&(event.item.item.metadata == 585)&&(!(event.player.hasGameStage("lilith")))) { 
        if((["contenttweaker:material_part"] as string[]) has event.item.item.definition.id){
            event.cancel();
            var entity as IEntity = event.player;
            var player as IPlayer =entity;
            player.addGameStage("lilithissb");
            send(player,["拒绝莉莉丝的诅咒使你获得了世界的庇护"]);
            player.give(<jmilpol:everlasting_pendant>);
}}});


events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "minecraft:wither"){
    if(!player.hasGameStage("cobalt") ){ 
                event.cancel();
        }}}
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "minecraft:wither_skeleton"){
    if(player.hasGameStage("lilith") ){ 
               event.addItem(<minecraft:skull:1>);
               if(player.hasGameStage("cobalt") ){ 
               event.addItem(<enigmaticlegacy:evil_essence>);
               event.addItem(<enigmaticlegacy:twisted_core>);
        }
        }}}
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if((entity.definition.id == "twilightforest:skeleton_druid")||(entity.definition.id == "twilightforest:hedge_spider")||(entity.definition.id == "twilightforest:kobold")||(entity.definition.id == "twilightforest:death_tome")){
    if(player.hasGameStage("lilith")&&(Math.random() < 0.6)){ 
               event.addItem(<twilightforest:charm_of_keeping_1>);
        }}
         if((entity.definition.id == "twilightforest:minotaur")||(entity.definition.id == "twilightforest:fire_beetle")||(entity.definition.id == "twilightforest:slime_beetle")||(entity.definition.id == "twilightforest:pinch_beetle")){
    if(player.hasGameStage("lilith")&&(Math.random() < 0.6)){ 
               event.addItem(<twilightforest:charm_of_keeping_2>);
        }}}
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "da:night_lich"){ 
               event.addItem(<twilightforest:trophy:1>);
               event.addItem(<additions:fxt-twfo02>*7);
               event.addItem(<minecraft:ender_pearl>);
               event.addItem(<star_rains_toybox:quanzhang>);
        
    }}
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "aether_legacy:valkyrie_queen"){ 
               event.addItem(<enigmaticlegacy:angel_blessing>);
        
    }}
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "da:high_king"){ 
               event.addItem(<enigmaticlegacy:void_stone:2>);
        
    }}
});
/* 
events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
 var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IPlayer = event.damageSource.getTrueSource();
            if(entity.definition.id == "twilightforest:lich"){ 
             event.cancel();
        
    }}
});*/

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:chuansongSathanism>)&&(itemb == 586)&&(!(player.hasGameStage("sathanism")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
    player.addGameStage("sathanism");
send(player,["Sathanism摧毁了你的王冠"]);
}

}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = event.item;
if(!isNull(mainItem)){
var itema = event.item.definition.id;

if( (itema == "text:fxt_tinkersstone")&&(player.isSneaking)&&(!(player.hasGameStage("cobalt")) )  ){
    if( (itema == "text:fxt_tinkersstone") ){
    if((player.hasGameStage("sathanism"))  )
    {send(player,["汝已无冠，此路无缘"]);}
    else{
   player.addGameStage("cobalt");
   player.sendToast("\u00A73初具匠心" as IData,"#e24079","你开始真正了解这个世界","blue", <text:fxt_tinkersstone>);
send2(player,["凋零与生命的力量已被解放！"]);}
}
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

if( (itema == "enigmaticlegacy:earth_heart")&&(player.isSneaking) ){
    if(player.dimension == -9999){
   player.server.commandManager.executeCommand(player,"/forge setdimension @p 0");
    }else{
   player.server.commandManager.executeCommand(player,"/forge setdimension @p -9999");
   player.server.commandManager.executeCommand(player,"tp 0 65 0");
}}}}}
);


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;

if( (itema == "text:fxt_tinkersstone") ){
    if(player.hasGameStage("sathanism"))
    {player.give(<additions:fxt-dust_02>);}
    else{
    player.give(<additions:fxt-sust_01>);}
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

if( (itema == "additions:fxt-noob_baby_stone") ){
    if((player.hasGameStage("sathanism"))  )
    {player.give(<additions:fxt-dust_02>);}
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

if( (itema == "additions:fxt-noob_baby_stone")&&(player.isSneaking))&&(!(player.hasGameStage("cobalt"))&&(player.hasGameStage("sathanism") )  ){
   player.addGameStage("cobalt");
send3(player,["sathanism使凋零与生命的力量脱离了控制！"]);
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

if( (itema == "thaumcraft:void_seed")&&(player.isSneaking)&&(!(player.hasGameStage("void")))  ){
   player.addGameStage("void");
send3(player,["你感觉自己驾驭虚空的研究更加精进了"]);
}

}}}
);


events.onPlayerWakeUp(function(event as crafttweaker.event.PlayerWakeUpEvent)
{
    var player as IPlayer = event.player;
    if(player.hasGameStage("lilith")){
        server.commandManager.executeCommand(server,"nutrition set "+player.name+" energy 40");
    }else{
server.commandManager.executeCommand(server,"nutrition set "+player.name+" energy 100");
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

if( (itema == "text:worncircuitboard")&&(player.isSneaking))&&(!(player.hasGameStage("draconic")) ){
   if(player.hasGameStage("sathanism"))
    {
   player.addGameStage("draconic");
        send3(player,["sathanism撕裂了以太海，使混沌能量泄漏到了其它可能性中！或许此时末路之地对你而言不再致命..."]);}
    else if((player.hasGameStage("mithminite"))&&player.hasGameStage("titaniu")){
   player.addGameStage("draconic");
    send4(player,["一颗明星压制了末路之地肆虐的混沌能量！"]);}
    else{
        send(player,["一点光芒在末路之地微弱的闪耀着，似乎需要钛金与秘金的簇态存在来增强它的力量"]);
    }


}

}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:ingredientsMithminite>)&&(itemb == 22)&&(!(player.hasGameStage("mithminite")))&&(!(player.hasGameStage("sathanism")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
    player.addGameStage("mithminite");
send3(player,["来自星辰外神秘的力量升入天空，末路之地那一抹微光的亮度增加了"]);
}

}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:ingredientsWorldtitaniu>)&&(itemb == 551)&&(!(player.hasGameStage("titaniu")))&&(!(player.hasGameStage("sathanism")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
    player.addGameStage("titaniu");
send2(player,["来自星辰外植物的力量升入天空，末路之地那一抹微光的亮度增加了"]);
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

if( (itema == "text:fx_remote_control")&&(player.isSneaking)&&(!(player.hasGameStage("chaotic")) )  ){
    
    if((player.hasGameStage("sathanism"))  )
    {send(player,["汝已无冠，此路无缘"]);}
    else{
   player.addGameStage("chaotic");
send2(player,["末路之地的空间站已将备战物资送至你的手边，现在是时候启程讨伐你成为传奇前的最后一位强敌了！"]);}
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

if( (itema == "text:fx_remote_control") ){
    player.give(<beto:sheldersa>);
    player.addPotionEffect(<potion:raids:hero_of_the_village>.makePotionEffect(120000, 0, false, false));
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

if( (itema == "additions:fxt-what_you_see")&&(player.isSneaking))&&(!(player.hasGameStage("chaotic"))&&(player.hasGameStage("sathanism") )  ){
   player.addGameStage("chaotic");
send3(player,["某个散发着暗淡光芒的空间站因受到混沌能量的波及而被撕裂，最后的战备物资倍送到了你的手边，而你的旅程或许就此在sathanism得逞的计划中走向了未尽的终点..."]);
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

if( (itema == "additions:fxt-what_you_see") &&(player.hasGameStage("sathanism") ) ){
    player.give(<beto:sheldersa>);
    player.addPotionEffect(<potion:raids:hero_of_the_village>.makePotionEffect(120000, 0, false, false));
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

if( (itema == "text:fxt_text_01")&&(player.isSneaking)&&(!(player.hasGameStage("infinity")) )  ){
    
    if((player.hasGameStage("sathanism"))  )
    {send(player,["sathanism早就摧毁了你的王冠，从那一刻起你就已经失去了与我们同行的资格"]);}
    else{
   player.addGameStage("infinity");
send2(player,["这个世界中最后的威胁已经成为了你的手下败将，现在时候精进并整合你所拥有的全部学识与技巧，冲击那登峰造极的一步来成为我们的一员了！"]);}
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

if( (itema == "text:fxt_controllerof_godx")&&(player.isSneaking)&&(!(player.hasGameStage("unfinished")) )  ){
    
    if((player.hasGameStage("sathanism"))  )
    {send(player,["sathanism早就摧毁了你的王冠，若没有外力的帮助你根本无法获得此物，若你存心依恋，那便如此永远的陷入徘徊吧..."]);
    }
    else{
   player.addGameStage("unfinished");
send2(player,["哦，是的，是的！又一个传奇诞生了，又多了一位我们的同胞！接下来你想做什么？是亲口将你的故事传颂下去，又亦或者...与我们一同启程，前往观察下一个世界，试着去指导下一位传奇的诞生？"]);}
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

if( (itema == "additions:fxt-magicdrink")&&(player.isSneaking))&&(!(player.hasGameStage("heart1")) ){
   player.addGameStage("heart1");
   BXLib.addPlayerAdditionsHealth(player,"heart1",10);
        send3(player,["琼浆浸润了你的咽喉，你的血量上限和饰品栏数量提升了"]);
        server.commandManager.executeCommand(server,"baubles slots modify "+player.name+" bauble 1");
        //server.commandManager.executeCommand(server,"baubles slots grow "+player.name+" baubles:trinket 1");
        item.mutable().withAmount(item.amount - 1);}
}}}
);


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;

if( (itema == "additions:fxt-sky_jiangguo")&&(player.isSneaking))&&(!(player.hasGameStage("heart2")) ){
   player.addGameStage("heart2");
   BXLib.addPlayerAdditionsHealth(player,"heart2",20);
        send3(player,["从未品尝过的味道使你满足，你的血量上限和饰品栏数量提升了"]);
        //server.commandManager.executeCommand(server,"baubles slots grow "+player.name+" baubles:trinket 1");
        server.commandManager.executeCommand(server,"baubles slots modify "+player.name+" bauble 1");
        item.mutable().withAmount(item.amount - 1);}
}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;

if( (itema == "additions:fxt-enderdragonfruit")&&(player.isSneaking))&&(!(player.hasGameStage("heart3")) ){
   player.addGameStage("heart3");
   BXLib.addPlayerAdditionsHealth(player,"heart3",30);
        send3(player,["末影龙的力量与你融为一体，你的血量上限和饰品栏数量提升了"]);
        //server.commandManager.executeCommand(server,"baubles slots grow "+player.name+" baubles:trinket 2");
        server.commandManager.executeCommand(server,"baubles slots modify "+player.name+" bauble 2");
        item.mutable().withAmount(item.amount - 1);}
}}}
);


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:chuansongBeelzebub>)&&(itemb == 587)&&(!(player.hasGameStage("beelzebub")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores)&&(!player.hasGameStage("reduction")) ){
    player.addGameStage("beelzebub");
    player.removeGameStage("reduction");
send(player,["Beelzebub混淆了你的灵智"]);
}

}}}
);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:chuansongBelphegor>)&&(itemb == 591)&&(!(player.hasGameStage("belphegor")))&&(!(player.hasGameStage("nutritagain")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
    player.addGameStage("belphegor");
    player.addGameStage("nutritagain");
send2(player,["Belphegor浅尝并记住了你灵魂的味道"]);
}

}}}
);

events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) { 
 var i = event.item.item.commandString;
    var p = event.player.position; 
    var player as IPlayer = event.player;
    var w = event.player.world;
       if (!event.player.world.remote) { 
       if(((["astralsorcery:itemknowledgeshare"] as string[]) has event.item.item.definition.id)&&(player.hasGameStage("beelzebub"))){
                event.cancel();
                player.give(<astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {creativeKnowledge: 1 as byte}}));
           send3(player,["Beelzebub将窃取到的智慧与你分享了一角"]);
       }
            }
    
});

events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) { 
 var i = event.item.item.commandString;
    var p = event.player.position; 
    var player as IPlayer = event.player;
    var w = event.player.world;
       if (!event.player.world.remote) { 
       if(((["thaumictinkerer:share_book"] as string[]) has event.item.item.definition.id)&&(player.hasGameStage("beelzebub"))){
        if((player.hasGameStage("void"))){
                event.cancel();
                
server.commandManager.executeCommand(server,"tc research "+player.name+" all");
           send3(player,["Beelzebub将窃取到的智慧与你分享了一角"]);}else{
            send(player,["要在神秘学上向Beelzebub索求知识，至少要先获取虚空种子的力量..."]);
           }
       }
            }
    
});


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    if (!event.player.world.remote) {
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var p = event.player.position; 
    var w = event.player.world;
var mainItem as IItemStack = player.mainHandHeldItem;
if(!isNull(mainItem)){
var itema = player.mainHandHeldItem.definition.id;
var itemb = player.mainHandHeldItem.metadata;

if( ((player.mainHandHeldItem.definition.ores ) has <ore:chuansongRophocale>)&&(itemb == 588)&&(!(player.hasGameStage("rophocale")))&&(player.isSneaking) &&!isNull(player.mainHandHeldItem.definition.ores) ){
   player.executeCommand("gamerule keepInventory false");
    player.addGameStage("rophocale");
        player.give(<thermalexpansion:satchel>.withTag({Inventory: {Slot0: {ForgeCaps: {Parent: {UUIDMost: 6767472489959408000 as long, UUIDLeast: -6526253912160420443 as long, UpgradeSlots: {Items: [{Slot: 0 as byte, id: "retro_sophisticated_backpacks:stack_upgrade_tier_4", Count: 1, Damage: 0 as short}, {Slot: 1 as byte, id: "retro_sophisticated_backpacks:stack_upgrade_tier_4", Count: 1, Damage: 0 as short}, {Slot: 2 as byte, id: "retro_sophisticated_backpacks:stack_upgrade_tier_4", Count: 1, Damage: 0 as short}, {Slot: 3 as byte, id: "retro_sophisticated_backpacks:stack_upgrade_tier_4", Count: 1, Damage: 0 as short}]}, BackpackInventorySize: 120, BackpackInventory: {Items: [{Slot: 0 as byte, id: "appliedenergistics2:drive", Count: 6, Damage: 0 as short}, {Slot: 1 as byte, id: "appliedenergistics2:controller", Count: 64, Damage: 0 as short}, {Slot: 2 as byte, id: "appliedenergistics2:interface", Count: 32, Damage: 0 as short}, {Slot: 3 as byte, id: "appliedenergistics2:fluid_interface", Count: 32, Damage: 0 as short}, {Slot: 4 as byte, id: "ae2fc:dual_interface", Count: 128, Damage: 0 as short}, {Slot: 5 as byte, id: "mekeng:gas_interface", Count: 64, Damage: 0 as short}, {Slot: 6 as byte, id: "appliedenergistics2:crafting_storage_64k", Count: 64, Damage: 0 as short}, {Slot: 7 as byte, id: "appliedenergistics2:molecular_assembler", Count: 16, Damage: 0 as short}, {Slot: 8 as byte, id: "appliedenergistics2:material", Count: 128, Damage: 38 as short}, {Slot: 9 as byte, id: "appliedenergistics2:material", Count: 128, Damage: 57 as short}, {Slot: 10 as byte, id: "thaumicenergistics:essentia_component_64k", Count: 64, Damage: 0 as short}, {Slot: 11 as byte, id: "mekeng:gas_core_64k", Count: 64, Damage: 0 as short}, {Slot: 12 as byte, id: "appliedenergistics2:material", Count: 64, Damage: 39 as short}, {Slot: 13 as byte, id: "appliedenergistics2:part", Count: 128, Damage: 43 as short}, {Slot: 14 as byte, id: "appliedenergistics2:part", Count: 128, Damage: 40 as short}, {Slot: 15 as byte, id: "appliedenergistics2:part", Count: 128, Damage: 41 as short}, {Slot: 16 as byte, id: "appliedenergistics2:material", Count: 1, Damage: 14 as short}, {Slot: 17 as byte, id: "appliedenergistics2:material", Count: 1, Damage: 15 as short}, {Slot: 18 as byte, id: "appliedenergistics2:material", Count: 1, Damage: 19 as short}, {Slot: 19 as byte, id: "appliedenergistics2:material", Count: 1, Damage: 13 as short}, {Slot: 20 as byte, id: "appliedenergistics2:part", Count: 1, Damage: 340 as short}, {Slot: 21 as byte, id: "appliedenergistics2:part", Count: 1, Damage: 380 as short}, {Slot: 22 as byte, id: "appliedenergistics2:part", Count: 1, Damage: 360 as short}, {Slot: 23 as byte, id: "thaumicenergistics:essentia_terminal", Count: 1, Damage: 0 as short}, {Slot: 24 as byte, id: "mekeng:gas_terminal", Count: 1, Damage: 0 as short}, {Slot: 25 as byte, id: "appliedenergistics2:part", Count: 1, Damage: 480 as short}, {Slot: 26 as byte, id: "thaumicenergistics:arcane_terminal", Count: 1, Damage: 0 as short}, {Slot: 27 as byte, id: "mekanism:controlcircuit", Count: 128, Damage: 0 as short}, {Slot: 28 as byte, id: "mekanism:controlcircuit", Count: 64, Damage: 1 as short}, {Slot: 29 as byte, id: "mekanism:controlcircuit", Count: 32, Damage: 2 as short}, {Slot: 30 as byte, id: "mekanism:controlcircuit", Count: 16, Damage: 3 as short}, {Slot: 31 as byte, tag: {tier: 2}, Count: 6, id: "mekanism:basicblock", Damage: 6 as short}, {Slot: 32 as byte, tag: {recipeType: 2}, Count: 1, id: "mekanism:machineblock", Damage: 5 as short}, {Slot: 33 as byte, tag: {recipeType: 3}, Count: 1, id: "mekanism:machineblock", Damage: 5 as short}, {Slot: 34 as byte, tag: {recipeType: 1}, Count: 1, id: "mekanism:machineblock", Damage: 5 as short}, {Slot: 35 as byte, tag: {recipeType: 0}, Count: 1, id: "mekanism:machineblock", Damage: 5 as short}, {Slot: 36 as byte, id: "mekanismgenerators:generator", Count: 6, Damage: 4 as short}, {Slot: 37 as byte, tag: {tier: 1}, Count: 64, id: "mekanism:transmitter", Damage: 0 as short}, {Slot: 38 as byte, tag: {tier: 1}, Count: 64, id: "mekanism:transmitter", Damage: 2 as short}, {Slot: 39 as byte, tag: {tier: 1}, Count: 128, id: "mekanism:transmitter", Damage: 3 as short}, {Slot: 40 as byte, tag: {tier: 1}, Count: 64, id: "mekanism:transmitter", Damage: 1 as short}, {Slot: 41 as byte, id: "mekanism:speedupgrade", Count: 32, Damage: 0 as short}, {Slot: 42 as byte, id: "mekanism:energyupgrade", Count: 32, Damage: 0 as short}, {Slot: 43 as byte, id: "mekanism:biofuel", Count: 384, Damage: 0 as short}, {Slot: 44 as byte, id: "bloodmagic:blood_rune", Count: 128, Damage: 0 as short}, {Slot: 45 as byte, id: "bloodmagic:soul_forge", Count: 1, Damage: 0 as short}, {Slot: 46 as byte, tag: {sacrifice: 0 as byte}, Count: 1, id: "bloodmagic:sacrificial_dagger", Damage: 0 as short}, {Slot: 47 as byte, tag: {souls: 16384.0}, Count: 1, id: "bloodmagic:soul_gem", Damage: 4 as short}, {Slot: 48 as byte, tag: {}, Count: 3, id: "bloodmagic:soul_gem", Damage: 0 as short}, {Slot: 49 as byte, id: "botania:livingwood", Count: 192, Damage: 0 as short}, {Slot: 50 as byte, id: "botania:altar", Count: 1, Damage: 0 as short}, {Slot: 51 as byte, id: "botania:runealtar", Count: 1, Damage: 0 as short}, {Slot: 52 as byte, id: "botania:livingrock", Count: 192, Damage: 0 as short}, {Slot: 53 as byte, id: "botania:fertilizer", Count: 384, Damage: 0 as short}, {Slot: 54 as byte, id: "thermalexpansion:augment", Count: 16, Damage: 512 as short}, {Slot: 55 as byte, id: "thermalexpansion:augment", Count: 16, Damage: 128 as short}, {Slot: 56 as byte, id: "thermalfoundation:upgrade", Count: 32, Damage: 0 as short}, {Slot: 57 as byte, id: "thermalfoundation:upgrade", Count: 8, Damage: 33 as short}, {Slot: 58 as byte, id: "thermalfoundation:upgrade", Count: 4, Damage: 34 as short}, {Slot: 59 as byte, id: "thermalfoundation:upgrade", Count: 2, Damage: 35 as short}, {Slot: 67 as byte, tag: {Energy: 25000000}, Count: 1, id: "thermalexpansion:capacitor", Damage: 4 as short}, {Slot: 68 as byte, id: "thermaldynamics:servo", Count: 32, Damage: 4 as short}, {Slot: 69 as byte, id: "thermaldynamics:duct_0", Count: 64, Damage: 3 as short}, {Slot: 70 as byte, id: "thermaldynamics:duct_32", Count: 64, Damage: 3 as short}, {Slot: 71 as byte, id: "thermaldynamics:duct_16", Count: 64, Damage: 5 as short}, {Slot: 72 as byte, id: "suikerawore:raw_iron", Count: 192, Damage: 0 as short}, {Slot: 73 as byte, id: "suikerawore:raw_copper", Count: 64, Damage: 0 as short}, {Slot: 74 as byte, id: "suikerawore:raw_gold", Count: 192, Damage: 0 as short}, {Slot: 75 as byte, id: "harvestcraft:surfandturfitem", Count: 128, Damage: 0 as short}, {Slot: 108 as byte, id: "ae2stuff:grower", Count: 1, Damage: 0 as short}, {Slot: 109 as byte, id: "ae2fc:fluid_discretizer", Count: 1, Damage: 0 as short}, {Slot: 110 as byte, tag: {internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}, Count: 1, id: "appliedenergistics2:dense_energy_cell", Damage: 0 as short}, {Slot: 111 as byte, id: "appliedenergistics2:material", Count: 128, Damage: 52 as short}, {Slot: 118 as byte, id: "waystones:waystone", Count: 6, Damage: 0 as short}, {Slot: 119 as byte, id: "waystones:warp_scroll", Count: 128, Damage: 0 as short}]}, UpgradeSlotsSize: 7}}, id: "retro_sophisticated_backpacks:backpack_obsidian", Count: 1, Damage: 0 as short}}, Accessible: 1 as byte}));
send(player,["Rophocale拒绝了这个世界的安宁"]);
}

}}}
);
