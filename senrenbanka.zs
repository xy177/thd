
#reloadable

import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;
import mods.ctutils.utils.Math;
import crafttweaker.player.IFoodStats;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.ITickEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.CriticalHitEvent;
import mods.BXLib;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;

    if(!isNull(entity) ){  
        if(entity.isPotionActive(<potion:astralsorcery:potiontimefreeze>)){  
            entity.addPotionEffect(<potion:extrabotany:eternity>.makePotionEffect(200, 0, false, false));
            event.cancel();  
        }
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var player as IPlayer = event.entityLivingBase;

    if(!isNull(player) ){  
        if(player.maxHealth  < 6){  
            player.health -= player.maxHealth; 
        }
    }
});

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntityLivingBase = event.target; 
    var player as IPlayer = event.player;  
    var definition = event.target.definition;
    if (!(event.target instanceof IEntityLivingBase))return;
    if((!isNull(entity))&&(!isNull(definition))&&(!isNull(definition.id))){  
        if(definition.id == "da:great_wyrk")return;
        if(!entity.isPotionActive(<potion:astralsorcery:potiontimefreeze>)){ 
            return;
        }else{
            event.cancel(); 
            event.player.sendStatusMessage(format.red("你正被囚禁在时空的夹缝中，你暂时无法攻击到"+entity.definition.name));  
        }
    }
});
/*
events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntityLivingBase = event.target;  //建立IEntity对象，这里指的是攻击目标
    var player as IPlayer = event.player;  //建立IPlayer对象，这里指的是攻击玩家
    if(!isNull(entity)){  
        if(player.isPotionActive(<potion:astralsorcery:potiontimefreeze>)){ 
            event.cancel();  //取消事件
            event.player.sendStatusMessage(format.red("你正被囚禁在时空的夹缝中，你暂时无法攻击到"+entity.definition.name));  //给予提示
        }
    }
});
*/

/*events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntityLivingBase = event.target;  //建立IEntity对象，这里指的是攻击目标
    var player as IPlayer = event.player;  //建立IPlayer对象，这里指的是攻击玩家
    var definition = event.entity.definition;
    if(!isNull(entity)){  
        if(!player.hasGameStage("draconic")&& definition.id == "minecraft:wither"){ 
            event.cancel();  //取消事件
            event.player.sendStatusMessage(format.red("你的力量不足以让凋零注意到你"+entity.definition.name));  //给予提示
        }
    }
});*/

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntityLivingBase = event.target;  //建立IEntity对象，这里指的是攻击目标
    var player as IPlayer = event.player;  //建立IPlayer对象，这里指的是攻击玩家
    var definition = event.target.definition;
    if (!(event.target instanceof IEntityLivingBase))return;
    if((!isNull(entity))&&(!isNull(definition))&&(!isNull(definition.id))){  
        if(!player.hasGameStage("cobalt") ){ 
            if(definition.id == "minecraft:wither"){
            event.cancel();  //取消事件
            event.player.sendStatusMessage(format.red("你的力量不足以让凋零注意到你,你需要让世界进入更深的层次"));  //给予提示
        }}
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)&&(!isNull(entity))&&(!isNull(entity.definition))&&(!isNull(entity.definition.id))) {
    var player as IPlayer = event.damageSource.getTrueSource();
    if(!player.hasGameStage("cobalt") ){ 
            if(entity.definition.id == "minecraft:wither"){
                event.amount = 0.0f; //取消事件
                event.cancel();
            player.sendStatusMessage(format.red("你的力量不足以让凋零注意到你,你需要让世界进入更深的层次"));  //给予提示
        }}}
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
if ((!isNull(event.damageSource.getTrueSource())) && (event.damageSource.getTrueSource() instanceof IPlayer)) {
    var player as IEntity = event.damageSource.getTrueSource();
    var player2 as IPlayer = event.damageSource.getTrueSource();
            if((player.isRiding)&&entity.isBoss){
                event.amount = 0.0f; //取消事件
                event.cancel();
            player2.sendStatusMessage(format.red("你因为害怕与强敌之间的战斗会伤害到你的坐骑而退缩了"));  //给予提示
        }
        }
});

