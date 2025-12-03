import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.All;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.item.IIngredient;


game.setLocalization("zh_cn","item.red_heart_canister.name","红心容器");
<text:red_heart_canister>.displayName = "红心容器";
events.onEntityLivingUseItemFinish(function(event as Finish){
    var item as IItemStack = event.item;
    var player as IPlayer = event.player;
    if(!isNull(item) && item.definition.id == "tinkersaether:dart_shooter"){
    event.player.setCooldown(<tinkersaether:dart_shooter>, 100);
    event.player.sendStatusMessage(format.red("进入冷却"));
 }
}
    );
//display name
game.setLocalization("zh_cn","item.material.name","山铜锭");
<harvestcraft:grinder>.displayName = "研磨机";
game.setLocalization("zh_cn","tile.blockorichalcos.name","山铜块");
<akashictome:tome>.displayName = "阿卡什宝典";
<rustic:crop_stake>.displayName = "木桩";
<multiblockmobs:soul_chassis>.displayName = "魂核";
<diamondbarrels:iron_barrel>.displayName = "铁桶";
<diamondbarrels:diamond_barrel>.displayName = "钻石桶";
<diamondbarrels:obsidian_barrel>.displayName = "黑曜石桶";
<chesttransporter:chesttransporter>.displayName= "木质搬箱器";
<tconstruct:toolforge>.displayName = "工匠砧";
<extrautils2:decorativesolid:8>.displayName = "彩虹石";
<croparia:fire_gem>.displayName = "火元素宝石";
<croparia:fruit_glowstone>.displayName = "荧石果实";
<croparia:seed_crop_glowstone>.displayName = "荧石种子";
<croparia:fruit_nether>.displayName = "地狱砖果实";
<croparia:fruit_xp>.displayName = "经验果实";
<croparia:seed_crop_xp>.displayName = "经验种子";
<croparia:chrome_ingot>.displayName = "铬锭";
<croparia:fruit_chrome>.displayName = "铬果实";
<croparia:seed_crop_chrome>.displayName = "铬种子";
<croparia:ingot_osmium>.displayName = "锇锭";
<croparia:fruit_osmium>.displayName = "锇果实";
<croparia:seed_crop_osmium>.displayName = "锇种子";
<thaumcraft:inlay>.displayName = "红石镶嵌";
<croparia:seed_crop_xp>.displayName = "经验种子";
<croparia:fruit_xp>.displayName = "经验果实";
<botanianeedsit:mana_capacitor_elementium>.displayName = "源质钢充能宝石";
<botanianeedsit:mana_capacitor_elementium:1>.displayName = "源质钢储魔宝石";
<croparia:fire_gem>.displayName = "火元素宝石";
<pewter:molten_sc2>.displayName = "龙蛋蛋花汤";
<pewter:molten_chicken>.displayName = "鸡汤来喽";
<text:empty_canister>.displayName = "心之容器外壳";
<croparia:fruit_nether>.displayName = "地狱砖果实";
<star_rains_toybox:wtfo_10>.displayName = "终兆立方";
<aquaculture:fish:1>.displayName = "小鲈鱼";
<aquaculture:fish:23>.displayName = "巨骨舌鱼";
<minecraft:slime>.displayName = "粘液块";
<star_rains_toybox:quanzhang>.displayName = "附魂权杖";
<beto:fins>.displayName = "鱼鳍替代强化物";
<aquaculture:loot:1>.displayName = "海王锭";
<aquaculture:loot:7>.displayName = "海王恩惠";
<additions:fxt-ranbow_bottol>.displayName = "§b罐§a装§e彩§6虹§k凝§4胶";
<thaumcraft:curio:7>.displayName = "知识碎片";
<arcane_arteries:mana_slate>.displayName = "蕴魔石板";
<arcane_arteries:thaumic_slate>.displayName = "神秘石板";
<arcane_arteries:thaumic_rune>.displayName = "神秘符文";
<arcane_arteries:mana_rune>.displayName = "蕴魔符文";
<arcane_arteries:thaumic_sacrificial_dagger>.displayName = "神秘使牺牲匕首";
<arcane_arteries:botany_sacrificial_dagger>.displayName = "植物学家牺牲匕首";
<arcane_arteries:thaumic_dagger_of_sacrifice>.displayName = "神秘使献祭刀";
<arcane_arteries:botany_dagger_of_sacrifice>.displayName = "植物学家献祭刀";
<thaumicwands:item_wand_cap_pa:1>.displayName = "铋杖端";
<thaumicwands:item_balanced_cluster>.displayName = "平衡碎片";

