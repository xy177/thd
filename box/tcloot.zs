//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建新注册表
val tc1 = LootTweaker.newTable("minecraft:chests/tc1");

val sub_tc1 = tc1.addPool("TC", 9, 17, 5, 9);

sub_tc1.addItemEntry(<thaumcraft:curio:7>*64, 40, 50);
sub_tc1.addItemEntry(<thaumcraft:curio:7>*32, 30, 50);
sub_tc1.addItemEntry(<thaumcraft:curio:7>*16, 40, 10);
sub_tc1.addItemEntry(<thaumcraft:curio:7>, 10, 10);
sub_tc1.addItemEntry(<harvestcraft:cheeseburgeritem>*2, 20, 2);
sub_tc1.addItemEntry(<thaumicwonders:primordial_grain>, 1, 1);