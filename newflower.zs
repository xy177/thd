#reloadable

#loader contenttweaker

import mods.randomtweaker.cote.ISubTileEntity;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityMob;
import crafttweaker.entity.IEntityAnimal;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.ISubTileEntityGenerating;
import mods.randomtweaker.cote.ISubTileEntityFunctional;
import crafttweaker.player.IPlayer;
import mods.zenutils.DataUpdateOperation.OVERWRITE;
import mods.zenutils.DataUpdateOperation.APPEND;
import mods.zenutils.DataUpdateOperation.MERGE;
import mods.zenutils.DataUpdateOperation.REMOVE;
import mods.zenutils.DataUpdateOperation.BUMP;
import crafttweaker.world.IFacing;
import mods.randomtweaker.cote.SubTileEntityInGame;
import mods.randomtweaker.cote.BlockActivated;
import mods.randomtweaker.cote.Update;
import mods.randomtweaker.utils.ITileData;
import mods.contenttweaker.Commands;
import mods.botania.Apothecary;


import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerUseHoeEvent; 
 
 

import crafttweaker.event.ItemTossEvent;
 
import crafttweaker.entity.IEntityDefinition;
 
import mods.ctutils.utils.Math; 

import native.net.minecraft.entity.Entity;
import native.com.deeperdepths.common.entities.EntityWindCharge;
import native.thaumcraft.common.entities.EntityFluxRift;
import native.net.minecraft.entity.item.EntityItem;
import native.net.minecraft.item.ItemStack;

import crafttweaker.item.IItemStack;
//彻蔓兰
var sancho as ISubTileEntityFunctional = VanillaFactory.createSubTileFunctional("sancho", 0xd71345);
sancho.maxMana = 14000;
sancho.onUpdate = function(subtile, world, pos) {
    if(!world.remote) {
        if(isNull(subtile.data.time))
            subtile.updateCustomData({time : 0});

        if(!isNull(subtile.data.time)) {
            subtile.updateCustomData({time : subtile.data.time.asInt() + 1});
            if(subtile.data.time.asInt() >= 100){
                var pos as IBlockPos = IBlockPos.create(pos.x, pos.y, pos.z);
                var s = pos.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 5).getOffset(IFacing.north(), 5) as IBlockPos;
                var e = pos.getOffset(IFacing.down(), 2).getOffset(IFacing.east(), 5).getOffset(IFacing.south(), 5) as IBlockPos;
                var entities = world.getEntitiesInArea(s.asPosition3f(), e.asPosition3f()) as IEntity[];
                for entity in entities {
                     var data as IData = world.getBlock(pos).data;
    var mana as int = data.subTileCmp.mana.asInt();
    if(mana > 6000) {
                    if((entity instanceof IEntityLivingBase)&& !(entity instanceof IPlayer)){
                        var living as IEntityLivingBase = entity;
                        if (!living.isPotionActive(<potion:bloodarsenal:bleeding>)){
         living.addPotionEffect(<potion:bloodarsenal:bleeding>.makePotionEffect(120 , 2));
         subtile.consumeMana(6000);
         subtile.updateCustomData(subtile.data + {time : 0});
    }else{
        subtile.updateCustomData(subtile.data + {time : 90});
    }
                            
                    }else{subtile.updateCustomData(subtile.data + {time : 90});}  }
                    else{ subtile.updateCustomData(subtile.data + {time : 90});}
                }
            }
        }
    }
};
sancho.register();