<croparia:chicken_leg>.displayName = "鸡腿";
<croparia:roast_beef>.displayName = "大块生牛肉";
<croparia:roast_porc>.displayName = "大块生猪肉";

<croparia:cooked_chicken_leg>.displayName = "熟鸡腿";
<croparia:cooked_roast_beef>.displayName = "大块熟牛肉";
<croparia:cooked_roast_porc>.displayName = "大块熟猪肉";

//add tool tip
<actuallyadditions:item_mining_lens>.addTooltip("作为强化物使用时若附近有真空箱子则有失效的风险");
<forestry:ffarm>.addTooltip("林业的农场系列配方已失效");
<thaumcraft:lamp_fertility>.addTooltip("已禁用");
<forestry:ffarm:2>.addTooltip("林业的农场系列配方已失效");
<magicbees:resource:2>.addTooltip("这个是养蜂产物，如果你的目标是肥料的话我建议你把jei往后翻翻");
<tconevo:material:2>.addTooltip("启封板配方已被删除，你无法再修改匠心之作");
<thaumadditions:jar_mithminite>.addTooltip("秘金源质罐子因复制bug已被禁用");
<tconevo:material:2>.addTooltip("启封板配方已被删除，你无法再修改匠心之作");
<xymods:jaou_drago>.addTooltip("容器部分推荐使用铁箱子，稍大的箱子需要特殊的朝向才可生效");
<scalinghealth:heartcontainer>.addTooltip("已禁用右键效果，请用于制作红心容器");
<tconevo:material>.addTooltip("相关配方已禁用，如jei显示其参与配方则请忽视");
<extrautils2:filter>.addTooltip("警告：对其按下shift键可能导致游戏崩溃");
<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}).addTooltip("其合成配方中心为粘液块,jei错误的未显示这一材料");
<extrabotany:combatmaidhelm>.withTag({}).addTooltip("女仆套在被装备的一瞬间会直接消失（但仍可作为合成素材使用）");
<extrabotany:combatmaidlegs>.withTag({}).addTooltip("女仆套在被装备的一瞬间会直接消失（但仍可作为合成素材使用）");
<extrabotany:combatmaidchest>.withTag({}).addTooltip("女仆套在被装备的一瞬间会直接消失（但仍可作为合成素材使用）");
<extrabotany:combatmaidboots>.withTag({}).addTooltip("女仆套在被装备的一瞬间会直接消失（但仍可作为合成素材使用）");
<extrabotany:combatmaidchestdarkened>.withTag({}).addTooltip("女仆套在被装备的一瞬间会直接消失（但仍可作为合成素材使用）");
<text:aurora_block_maker_03>.addTooltip("极光方块生成器要正对铁箱子放(风水.jpg)");
<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 25 as short}]}).addTooltip("屹立不倒附魔已被禁用");
<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 25 as short}]}).addTooltip("屹立不倒附魔已被禁用");
<additions:fxt-goldkey>.addTooltip("材料消耗:2");
<additions:fxt-goldkey2>.addTooltip("材料消耗:2");
<additions:fxt-goldkey3>.addTooltip("材料消耗:2");
<additions:fxt-goldkey4>.addTooltip("材料消耗:2");
<coffeework:coffee_americano_ice>.addTooltip("拿着它在某个灼热的BOSS旁左键空气似乎可以使其冷静下来");
<coffeework:coffee_latte_ice:6>.addTooltip("拿着它在某个灼热的BOSS旁左键空气似乎可以使其冷静下来");
game.setLocalization("zh_cn","item.javelin.name","三叉戟");
<beto:tzignot>.addShiftTooltip("仔细检查,这是一个由纸板做的假东西，希望你能得到一张收据", "出现了，就在今日！\n别按Shift键，它没什么不对劲的地方");

