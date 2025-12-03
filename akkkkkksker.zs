#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerUseHoeEvent; 
 
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos; 
 

import crafttweaker.event.ItemTossEvent;
 
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
 
import mods.ctutils.utils.Math; 
 
function bossopen(e as IEntity ,s1 as string , s2 as string ,c1 as string ,c2 as string){
    e.server.commandManager.executeCommand(server, "/title @p title [{\"text\":\"" + s2 + "\",\"color\":\"" + c2 + "\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    e.server.commandManager.executeCommand(server, "/title @p subtitle [{\"text\":\"" + s1 + "\",\"color\":\"" + c1 + "\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    }



mods.bloodmagic.BloodAltar.removeRecipe(<tconevo:material>);