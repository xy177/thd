//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建新注册表
val shiyan = LootTweaker.newTable("minecraft:chests/shiyan");

val sub_shiyan = shiyan.addPool("SHIYAN", 7, 9, 1, 2);

sub_shiyan.addItemEntry(<minecraft:paper>, 200, 14);
sub_shiyan.addItemEntry(<iceandfire:manuscript>, 200, 3);
sub_shiyan.addItemEntry(<minecraft:web>, 350, 1);
sub_shiyan.addItemEntry(<harvestcraft:groiledcheesesandwichitem>, 80, 1);
sub_shiyan.addItemEntry(<minecraft:elytra>, 15, 1);
sub_shiyan.addItemEntry(<additions:fxt-notruice>, 5, 1);
sub_shiyan.addItemEntry(<additions:fxt-breaksword>, 5, 1);
sub_shiyan.addItemEntry(<futuremc:netherite_scrap>, 10, 1);