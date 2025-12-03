#reloadable

import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.util.IRandom;
import mods.ctutils.utils.Math;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.zenutils.ICatenationBuilder;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.data.IData;

import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.ItemExpireEvent;
import crafttweaker.util.IAxisAlignedBB;

/* 
function donthasmob(entities as IEntity[],name as IEntityDefinition) as bool {
    var pass as bool = true;
    for avc in entities{
        if(avc instanceof IEntityLivingBase){
            var avcie as IEntityLivingBase = avc;
            if(avc.definition.name == name.name){
                pass = false;
                break;
            }
        }
    }
    return pass;
}*/

/* 
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var pos = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "twilightforest:adherent") {
            var s = pos.getOffset(IFacing.up(), 5).getOffset(IFacing.west(), 10).getOffset(IFacing.north(), 10) as IBlockPos;
            var e = pos.getOffset(IFacing.down(), 5).getOffset(IFacing.east(), 10).getOffset(IFacing.south(), 10) as IBlockPos;
            var entities = w.getEntitiesInArea(s.asPosition3f(), e.asPosition3f()) as IEntity[];
            for avc in entities {
                if(avc instanceof IEntityLivingBase){
                    var avcie as IEntityLivingBase = avc;
                    if ( avcie.definition.id == "da:imperial_sword"){
                        break;
                    }else{
                        <entity:da:imperial_sword>.spawnEntity(w, pos);
                        break;
                    }
                }
            }
        }
}
);
*/
/*
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var pos = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "twilightforest:adherent") {
            var s = pos.getOffset(IFacing.up(), 5).getOffset(IFacing.west(), 10).getOffset(IFacing.north(), 10) as IBlockPos;
            var e = pos.getOffset(IFacing.down(), 5).getOffset(IFacing.east(), 10).getOffset(IFacing.south(), 10) as IBlockPos;
            var entities = w.getEntitiesInArea(s.asPosition3f(), e.asPosition3f()) as IEntity[];
            var pass as bool = true;
    for avc in entities{ 
        print(avc.definition.id);
        if(!isNull(avc)&&!isNull(avc.definition.id)&&avc instanceof IEntity){
            var avcie as IEntityLivingBase = avc;
            if(avc instanceof IEntityLivingBase){
                    var avcie as IEntityLivingBase = avc;
            if(avcie.definition.id == "da:imperial_sword"){
                pass = false;
                break;
            }
            }}}
            if(pass){
                <entity:da:imperial_sword>.spawnEntity(w, pos);
            }
        }
        
}
); */

function send(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.red(i));
    }
}

function send3(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.lightPurple(i));
    }
}

function send2(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.green(i));
    }
}

