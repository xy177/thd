//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
//创建名为nethersys的新注册表
val nethersys = LootTweaker.newTable("minecraft:chests/nethersys");
//向nethersys中添加组GOLD，后四个分别为最小抽取量，最大抽取量，最小额外抽取量，最大额外抽取量，同时将GOLD储存在临时变量sub_nethersys中
val sub_nethersys = nethersys.addPool("SYs", 4, 7, 1, 2);
//向临时变量subnethersys中添加物品，后缀数值为权重与幸运影响
sub_nethersys.addItemEntry(<appliedenergistics2:controller>*6, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material>*14, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material>*8, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material>*3, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material:39>*1, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material:52>*1, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:molecular_assembler>*1, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:drive>*1, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material:27>*8, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:material:30>*8, 40, 5);
sub_nethersys.addItemEntry(<appliedenergistics2:storage_cell_4k>.withTag({"@0": 64 as long, "#3": {Craft: 0 as byte, Cnt: 64 as long, ForgeCaps: {"distinctdamagedescriptions:dmgdistribution": [{weight: 1.0 as float, type: "ddd_bludgeoning"}]}, id: "appliedenergistics2:controller", Count: 1, Damage: 0 as short, Req: 0 as long}, "@1": 1 as long, "@2": 64 as long, "@3": 64 as long, ic: 193 as long, it: 4 as short, "#0": {Craft: 0 as byte, Cnt: 64 as long, ForgeCaps: {"distinctdamagedescriptions:dmgdistribution": [{weight: 1.0 as float, type: "ddd_bludgeoning"}]}, id: "appliedenergistics2:part", Count: 1, Damage: 56 as short, Req: 0 as long}, "#1": {Craft: 0 as byte, Cnt: 1 as long, ForgeCaps: {"distinctdamagedescriptions:dmgdistribution": [{weight: 1.0 as float, type: "ddd_bludgeoning"}]}, id: "appliedenergistics2:drive", Count: 1, Damage: 0 as short, Req: 0 as long}, "#2": {Craft: 0 as byte, Cnt: 64 as long, ForgeCaps: {"distinctdamagedescriptions:dmgdistribution": [{weight: 1.0 as float, type: "ddd_bludgeoning"}]}, id: "appliedenergistics2:material", Count: 1, Damage: 52 as short, Req: 0 as long}})*1, 4, 5);