//悔匣椿（祖宗发射器）
var fluxrift as ISubTileEntityFunctional = VanillaFactory.createSubTileFunctional("fluxrift", 0x6950a1);
fluxrift.maxMana = 60000;
fluxrift.onUpdate = function(subtile, world, pos) {
    if(!world.remote) {
        if(isNull(subtile.data.time))
            subtile.updateCustomData({time : 0});

        if(!isNull(subtile.data.time)) {
            subtile.updateCustomData({time : subtile.data.time.asInt() + 1});
            if(subtile.data.time.asInt() >= 200){
                var posflux as IBlockPos = IBlockPos.create(pos.x, (pos.y + 15) as int, pos.z);
                var pos as IBlockPos = IBlockPos.create(pos.x, pos.y, pos.z);
                var data as IData = world.getBlock(pos).data;
    var mana as int = data.subTileCmp.mana.asInt();
if(mana > 15000) {       
 val fluxrifta = <entity:thaumcraft:fluxrift>;
val entity = fluxrifta.spawnEntity(world, posflux);
(entity.native as EntityFluxRift).setRiftStability(0.0f);
(entity.native as EntityFluxRift).setRiftSize(100); 
 <entity:thaumcraft:causalitycollapser>.spawnEntity(world,posflux);   
 subtile.updateCustomData(subtile.data + {time : 0});     
                      }
 else{ subtile.updateCustomData(subtile.data + {time : 90});}
            }
        }
    }
};
fluxrift.register();

//溺泉葙
/* var beechange as ISubTileEntityFunctional = VanillaFactory.createSubTileFunctional("beechange", 0xFFFFFF);
beechange.maxMana = 6666;
beechange.onUpdate = function(subtile, world, pos) {
    if(!world.remote) {
        
            // subtile.updateCustomData({time : subtile.data.time.asInt() + 1});
            var pos as IBlockPos = IBlockPos.create(pos.x, pos.y, pos.z);
            var s = pos.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 2).getOffset(IFacing.north(), 2) as IBlockPos;
            var e = pos.getOffset(IFacing.down(), 2).getOffset(IFacing.east(), 2).getOffset(IFacing.south(), 2) as IBlockPos;
            var entities = world.getEntitiesInArea(s.asPosition3f(), e.asPosition3f()) as IEntity[];
            for entity in entities {
                if(entity instanceof IEntityItem){
                    var item as IEntityItem = entity;
                    if(item.item.definition.id == "forestry:bee_drone_ge"){
                    var itembee as IEntityItem = item;
                        var ist as IItemStack  = itembee.item;
                        var tags as IData = ist.tag;
                        itembee.item.mutable().shrink(1);
                       val bee as IItemStack  = <item:forestry:bee_princess_ge>.withTag(tags);
                       world.spawnEntity(bee.createEntityItem(world,pos));
                    }
                }
            }
    }
};
beechange.register();*/


//溺泉葙
var beechange as ISubTileEntityFunctional = VanillaFactory.createSubTileFunctional("beechange", 0xecb049);
beechange.maxMana = 1200000;
beechange.onUpdate = function(subtile, world, pos) {
   
         if(!world.remote) {
        if(isNull(subtile.data.time))
            subtile.updateCustomData({time : 11990});

        if(!isNull(subtile.data.time)) {
            subtile.updateCustomData({time : subtile.data.time.asInt() + 1});
            if(subtile.data.time.asInt() >= 12000){
                var data as IData = world.getBlock(pos).data;
    var mana as int = data.subTileCmp.mana.asInt();
                if(mana > 1000000) { 
            var pos as IBlockPos = IBlockPos.create(pos.x, pos.y, pos.z);
            var s = pos.getOffset(IFacing.up(), 2).getOffset(IFacing.west(), 2).getOffset(IFacing.north(), 2) as IBlockPos;
            var e = pos.getOffset(IFacing.down(), 2).getOffset(IFacing.east(), 2).getOffset(IFacing.south(), 2) as IBlockPos;
            var entities = world.getEntitiesInArea(s.asPosition3f(), e.asPosition3f()) as IEntity[];
            for entity in entities {
                if(entity instanceof IEntityItem){
                    var item as IEntityItem = entity;
                    if(<item:forestry:bee_drone_ge>.matches(item.item)){
                    var itembee as IEntityItem = item;
                        var ist as IItemStack  = itembee.item;
                        var tags as IData = ist.tag;
                        itembee.item.mutable().shrink(1);
                       val bee as IItemStack  = <item:forestry:bee_princess_ge>.withTag(tags);
                       world.spawnEntity(bee.createEntityItem(world,pos));
                       subtile.updateCustomData(subtile.data + {time : 0});
                    }}}}     
else{ subtile.updateCustomData(subtile.data + {time : 11990});}
            }
            }
    }
};
beechange.register();