<jmilpol:everlasting_pendant>.removeTooltipLine(1 as int);
<jmilpol:pendant>.removeTooltipLine(1 as int);
<jmilpol:everlasting_pendant>.addTooltip("携带时赋予你死亡不掉落的能力，在物品栏中时也会生效");
<jmilpol:pendant>.addTooltip("死亡后消耗自身保留你的物品，在物品栏中时也会生效");

/*
//电转魔
val energydandron = <botania:specialflower>.withTag({type: "energydandron"});
game.setLocalization("zh_cn","tile.botania:flower.energydandron.name","凝电莠");
energydandron.addTooltip("击穿科学和魔法的边界");
energydandron.addTooltip(format.gold("种植在蕴能之壤上后消耗RF来产生魔力"));
//电转魔方块
game.setLocalization("zh_cn","tile.block_energydandron_capacitor.name","蕴能之壤");
<moreflowers:block_energydandron_capacitor>.addTooltip("将凝电莠种植在它的上面并向此方块输入RF来使凝电莠产魔");
//垃圾桶
val trashonadro = <botania:specialflower>.withTag({type: "trashonadro"});
game.setLocalization("zh_cn","tile.botania:flower.trashonadro.name","循碎茎");
trashonadro.addTooltip("收旧冰箱，旧手机，长头发...");
trashonadro.addTooltip(format.gold("理论上来说是消耗周围3*3的任何掉落物来产生魔力"));
trashonadro.addTooltip(format.gold("但由于每个掉落物只产生1mana因此更多还是当做垃圾桶来用"));
trashonadro.addTooltip(format.gray("但即便如此它也仍旧是产能花而不是功能花"));
//液体转魔<botania:specialflower>.withTag({type: "liquido"})
val liquido = <botania:specialflower>.withTag({type: "liquido"});
game.setLocalization("zh_cn","tile.botania:flower.liquido.name","噬液绣球");
liquido.addTooltip("友好的奇幻甲壳类动物");
liquido.addTooltip(format.gold("消耗特定液体来产生魔力"));
liquido.addShiftTooltip("使用时将所需液体放在位于该花所在坐标的（~，~-1，~-1）处\n转换效率：星能液=50 Mana\n生命源质=200 Mana\n烈焰之炽焱=1000 Mana\n极寒之凛冰=1000 Mana", "按住Shift键显示更多");
//扭曲守护<botania:specialflower>.withTag({type: "warponator"})
val warponator = <botania:specialflower>.withTag({type: "warponator"});
game.setLocalization("zh_cn","tile.botania:flower.warponator.name","护智丁香");
warponator.addTooltip("下面让我们来过一个SanCheck判定");
warponator.addTooltip(format.gold("会耗尽自身魔力给周围玩家10分钟的扭曲守护"));
//灵气产魔<botania:specialflower>.withTag({type: "visonadru"})
val visonadru = <botania:specialflower>.withTag({type: "visonadru"});
game.setLocalization("zh_cn","tile.botania:flower.visonadru.name","噬灵葙");
visonadru.addTooltip("让我们在大神秘使的奥术工作台下面来放一些这个");
visonadru.addTooltip(format.gold("会吸收所处区块的Vis(灵气)来产生魔力"));
//LP产魔<botania:specialflower>.withTag({type: "bloody"})
val bloody = <botania:specialflower>.withTag({type: "bloody"});
game.setLocalization("zh_cn","tile.botania:flower.bloody.name","猩红蔷薇");
bloody.addTooltip("用鲜血和暗影来缔结契约吧");
bloody.addTooltip(format.gold("吸收周围玩家的LP(生命源质)产生魔力"));
//LP产魔<botania:specialflower>.withTag({type: "willy"})
val willy = <botania:specialflower>.withTag({type: "willy"});
game.setLocalization("zh_cn","tile.botania:flower.willy.name","夺识芽");
willy.addTooltip("一切都是日富美的阴谋！");
willy.addTooltip(format.gold("利用恶魔意志产生魔力"));*/
//酿酒厂纠正
game.setLocalization("zh_cn","tile.distiller.name","酒蒸馏器");
<brewcraft:distiller>.addTooltip("将原浆蒸馏为成品酒——记得在下方放置火把或热源用于加热");
game.setLocalization("zh_cn","modifier.bruteforce.desc","§o速度与激情！§r\n你的攻击如此强大，可怜的怪物根本无法承受！\n会被护肝宝覆盖");