function send4(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.darkPurple(i));
    }
}
function send5(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.aqua(i));
    }
}
function send6(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.darkAqua(i));
    }
}
function bossopen(e as IEntity ,s1 as string , s2 as string ,c1 as string ,c2 as string){
    e.server.commandManager.executeCommand(server, "/title @p title [{\"text\":\"" + s2 + "\",\"color\":\"" + c2 + "\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    e.server.commandManager.executeCommand(server, "/title @p subtitle [{\"text\":\"" + s1 + "\",\"color\":\"" + c1 + "\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    }
/* 
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "twilightforest:adherent" && Math.random() <= 0.5) {
                <entity:da:imperial_sword>.spawnEntity(w, p);
    }
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
if( (itema == "quark:trowel") ){
                var pos as IBlockPos = IBlockPos.create(p.x, p.y, p.z);
                var s = pos.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 5).getOffset(IFacing.north(), 5) as IBlockPos;
                var e = pos.getOffset(IFacing.down(), 2).getOffset(IFacing.east(), 5).getOffset(IFacing.south(), 5) as IBlockPos;
    print(w.getEntitiesWithinAABB(IAxisAlignedBB.create(s,e)).length);
}

}}}
);

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    var pos as IBlockPos = IBlockPos.create(p.x, p.y, p.z);
    var s = pos.getOffset(IFacing.up(), 50).getOffset(IFacing.west(), 32).getOffset(IFacing.north(), 32) as IBlockPos;
    var e = pos.getOffset(IFacing.down(), 50).getOffset(IFacing.east(), 32).getOffset(IFacing.south(), 32) as IBlockPos;
    if (!w.remote && !isNull(def) && def.id == "twilightforest:harbinger_cube" && w.getEntitiesWithinAABB(IAxisAlignedBB.create(s,e)).length <= 15) {
        var elb as IEntityLivingBase=entity;
        if(elb.health==elb.maxHealth){
        elb.health-= 0.1f;
        <entity:da:imperial_halberd>.spawnEntity(w, p);
        }
    }
});

events.register(function(event as ItemExpireEvent){
    if(((["suikehappyghast:dried_ghast"] as string[]) has event.item.item.definition.id)&&(event.entity.isInWater)){
        val entity = event.entity;
        var p = entity.position; 
        var w = entity.world;
        <entity:suikehappyghast:happy_ghast>.spawnEntity(w, p);
        }
    }
);

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    var pos as IBlockPos = IBlockPos.create(p.x, p.y, p.z);
    var s = pos.getOffset(IFacing.up(), 50).getOffset(IFacing.west(), 32).getOffset(IFacing.north(), 32) as IBlockPos;
    var e = pos.getOffset(IFacing.down(), 50).getOffset(IFacing.east(), 32).getOffset(IFacing.south(), 32) as IBlockPos;
    if (!w.remote && !isNull(def) && def.id == "twilightforest:adherent" &&  w.getEntitiesWithinAABB(IAxisAlignedBB.create(s,e)).length <= 15) {
        var elb as IEntityLivingBase=entity;
        if(elb.health==elb.maxHealth){
        elb.health-= 0.1f;
        <entity:da:imperial_sword>.spawnEntity(w, p);
        }
    }
});
/* 
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "raids:pillager") {
        var elb as IEntityLivingBase=entity;
        event.cancel();
        elb.health-= 25565.1f;
    }
});*/
/*
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if(!w.remote && !isNull(def) && entity instanceof IEntityItem){
                    var item as IEntityItem = entity;
                    if(<item:baubles:max_verstappen>.matches(item.item)){
                    var itembee as IEntityItem = item;
                    entity.server.commandManager.executeCommand(server, "/backup");
        <entity:draconicevolution:entitychaosenergyvortex>.spawnEntity(w, p);
        event.cancel();
                    }}
});
 */
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    var possummon as IBlockPos = IBlockPos.create(p.x, (p.y + 30) as int, p.z);
    if (!w.remote && !isNull(def) && def.id == "twilightforest:kobold" ) {
    val golblin as IEntityLivingBase=event.entity;
    //entity.server.commandManager.executeCommand(server, "/subtitle @p subtitle [{\"text\":\"王国的昔日之辉\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    
    if(golblin.maxHealth >=1000){
        bossopen(entity ,"王国的昔日之辉" , "终焉国王·暮空之主" ,"yellow" ,"aqua");
        //entity.server.commandManager.executeCommand(server, "/title @p title [{\"text\":\"王国的昔日之辉\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
        //entity.server.commandManager.executeCommand(server, "/title @p subtitle [{\"text\":\"终焉国王·暮空之主\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    golblin.setDead(); 
    
        <entity:da:high_king_drake>.spawnEntity(w, possummon);
        }
    }
});

events.register(function(event as EntityLivingDeathEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!entity.world.remote && !isNull(def) && def.id == "da:high_king_drake" && event.damageSource.getTrueSource() instanceof IPlayer) {
        var p2 = event.damageSource.getTrueSource().position; 
        var player as IPlayer =event.damageSource.getTrueSource();
        player.world.catenation()
        .run(function(world, context) {            
            context.data = world.time; 
        send(player,["我赞赏你的勇气，反叛者"]);
        })
        .sleep(40) 
        .then(function(world, context) {            
            send(player,["但是在你我其中一人殒命于此之前，厮杀永不终结！"]);       
        })
        .sleep(40) 
        .then(function(world, context) {            
            send3(player,["终焉国王对你发动了突然袭击！"]); 
        bossopen(entity ,"亡国君主" , "终焉国王·至高圣灵" ,"yellow" ,"aqua");
            <entity:da:high_king>.spawnEntity(w, p2);      
        })
        .start();           
    }
});

events.register(function(event as EntityLivingDeathEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!entity.world.remote && !isNull(def) && def.id == "da:high_king" && event.damageSource.getTrueSource() instanceof IPlayer) {
        var p2 = event.damageSource.getTrueSource().position; 
        var player as IPlayer =event.damageSource.getTrueSource();
        player.world.catenation()
        .run(function(world, context) {            
            context.data = world.time; 
        send2(player,["我知道我现在只是个虚影..."]);
        })
        .sleep(40) 
        .then(function(world, context) {            
            send2(player,["但倘若有重来一次的机会，我一定会在事情最开始的时候就启程守卫我的王国"]);       
        })
        .sleep(40) 
        .then(function(world, context) {            
            send2(player,["我虽不知道你正被何物所注视，但一定不要因为自身稍有实力便目空一物，切莫步入我的后尘！"]);       
        })
        .sleep(40) 
        .then(function(world, context) {            
            send3(player,["国王迈达斯已被击败..."]);     
        })
        .start();           
    }
});



