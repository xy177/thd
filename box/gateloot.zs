//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建名为gate1的新注册表
val gate1 = LootTweaker.newTable("minecraft:chests/gate1");
//向gate1中添加组GOLD，后四个分别为最小抽取量，最大抽取量，最小额外抽取量，最大额外抽取量，同时将GOLD储存在临时变量sub_gate1中
val sub_gate1 = gate1.addPool("GOLD", 4, 7, 1, 2);
//向临时变量subgate1中添加物品，后缀数值为权重与幸运影响
sub_gate1.addItemEntry(<minecraft:obsidian>, 40, 5);
sub_gate1.addItemEntry(<minecraft:flint_and_steel>, 40, 5);
sub_gate1.addItemEntry(<minecraft:iron_nugget>, 0, 5);
sub_gate1.addItemEntry(<minecraft:iron_nugget>*5, 10, 3);
sub_gate1.addItemEntry(<minecraft:iron_nugget>*8, 5, 1);
sub_gate1.addItemEntry(<minecraft:fire_charge>, 40, 5);
sub_gate1.addItemEntry(<minecraft:flint>, 40, 5);
sub_gate1.addItemEntry(<minecraft:golden_chestplate>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_pickaxe>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_helmet>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_boots>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_shovel>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_boots>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_axe>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_apple>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_hoe>, 15, 5);
sub_gate1.addItemEntry(<minecraft:gold_nugget>, 15, 5);
sub_gate1.addItemEntry(<minecraft:golden_sword>, 15, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>, 5, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*7, 1, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*6, 2, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*5, 3, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*4, 4, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*3, 5, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*2, 6, 5);
sub_gate1.addItemEntry(<minecraft:gold_ingot>*1, 7, 5);
sub_gate1.addItemEntry(<minecraft:clock>, 5, 5);
sub_gate1.addItemEntry(<minecraft:golden_carrot>, 5, 5);
sub_gate1.addItemEntry(<thermalfoundation:horse_armor_electrum>, 5, 5);
sub_gate1.addItemEntry(<minecraft:speckled_melon>, 5, 5);
sub_gate1.addItemEntry(<minecraft:light_weighted_pressure_plate>, 5, 5);
sub_gate1.addItemEntry(<futuremc:bell>, 1, 5);
sub_gate1.addItemEntry(<minecraft:golden_apple:1>, 1, 5);
sub_gate1.addItemEntry(<minecraft:gold_block>, 1, 5);