#ikwid
import crafttweaker.events.IEventManager;
import crafttweaker.world.IBlockPos;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.util.Position3f;

events.onPlayerTick(function(event as PlayerTickEvent){
    var player as IPlayer = event.player;
    var items as IItemStack = player.currentItem;
    val normal = player.warpNormal;
    val temp = player.warpTemporary;
    val perm = player.warpPermanent;
    if(!isNull(items)){
        if(items.definition.id == "thaumcraft:sanity_checker"){
        event.player.sendStatusMessage(format.red("普通："+normal+"|临时："+temp+"|永久："+perm));
    }
}});
