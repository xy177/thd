#reloadable

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.world.IFacing;
import crafttweaker.command.ICommandSender;
import crafttweaker.text.ITextComponent;
import crafttweaker.world.IBiome;
import crafttweaker.world.IBiomeType;
import crafttweaker.world.IWorld;
import crafttweaker.item.IIngredient;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.item.IMutableItemStack;

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    
     var player as IPlayer = event.player;
    if (!isNull(player.currentItem)) {
        var item = player.currentItem;
        if (TicLib.isBoomTool(item)) {
            if (!(TicTraitLib.hasTicTrait(item, "boomstickcalc"))) {
                TicTraitLib.addTicTraitex(item, "boomstickcalc", 0xf6f5ec, 1);
            }
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    
     var player as IPlayer = event.player;
    if (!isNull(player.currentItem)) {
        var item = player.currentItem;
        if (TicLib.isKhopesh(item)) {
            if (!(TicTraitLib.hasTicTrait(item, "akanamagic"))) {
                TicTraitLib.addTicTraitex(item, "akanamagic", 0xcfcfcf, 1);
            }
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    
     var player as IPlayer = event.player;
    if (!isNull(player.currentItem)) {
        var item = player.currentItem;
        if (TicLib.isScythe(item)) {
            if (!(TicTraitLib.hasTicTrait(item, "maizosja"))) {
                TicTraitLib.addTicTraitex(item, "maizosja", 0xcfcfcf, 1);
            }
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    
     var player as IPlayer = event.player;
    if (!isNull(player.currentItem)) {
        var item = player.currentItem;
        if (TicLib.isGladius(item)) {
            if (!(TicTraitLib.hasTicTrait(item, "superhot"))) {
                TicTraitLib.addTicTraitex(item, "superhot", 0xDC143C, 1);
            }
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    
     var player as IPlayer = event.player;
    if (!isNull(player.currentItem)) {
        var item = player.currentItem;
        if (TicLib.isGreatsword(item)) {
            if (!(TicTraitLib.hasTicTrait(item, "powerup"))) {
                TicTraitLib.addTicTraitex(item, "powerup", 0xDC143C, 1);
            }
        }
    }
});