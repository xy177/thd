//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建名为gate1的新注册表
val slime = LootTweaker.newTable("minecraft:chests/slime");
//向gate1中添加组GOLD，后四个分别为最小抽取量，最大抽取量，最小额外抽取量，最大额外抽取量，同时将GOLD储存在临时变量sub_gate1中
val slime2 = slime.addPool("slime", 4, 7, 1, 2);
//向临时变量subgate1中添加物品，后缀数值为权重与幸运影响
slime2.addItemEntry(<minecraft:slime_ball>*16, 1, 5);
slime2.addItemEntry(<tconstruct:slime_sapling>*6, 2, 10);
slime2.addItemEntry(<tconstruct:slime_sapling:1>*6, 3, 10);
slime2.addItemEntry(<tconstruct:slime_sapling:2>*6, 4, 10);
slime2.addItemEntry(<tconstruct:materials:9>*3, 5, 8);
slime2.addItemEntry(<tconstruct:materials:10>*3, 6, 8);
slime2.addItemEntry(<tconstruct:materials:11>*3, 7, 8);
slime2.addItemEntry(<tconstruct:ingots:3>*5, 5, 1);
slime2.addItemEntry(<beto:slimebones>*3, 5, 1);
slime2.addItemEntry(<harvestcraft:seedenergygelitem>*11, 5, 1);