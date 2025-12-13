/*import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import mods.yourmod.BrushableTileEntity; // 替换为实际的modid
import mods.yourmod.TreasureData; // 替换为实际的modid

events.onBlockPlace(function(event as BlockPlaceEvent) {
    val player as IPlayer =event.player;
    val placedAgainst as IBlockState =event.placedAgainst

    var world as IWorld = player.world;
    var pos as IBlockPos = placedAgainst.block.position;

    // 检查是否为服务器端
    if (!world.remote) {
        // 检查放置者是否为玩家且处于创造模式
        if (player instanceof IPlayer) {
                // 获取TileEntity并检查类型
                var tile = world.getTileEntity(pos) as BrushableTileEntity;
                if (tile != null) {
                    // 获取结构列表并随机选择一个
                    var structures = TreasureData.getStructureList();
                    var randIndex = world.random.nextInt(structures.size());
                    var selectedStructure = structures.get(randIndex);
                    // 初始化宝藏
                    tile.initTreasure(selectedStructure);
                }
            
        }
    }
});*/