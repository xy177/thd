
#loader crafttweaker reloadableevents
//#ikwid
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){ 
    //if(isNull(player.offHandHeldItem.definition.ores))return;
    
var item  as IItemStack = event.item;
var player as IPlayer = event.player;
var mainItem as IItemStack = player.mainHandHeldItem;
var offItem as IItemStack = player.offHandHeldItem;
if(!isNull(offItem) &&!isNull(mainItem) &&!isNull(player.mainHandHeldItem.definition.ores))&&(!isNull(player.offHandHeldItem.definition.ores)){
var itema = player.mainHandHeldItem.definition.ores;
var itemb = player.offHandHeldItem.definition.ores;

if ((itema has <ore:RightAttackTic>)&&(itemb has <ore:DualHolding>)){
event.cancel();
event.player.sendStatusMessage(format.red("不可在持有副手近战武器的情况下使用主手进行远程攻击 "));
}else {
    print("null");
}
}else {
     print("null");
}}
);