events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    if (!isNull(def) && (def.id == "tconstruct:blueslime"||def.id == "oe:tropical_slime"||def.id == "thaumcraft:thaumslime"||def.id == "twilightforest:maze_slime"||def.id == "tofucraft:tofuslime")) {
        entity.update({"Botania:WorldSpawned": true});
        
    }
});





events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) {
    var i = event.item.item.commandString;
    var p = event.player.position; 
    var w = event.player.world;
    var bop = w.getBiome(event.player.position);
    if (!event.player.world.remote) { 
        if((["additions:fxt-notruice"] as string[]) has event.item.item.definition.id){
            if (bop.isSnowyBiome){
                event.cancel();
                var entity as IEntity = event.player;
                var player as IPlayer =entity;
                player.world.catenation()
                .run(function(world, context) {            
                    context.data = world.time; 
                    send5(player,["风雪呼啸而过...."]);
                    player.server.commandManager.executeCommand(server,"weather thunder");
                })
                .sleep(80) 
                .then(function(world, context) {            
                    send4(player,["冰霜巨口已现身！"]);    
                    bossopen(entity ,"假寐巨兽" , "冰霜巨口" ,"aqua" ,"darkaqua");   
                })
                .sleep(20) 
                .then(function(world, context) {     
                    <entity:mowziesmobs:frostmaw>.spawnEntity(w, p);   
                })
                .start();
            }else{
                event.player.sendStatusMessage(format.red("没有生物回应你的呼唤，或许你应该在更寒冷的地方尝试一下"));
            }
        }
    }
});

events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) {
    var i = event.item.item.commandString;
    var p = event.player.position; 
    var w = event.player.world;
    var bop = w.getBiome(event.player.position);
    if (!event.player.world.remote) { 
        if((["thaumcraft:void_seed"] as string[]) has event.item.item.definition.id){
            if (bop.name.contains("Jungle")){
                event.cancel();
                var entity as IEntity = event.player;
                var player as IPlayer =entity;
                player.world.catenation()
                .run(function(world, context) {            
                    context.data = world.time; 
                    send2(player,["丛林躁动不安...."]);
                    player.server.commandManager.executeCommand(server,"weather clear");
                })
                .sleep(80) 
                .then(function(world, context) {            
                    send4(player,["虚空之花破土而出！"]);       
                })
                .sleep(20) 
                .then(function(world, context) {     
                    <entity:da:void_blossom>.spawnEntity(w, p);  
                })
                .start();
            }else{
                event.player.sendStatusMessage(format.red("没有生物回应你的呼唤，或许你应该在更湿热的地方尝试一下"));
            }
        }
    }
});

