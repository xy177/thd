#ikwid
import crafttweaker.events.IEventManager;

import mods.ctintegration.gamestages.GameStageAddedEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.player.IPlayer;

events.onGameStageAdded(function(event as GameStageAddedEvent){
    var player as IPlayer= event.player;
    var stage = event.gameStage;
    var map as string[int]={
        10.0:"rophocale",
        20.0:"cobalt",
        50.0:"draconic",
       90.0:"developer",
        150.0:"chaotic",
        200.0:"infinity",
    };
    if(isNull(stage)){
        return;
    }
    for i,j in map{
        if(stage == j){
            DifficultyManager.setDifficulty(player,i);
            event.player.sendRichTextMessage(format.red("你的游戏难度被设置为了"+i));
        }
    }
});