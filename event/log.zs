#reloadable
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.event.IEventCancelable;

import crafttweaker.player.IPlayer;
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    server.commandManager.executeCommand(server,"gamerule sendCommandFeedback false");
});