events.onItemToss (function (event as crafttweaker.event.ItemTossEvent) { 
    var p = event.player.position; 
    var w = event.player.world;
    if (!event.player.world.remote) { 
        if((["additions:fxt-breaksword"] as string[]) has event.item.item.definition.id){
            event.cancel();
            var entity as IEntity = event.player;
            var player as IPlayer =entity;
            player.world.catenation()
            .run(function(world, context) {            
                context.data = world.time; 
                send4(player,["背叛者的遗失之物吸引了地下深处那武者的敌意...."]);
            })
            .sleep(80) 
            .then(function(world, context) {            
                send4(player,["钢铁守护者已苏醒！"]);    
                bossopen(entity ,"钢铁守护者" , "千锻骑士·故国护卫" ,"aqua" ,"gray");   
            })
            .sleep(20) 
            .then(function(world, context) {     
                <entity:mowziesmobs:ferrous_wroughtnaut>.spawnEntity(w, p);   
            })
            .start(); 
            }}});


events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "da:great_wyrk" ) {
    entity.world.catenation()
                    .run(function(world, context) {            
                    context.data = world.time; 
                    entity.server.commandManager.executeCommand(server, "/tellraw @p [{\"text\":\"你感受到地下传来了震动...\",\"color\":\"dark_blue\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
                    })
                    .sleep(20) 
                    .then(function(world, context) {
                    entity.server.commandManager.executeCommand(server, "/playsound t_en_ms_music_records:snowstorm master @p 1 1 1 50 1.0 1.0");   
                    })
                    .sleep(60) 
                    .then(function(world, context) {
                    bossopen(entity ,"霜堡囚徒" , "亘古寒灵" ,"dark_purple" ,"dark_aqua");   
                    })
                    .start();   
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "minecraft:wither" ) {
    entity.world.catenation()
                    .run(function(world, context) {            
                    context.data = world.time; 
                    entity.server.commandManager.executeCommand(server, "/tellraw @p [{\"text\":\"无数灵魂的哀嚎响彻下界\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
                    })
                    .sleep(80) 
                    .then(function(world, context) {
                     entity.server.commandManager.executeCommand(server, "/tellraw @p [{\"text\":\"你感觉有灵魂攀上了你的脊背\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");     
                    })
                    .sleep(120) 
                    .then(function(world, context) {
                    bossopen(entity ,"古战遗躯" , "凋灵" ,"red" ,"white");   
                    })
                    .start();   
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "atum:pharaoh" ) {
    bossopen(entity ,"遗尘君主" , "法老" ,"yellow" ,"gold"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "rats:black_death" ) {
    bossopen(entity ,"中世之灾" , "黑死神" ,"black" ,"gray"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && def.id == "rats:neo_ratlantean" ) {
    bossopen(entity ,"血脉重唤" , "新·鼠西族" ,"white" ,"aqua"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "thaumcraft:eldritchgolem"||def.id == "thaumicaugmentation:eldritch_golem") ) {
    bossopen(entity ,"旋塔巨像" , "邪术构装体" ,"dark_purple" ,"dark_purple"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "thaumcraft:eldritchwarden"||def.id == "thaumicaugmentation:eldritch_warden") ) {
    bossopen(entity ,"虚域邪徒" , "邪术典狱官" ,"dark_purple" ,"dark_purple"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "abyssalcraft:dragonboss") ) {
    bossopen(entity ,"堕落的疫染龙裔" , "阿索拉" ,"dark_green" ,"dark_aqua"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "abyssalcraft:chagaroth") ) {
        entity.world.catenation()
                    .run(function(world, context) {            
                    bossopen(entity ,"Beast-???" , "人類惡 發掘" ,"dark_red" ,"dark_red"); 
                    })
                    .sleep(60) 
                    .then(function(world, context) {
                    bossopen(entity ,"恐惧之兽" , "查伽洛斯" ,"dark_red" ,"dark_red");   
                    })
                    .start(); 
    }
});


events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "abyssalcraft:shadowboss") ) {
    bossopen(entity ,"末日先驱" , "撒托斯之影" ,"black" ,"black"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "abyssalcraft:jzahar") ) {
    entity.server.commandManager.executeCommand(server, "/title @p title [{\"text\":\"守门人扎哈尔\",\"color\":\"dark_gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    entity.server.commandManager.executeCommand(server, "/title @p subtitle [{\"text\":\"深渊do之dong\",\"color\":\"dark_blue\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":true}]");
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:naga") ) {
    bossopen(entity ,"失智巨蛇" , "娜迦" ,"green" ,"dark_green"); 
    }
});
/*
events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    var elb as IEntityLivingBase = entity;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:lich") && (!elb.isPotionActive(<potion:minecraft:jump_boost>) )) {
    elb.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(100000, 1, false, false));
    bossopen(entity ,"贪恋永生而背叛之人" , "巫妖·皇家死亡法师" ,"gray" ,"dark_gray"); 
    }
});
 */
