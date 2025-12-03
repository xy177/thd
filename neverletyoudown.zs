#loader crafttweaker reloadableevents
#ignoreBracketErrors
#reloadable
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;

import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.util.Position3f;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IBlockPos;

import crafttweaker.events.IEventManager;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.text.ITextComponent;

function send(p as IPlayer,s as string[]){
    for i in s{
        p.sendRichTextMessage(format.red(i));
    }
}

events.onPlayerChangedDimension(function (event as PlayerChangedDimensionEvent){
    var player as IPlayer = event.player;
    var goto as IWorld = event.toWorld;
        var bed as IBlockPos   = player.bedLocation;
    if(goto.getDimension() == -1 ){
        player.sendRichTextMessage(format.red("下界里的那个绿色的泰伯利亚矿石的相关bug已被修复，但挖掘是请仍旧小心爆炸不小心把自己炸死（应该不会有人被炸死吧）"));
    }
    if(goto.getDimension() == 1 && !player.hasGameStage("draconic")){
        player.sendRichTextMessage(format.red("在你抵达末地的一瞬间你的灵魂被末地深处那混沌的力量粉碎了，制作破旧的电路板并提交任务以再次增强你的灵魂"));
        player.setDimension(4);
        player.health -= player.maxHealth;
    }
});

//events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent){
   // var i as IPlayer = event.player;{
        //if(!i.hasGameStage("cobalt")) {
           // i.sendRichTextMessage(format.red("你现在没有达成阶段，直接进入地狱意味着死亡！"));
       // }
   //}
//});

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent){
    var p as IPlayer = event.player;/*
    if (!p.world.remote){
    p.server.commandManager.executeCommand(p,"reloadTrait");} */
    if(p.hasGameStage("infinity")){
        send(p,["你现在处于第五阶段（无尽阶段）","此阶段你的目标只有一个————亲手制作出无尽（而不是止步于领取任务奖励的无尽）","↓进入存档时下方可能输出错误信息，此信息不会影响游戏运行，若有解决此信息对应问题的方式恳请您与我联系"]);
        return;
    }
    if(p.hasGameStage("chaotic")){
        send(p,["你现在处于第四阶段（混沌阶段）","此阶段无法制作无尽催化剂，制作简易启动装置并提交任务才能进入下一阶段","↓进入存档时下方可能输出错误信息，此信息不会影响游戏运行，若有解决此信息对应问题的方式恳请您与我联系"]);
        return;
    }
    if(p.hasGameStage("draconic")){
        send(p,["你现在处于第三阶段（末地阶段）","此阶段无法使用混沌碎片，制作简易启动装置并提交任务才能进入下一阶段","↓进入存档时下方可能输出错误信息，此信息不会影响游戏运行，若有解决此信息对应问题的方式恳请您与我联系"]);
        return;
    }
    if(p.hasGameStage("cobalt")){
        send(p,["你现在处于第二阶段（下界阶段）","此阶段进入末地会暴毙，需要制作破旧的电路板并提交任务才能进入下一阶段","↓进入存档时下方可能输出错误信息，此信息不会影响游戏运行，若有解决此信息对应问题的方式恳请您与我联系"]);
        return;
    }
    else send(p,["你现在处于第一阶段（初始阶段）","此阶段进入末地会暴毙且无法飞行，需要制作匠心石并提交任务才能进入下一阶段","↓进入存档时下方可能输出错误信息，此信息不会影响游戏运行，若有解决此信息对应问题的方式恳请您与我联系"]);
});

//events.onCommand(function(event as CommandEvent){
  //  if(event.commandSender instanceof IPlayer){
    //    var player as IPlayer = event.commandSender;
      //  if(player.creative) return; 
        //if(player.name =="playername" && player.uuid == "playerid") return;
        //var name as string[]=["tp","give"];
        //for i in name{
          //  if(event.command.name==i){
            //    event.cancel();
              //  send(player,["额...想用这个指令？你认真的？没在逗我？"]);
           // }
        //}
   // }
//});

/*events.onBlockBreak(function(event as BlockBreakEvent){   //建立方块破坏事件，用event获取
var mod as string[]=[
    "projecte",
    "torcherino",
    "bacterium",
    "lolipickaxe",
    "xijun",
    "bacteria"
];
    var block as IBlock = event.block;  //建立IBlock对象
    var player as IPlayer = event.player;   //建立IPlayer对象
    for i in mod
    if(!isNull(block)){   //如果方块不为空
        if(loadedMods in i){  
           event.cancel();  //取消事件（只有部分实现了取消事件的接口，要注意查看）
           event.player.sendStatusMessage(format.red("emmm...挖不了东西了对吧？让我猜猜...你加模组了？这年头居然还有魔改整合包不私加模组就玩不下去的人存在？算了，把截图发群里然后艾特星雨，他会告诉你该怎么解除这个。"));  //给予提示
        }
    }
});
*/
events.onBlockBreak(function(event as BlockBreakEvent){   //建立方块破坏事件，用event获取
    var block as IBlock = event.block;  //建立IBlock对象
    var player as IPlayer = event.player;   //建立IPlayer对象
    if(!isNull(block) && block.definition.id == "draconicevolution:chaos_crystal"){  
        if(!event.player.hasGameStage("chaotic")){  
           event.cancel();  
           event.player.sendStatusMessage(format.red("你需要进入chaotic阶段才能挖掘此方块"));  
        }
    }
});