events.onPlayerTick(function(event as PlayerTickEvent){
     if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  //建立IPlayer对象
        if(player.isPotionActive(<potion:minecraft:instant_health>)){ 
            player.addPotionEffect(<potion:minecraft:instant_health>.makePotionEffect(1, 1, false, false));
            player.removePotionEffect(<potion:minecraft:instant_health>);
             event.player.sendStatusMessage(format.red("已为你清理掉错误的持续性的瞬间治疗，不用谢我~"));  //给予提示
        }  }
});

events.onPlayerTick(function(event as PlayerTickEvent){
     if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  //建立IPlayer对象
        if(player.isPotionActive(<potion:minecraft:saturation>)){
            if(!player.isPotionActive(<potion:contenttweaker:falsesaturation>)){  
            if(!player.isPotionActive(<potion:beto:notfales>))&&(!player.isPotionActive(<potion:raids:hero_of_the_village>)){ 
            player.sendStatusMessage(format.red("你感觉肠胃不太舒服，似乎有什么即将到来"));
            player.addPotionEffect(<potion:contenttweaker:falsesaturation>.makePotionEffect(120, 0, false, false));
        }  }}}
});


events.onPlayerTick(function(event as PlayerTickEvent){
     if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  //建立IPlayer对象
        if (player.isPotionActive(<potion:minecraft:resistance>)) {
                var resistanceLevel as int = player.getActivePotionEffect(<potion:minecraft:resistance>).amplifier as int ;
                if (resistanceLevel *1>= 4){
                  player.removePotionEffect(<potion:minecraft:resistance>);
                    player.sendStatusMessage(format.red("太高等级的抗性提升使得空间不再稳定，你只得退而求其次"));
                    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(600, 2, false, false));
                }
            }}
});

events.onPlayerTick(function(event as PlayerTickEvent){
     if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  //建立IPlayer对象
        if (player.hasGameStage("heart1")) {
   BXLib.addPlayerAdditionsHealth(player,"heart1",10);
            }
            if (player.hasGameStage("heart2")) {
   BXLib.addPlayerAdditionsHealth(player,"heart2",20);
            }
            if (player.hasGameStage("heart3")) {
   BXLib.addPlayerAdditionsHealth(player,"heart3",30);
            }
            }
});


events.onPlayerTick(function(event as PlayerTickEvent){
     if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  //建立IPlayer对象
        if(player.isPotionActive(<potion:beto:notfales>)){
            player.foodStats.addStats(1,1.0);
        }}
});

events.onCriticalHit(function(event as CriticalHitEvent){
if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  
        if (player.isPotionActive(<potion:teastory:agility>)) {
                var resistanceLevel as int = player.getActivePotionEffect(<potion:teastory:agility>).amplifier as int ;
                var numberadd   = resistanceLevel*12;
                 var rand = Math.random()*100;
                 if (rand < numberadd){
                    event.damageModifier = event.oldDamageModifier* 1.75f;
                    event.allow();
                 }else {return; }
            }}
}
);

events.onCriticalHit(function(event as CriticalHitEvent){
if (!event.player.world.remote) { 
    var player as IPlayer = event.player;  
        if (player.isPotionActive(<potion:contenttweaker:voidmind>)) {
                    event.damageModifier += event.oldDamageModifier* 0.65f;
                  player.removePotionEffect(<potion:contenttweaker:voidmind>);
                    event.allow();
                 
            }}
}
);

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
if (entity instanceof IPlayer) {
    var player as IPlayer = entity;
                if (player.isPotionActive(<potion:ancientbeasts:shielded>)) {
                  player.removePotionEffect(<potion:ancientbeasts:shielded>);
                }
        }
});