#loader mixin
import native.net.minecraft.world.World;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.entity.EntityLivingBase;
import native.net.minecraft.item.ItemStack;
import native.net.minecraft.entity.player.EntityPlayer;
import native.suike.suikecherry.block.BrushableTileEntity;
import native.suike.suikecherry.data.TreasureData;
import native.java.util.List;
import mixin.CallbackInfo;

#mixin {targets: "suike.suikecherry.block.ModBlockBrushable"}
zenClass MixinModBlockBrushable {
    #mixin Inject {method: "onBlockPlacedBy(Lnet/minecraft/world/World;Lnet/minecraft/util/math/BlockPos;Lnet/minecraft/block/state/IBlockState;Lnet/minecraft/entity/EntityLivingBase;Lnet/minecraft/item/ItemStack;)V", at: {value: "HEAD"}, cancellable: true}
    function removeCreativeModeRestriction(world as World, pos as BlockPos, state as IBlockState, placer as EntityLivingBase, stack as ItemStack, ci as CallbackInfo) as void {
        if (!world.isRemote) {
            // 取消创造模式限制，所有玩家放置都初始化宝藏
            if (placer instanceof EntityPlayer) {
                BrushableTileEntity tile = (BrushableTileEntity) world.getTileEntity(pos);
                if (tile != null) {
                    List<TreasureData.Structure> structures = TreasureData.getStructureList();
                    tile.initTreasure(structures.get(world.rand.nextInt(structures.size())));
                }
            }
        }
        // 取消原方法执行，使用我们重写的逻辑
        ci.cancel();
    }
}