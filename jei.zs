
#reloadable
import crafttweaker.mods.IMod;
import mods.jei.JEI;

val pewter as IMod = loadedMods["pewter"];
for fluidItems in pewter.items {
    JEI.hide(fluidItems);
}

JEI.hide(<thermalexpansion:florb>);
JEI.hide(<openblocks:tank>);
JEI.hide(<forestry:refractory>);


JEI.addDescription(<text:fxt_tinkersstone>,"shift+右键以解锁二阶段");
JEI.addDescription(<text:worncircuitboard>,"依次shift+右键钛金与秘金的原料簇后，shift+右键以解锁三阶段");
JEI.addDescription(<additions:fxt-noob_baby_stone>,"激活撒塔尼斯的诅咒后，shift+右键以解锁二阶段");
JEI.addDescription(<additions:fxt-what_you_see>,"激活撒塔尼斯的诅咒后，shift+右键以解锁四阶段");
JEI.addDescription(<text:fx_remote_control>,"shift+右键以解锁四阶段");
JEI.addDescription(<text:fxt_text_01>,"shift+右键以解锁无尽阶段,激活撒塔尼斯的诅咒后则无法进入无尽阶段");
JEI.addDescription(<text:fxt_controllerof_godx>,"shift+右键以达成完美毕业,激活撒塔尼斯的诅咒后则无法达成");
JEI.addDescription(<additions:fxt-sust_01>,"右键匠心石获得");
JEI.addDescription(<additions:fxt-dust_02>,"激活撒塔尼斯的诅咒后，右键弱化匠心石获得");
JEI.addDescription(<beto:sheldersa>,"右键简易启动装置获得，若激活了撒塔尼斯的诅咒，则改为右键褪色启动装置获得");
JEI.addDescription(<minecraft:cake>,"可通过西瓜在白雏菊处转化获得");
JEI.addDescription(<thaumcraft:void_seed>,"潜行右键以解锁虚空金属");
JEI.addDescription(<additions:fxt-magicdrink>,"潜行使用以增加饰品栏槽位并提升10点生命上限");
JEI.addDescription(<additions:fxt-sky_jiangguo>,"潜行使用以增加饰品栏槽位并提升20点生命上限");
JEI.addDescription(<additions:fxt-enderdragonfruit>,"潜行使用以增加饰品栏槽位并提升30点生命上限");
JEI.addDescription(<enigmaticlegacy:golem_heart>,"击败邪术构装体后必定获得，也可以在不详宝库中获得");
JEI.addDescription(<enigmaticlegacy:lost_engine>,"击败高塔铁傀儡后概率获得，也可以在丛林神庙宝箱中获得");
JEI.addDescription(<enigmaticlegacy:half_heart_mask>,"击败狂热信徒后必定获得，也可以与旅商交易中获得");
JEI.addDescription(<enigmaticlegacy:angel_blessing>,"击败武神女王后必定获得，也可以在不详宝库中获得");
JEI.addDescription(<enigmaticlegacy:earth_heart>,"可以在不详宝库中获得，潜行右键后传送到超平坦维度（量子采石场会在此维度挖掘）");
JEI.addDescription(<enigmaticlegacy:magma_heart>,"击败焚焰骑士后必定获得，也可以与猪灵交易获得");
JEI.addDescription(<additions:fxt-nether_grout>,"可以与猪灵交易获得");
JEI.addDescription(<artifacts:obsidian_skull>,"可以与猪灵交易获得");
JEI.addDescription(<artifacts:magma_stone>,"可以与猪灵交易获得");
JEI.addDescription(<twilightforest:charm_of_keeping_1>,"玩家启用莉莉丝的诅咒后，击杀骷髅德鲁伊，哥布林，死灵书，树篱蜘蛛有概率获得");
JEI.addDescription(<twilightforest:charm_of_keeping_2>,"玩家启用莉莉丝的诅咒后，击杀米诺陶，喷火甲虫，粘液甲虫，夹虫有概率获得");
JEI.addDescription(<enigmaticlegacy:ocean_stone>,"可以在螃蟹对沙子的挖掘中获得，或击杀塞壬与海蟒后概率掉落");
JEI.addDescription(<forestry:pollen_fertile>,"可以在螃蟹挖掘对应品种的树叶后获得");
JEI.addDescription(<additions:fxt-eggshard_fire>,"击败巨龙后获得，也可以在不详宝库中获得");
JEI.addDescription(<additions:fxt-eggshard_ice>,"击败巨龙后获得，也可以在不详宝库中获得");
JEI.addDescription(<additions:fxt-eggshard_sunder>,"击败巨龙后获得，也可以在不详宝库中获得");
JEI.addDescription(<enigmaticlegacy:twisted_core>,"拥有莉莉丝的诅咒时，二阶段后击杀凋零骷髅也可获得");
JEI.addDescription(<enigmaticlegacy:abyssal_heart>,"佩戴七咒之戒击败末影龙后掉落，会悬浮在末影龙死亡的位置");
JEI.addDescription(<thaumcraft:void_seed>,"可以用于在丛林召唤虚空之花");
JEI.addDescription(<astralsorcery:itemfragmentcapsule>,"流星落地后产生");