/* 
events.register(function(event as EntityLivingDeathEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!entity.world.remote && !isNull(def) && def.id == "twilightforest:lich" && event.damageSource.getTrueSource() instanceof IPlayer) {
        var p2 = event.damageSource.getTrueSource().position; 
        var player as IPlayer =event.damageSource.getTrueSource();
        player.world.catenation()
        .run(function(world, context) {            
            context.data = world.time; 
        send(player,["不够...时间还是不够..."]);
        })
        .sleep(60) 
        .then(function(world, context) {            
            send(player,["刚才只是我状态不好....实验提前进入最后阶段，你休想阻止我进行研究"]);       
        })
        .sleep(60) 
        .then(function(world, context) {            
            send(player,["我的同僚们因试图阻止我而付出惨痛的代价，而你将会是下一个！"]);       
        })
        .sleep(60) 
        .then(function(world, context) {            
            send3(player,["护命匣已毁，死亡法师将亲自与你决斗！"]); 
            bossopen(entity ,"皇家死亡法师" , "巫妖夜影" ,"gray" ,"dark_gray");
            <entity:da:night_lich>.spawnEntity(w, p2);      
        })
        .start();           
    }
});*/

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:yeti_alpha") ) {
    bossopen(entity ,"族群捍卫者" , "雪怪首领" ,"dark_aqua" ,"aqua"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:snow_queen") ) {
    bossopen(entity ,"失情之人" , "冰雪女王" ,"dark_blue" ,"blue"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:minoshroom") ) {
    bossopen(entity ,"万古不变的迷菇...？" , "米诺菇" ,"dark_red" ,"red"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:hydra") ) {
    bossopen(entity ,"食火者" , "九头蛇" ,"dark_red" ,"red"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:knight_phantom") ) {
    bossopen(entity ,"寄骸蠕形" , "伪·幻影骑士" ,"red" ,"gray"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "twilightforest:ur_ghast") ) {
    bossopen(entity ,"试验品-恸哭" , "暮初恶魂" ,"yellow" ,"dark_aqua"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "da:ancient_fallen") ) {
    bossopen(entity ,"迷失守护者" , "堕落骑士·风暴之眼" ,"dark_purple" ,"green"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "da:flame_knight") ) {
    bossopen(entity ,"逆反守护者" , "焚焰骑士·叛者冠军" ,"red" ,"gold"); 
    }
});

events.register(function(event as EntityJoinWorldEvent) {
    val entity = event.entity;
    val def = entity.definition;
    var p = entity.position; 
    var w = entity.world;
    if (!w.remote && !isNull(def) && (def.id == "da:void_blossom") ) {
    bossopen(entity ,"丛生恶植" , "虚空之花" ,"dark_green" ,"light_purple"); 
    }
});