//这只是一个测试
//用于搜索定位：生物掉落物
// <entity:minecraft:sheep>.addPlayerOnlyDrop(<minecraft:diamond> % 100);
//<entity:minecraft:skeleton>.removeDrop(<distinctdamagedescriptions:recorddistinction>);
<entity:twilightforest:naga>.addPlayerOnlyDrop(<additions:fxt-naga_scale_armor>*12 % 100);

<entity:twilightforest:wild_boar>.addPlayerOnlyDrop(<additions:delight-wild_boar>*5 % 100);
<entity:twilightforest:bighorn_sheep>.addPlayerOnlyDrop(<additions:delight-goat_meat>*5 % 100);
<entity:twilightforest:lich>.addPlayerOnlyDrop(<additions:fxt-twfo02>*7 % 100);
<entity:da:night_lich>.addPlayerOnlyDrop(<twilightforest:trophy:1> % 100);
<entity:twilightforest:snow_queen>.addPlayerOnlyDrop(<additions:fxt-twfo03>*8 % 100);
<entity:twilightforest:knight_phantom>.addPlayerOnlyDrop(<additions:fxt-twfo_07>*3 % 100);
<entity:twilightforest:ur_ghast>.addPlayerOnlyDrop(<additions:fxt-twfo_08>*8 % 100);
<entity:twilightforest:minoshroom>.addPlayerOnlyDrop(<additions:fxt-wtfo_05>*8 % 100);
<entity:twilightforest:minoshroom>.addPlayerOnlyDrop(<additions:fxt-wtfo_05>*8 % 100);
<entity:twilightforest:hydra>.addPlayerOnlyDrop(<additions:fxt-wtfo_06>*5 % 100);
<entity:twilightforest:lich>.addPlayerOnlyDrop(<star_rains_toybox:quanzhang> % 100);
<entity:mod_lavacow:boneworm>.addPlayerOnlyDrop(<mod_lavacow:kings_crown> % 35);
<entity:iceandfire:firedragon>.addPlayerOnlyDrop(<additions:fxt-eggshard_fire>*3 % 100);
<entity:iceandfire:icedragon>.addPlayerOnlyDrop(<additions:fxt-eggshard_ice>*3 % 100);
<entity:iceandfire:lightningdragon>.addPlayerOnlyDrop(<additions:fxt-eggshard_sunder>*3 % 100);
<entity:iceandfire:gorgon>.addPlayerOnlyDrop(<avaritiaitem:medusa>*8 % 100);
<entity:mowziesmobs:ferrous_wroughtnaut>.addPlayerOnlyDrop(<da:ambition_flame> % 100);
<entity:da:flame_knight>.addPlayerOnlyDrop(<additions:fxt-breaksword> % 100);
<entity:mod_lavacow:ghostray>.addPlayerOnlyDrop(<deadguyshallucinationnightmare:phantomfins> % 100);
<entity:minecraft:skeleton>.removeDrop(<distinctdamagedescriptions:recorddistinction>);
//<entity:twilightforest:lich>.removeDrop(<twilightforest:trophy:1>);
<entity:thaumcraft:eldritchgolem>.addPlayerOnlyDrop(<enigmaticlegacy:golem_heart> % 100);
<entity:thaumicaugmentation:eldritch_golem>.addPlayerOnlyDrop(<enigmaticlegacy:golem_heart> % 100);
<entity:ancientbeasts:zealot>.addPlayerOnlyDrop(<enigmaticlegacy:half_heart_mask> % 100);
<entity:twilightforest:tower_golem>.addPlayerOnlyDrop(<enigmaticlegacy:lost_engine> % 20);
<entity:da:flame_knight>.addPlayerOnlyDrop(<enigmaticlegacy:magma_heart> % 100);
<entity:iceandfire:siren>.addPlayerOnlyDrop(<enigmaticlegacy:ocean_stone> % 25);
<entity:iceandfire:seaserpent>.addPlayerOnlyDrop(<enigmaticlegacy:ocean_stone> % 8);
//<entity:extrabotany:voidherrscher>.addPlayerOnlyDrop(<star_rains_toybox:quanzhang> % 100);空律死亡不调用战利品掉落，加掉落物不行
