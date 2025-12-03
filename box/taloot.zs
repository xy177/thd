//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建新注册表
val ta1 = LootTweaker.newTable("minecraft:chests/ta1");

val sub_ta1 = ta1.addPool("TA", 4, 7, 1, 2);

sub_ta1.addItemEntry(<waystones:return_scroll>, 200, 5);
sub_ta1.addItemEntry(<waystones:bound_scroll>, 200, 5);
sub_ta1.addItemEntry(<waystones:warp_scroll>, 200, 5);
sub_ta1.addItemEntry(<waystones:warp_stone>, 1, 3);
sub_ta1.addItemEntry(<waystones:waystone>, 1, 1);