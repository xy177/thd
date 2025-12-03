//本文件内星辰词条在得到edwin授权后使用
#loader contenttweaker
#priority 99

#modloaded tconstruct



import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import mods.randomtweaker.astralsorcery.AttunementAltar;


import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.zenutils.I18n;
import mods.zenutils.DataUpdateOperation.OVERWRITE;
import mods.zenutils.DataUpdateOperation.APPEND;
import mods.zenutils.DataUpdateOperation.MERGE;
import mods.zenutils.DataUpdateOperation.REMOVE;
import mods.zenutils.DataUpdateOperation.BUMP;
import mods.zenutils.StaticString;
import mods.randomtweaker.astralsorcery.AttunementRecipeCompleteEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
 
import scripts.libs.CotTicTraitLib.cotticTraitLib;
import scripts.libs.CotTicinit;
import scripts.libs.CotTicTraitLib.getCotTicTraitLib;

var imsb = TraitBuilder.create("imsb");
imsb.color = 0x800000;
imsb.localizedName = "已共鸣";
imsb.localizedDescription = "已共鸣";
imsb.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
};
imsb.register();

val attuned1 = TraitBuilder.create("attuned1");
attuned1.color = Color.fromHex("142e8f").getIntColor(); 
attuned1.localizedName = game.localize("星辰共鸣:【非攻】");
attuned1.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至非攻座");
attuned1.addItem(<item:attuned-attuned1>);
attuned1.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned1.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_discidia") return;
                }
    var traitid as string = "tconevo.attuned_discidia";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned1.register();



val attuned2 = TraitBuilder.create("attuned2");
attuned2.color = Color.fromHex("142e8f").getIntColor(); 
attuned2.localizedName = game.localize("星辰共鸣:【遁甲】");
attuned2.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至遁甲座");
attuned2.addItem(<item:attuned-attuned2>);
attuned2.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned2.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_armara") return;
                }
    var traitid as string = "tconevo.attuned_armara";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned2.register();

val attuned3 = TraitBuilder.create("attuned3");
attuned3.color = Color.fromHex("142e8f").getIntColor(); 
attuned3.localizedName = game.localize("星辰共鸣:【虚御】");
attuned3.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至虚御座");
attuned2.addItem(<item:attuned-attuned3>);
attuned3.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned3.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_vicio") return;
                }
    var traitid as string = "tconevo.attuned_vicio";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned3.register();

val attuned4 = TraitBuilder.create("attuned4");
attuned4.color = Color.fromHex("142e8f").getIntColor(); 
attuned4.localizedName = game.localize("星辰共鸣:【生息】");
attuned4.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至生息座");
attuned4.addItem(<item:attuned-attuned4>);
attuned4.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned4.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_aevitas") return;
                }
    var traitid as string = "tconevo.attuned_aevitas";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned4.register();

val attuned5 = TraitBuilder.create("attuned5");
attuned5.color = Color.fromHex("142e8f").getIntColor(); 
attuned5.localizedName = game.localize("星辰共鸣:【解离】");
attuned5.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至解离座");
attuned5.addItem(<item:attuned-attuned4>);
attuned5.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned5.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_evorsio") return;
                }
    var traitid as string = "tconevo.attuned_evorsio";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned5.register();

val attuned6 = TraitBuilder.create("attuned6");
attuned6.color = Color.fromHex("142e8f").getIntColor(); 
attuned6.localizedName = game.localize("星辰共鸣:【圣芒】");
attuned6.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至圣芒座");
attuned6.addItem(<item:attuned-attuned4>);
attuned6.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned6.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_lucerna") return;
                }
    var traitid as string = "tconevo.attuned_lucerna";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned6.register();

val attuned7 = TraitBuilder.create("attuned7");
attuned7.color = Color.fromHex("142e8f").getIntColor(); 
attuned7.localizedName = game.localize("星辰共鸣:【晶金】");
attuned7.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至晶金座");
attuned7.addItem(<item:attuned-attuned4>);
attuned7.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned7.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_mineralis") return;
                }
    var traitid as string = "tconevo.attuned_mineralis";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned7.register();

val attuned8 = TraitBuilder.create("attuned8");
attuned8.color = Color.fromHex("142e8f").getIntColor(); 
attuned8.localizedName = game.localize("星辰共鸣:【时钟】");
attuned8.localizedDescription = game.localize("时间序列协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至时钟座");
attuned8.addItem(<item:attuned-attuned4>);
attuned8.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned8.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    
    if (target.isPotionActive(<potion:astralsorcery:potiontimefreeze>)){
        return (0.0f * newDamage) as float;
    }
    else{
        target.addPotionEffect(<potion:astralsorcery:potiontimefreeze>.makePotionEffect(20, 0, false, false));
        return (1.0f * newDamage) as float;
    }
};
attuned8.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_horologium") return;
                }
    var traitid as string = "tconevo.attuned_horologium";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned8.register();

val attuned9 = TraitBuilder.create("attuned9");
attuned9.color = Color.fromHex("142e8f").getIntColor(); 
attuned9.localizedName = game.localize("星辰共鸣:【南极】");
attuned9.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至南极座");
attuned9.addItem(<item:attuned-attuned4>);
attuned9.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned9.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_octans") return;
                }
    var traitid as string = "tconevo.attuned_octans";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned9.register();

val attuned10 = TraitBuilder.create("attuned10");
attuned10.color = Color.fromHex("142e8f").getIntColor(); 
attuned10.localizedName = game.localize("星辰共鸣:【牧夫】");
attuned10.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至牧夫座");
attuned10.addItem(<item:attuned-attuned4>);
attuned10.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned10.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_bootes") return;
                }
    var traitid as string = "tconevo.attuned_bootes";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned10.register();

val attuned11 = TraitBuilder.create("attuned11");
attuned11.color = Color.fromHex("142e8f").getIntColor(); 
attuned11.localizedName = game.localize("星辰共鸣:【天炉】");
attuned11.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至天炉座");
attuned11.addItem(<item:attuned-attuned4>);
attuned11.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned11.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_fornax") return;
                }
    var traitid as string = "tconevo.attuned_fornax";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned11.register();

val attuned12 = TraitBuilder.create("attuned12");
attuned12.color = Color.fromHex("142e8f").getIntColor(); 
attuned12.localizedName = game.localize("星辰共鸣:【唤生】");
attuned12.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f攻击一次后将武器共鸣至唤生座");
attuned12.addItem(<item:attuned-attuned4>);
attuned12.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1" &&  otherTrait != "attuned2"&&  otherTrait != "attuned3"&& otherTrait != "attuned4" &&  otherTrait != "attuned5"&&  otherTrait != "attuned6"&&
    otherTrait != "attuned7" &&  otherTrait != "attuned8"&&  otherTrait != "attuned9"&& otherTrait != "attuned10" &&  otherTrait != "attuned11"&&  otherTrait != "attuned12";
};
attuned12.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "tconevo.attuned_pelotrio") return;
                }
    var traitid as string = "tconevo.attuned_pelotrio";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned12.register();

val attuned18 = TraitBuilder.create("attuned18");
attuned18.color = Color.fromHex("142e8f").getIntColor(); 
attuned18.localizedName = game.localize("星辰共鸣");
attuned18.localizedDescription = game.localize("展示用工程词条，无实际作用");
attuned18.addItem(<item:attuned-gongming>);

attuned18.register();

val fooltz = TraitBuilder.create("fooltz");
fooltz.color = Color.fromHex("1a2933").getIntColor(); 
fooltz.localizedName = game.localize("狂妄至极");
fooltz.localizedDescription = game.localize("我不管，就算倍率低只要我叠的足够高也能打出伤害§r\n§f攻击后获得神秘效果，专为不仔细检查物品的人准备");
fooltz.extraInfo = function(thisTrait, item, tag){
    var infos as string[] = ["攻击后获得免费的狂妄自大","愚人节特惠，买一送一"];
    return infos;
};
fooltz.onHit = function(trait, tool, attacker, target, damage, isCritical){
    var traitid as string = "impotence";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x1a2933, level: 1}];
        var addtrait as IData = [traitid as string];
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
fooltz.register();

val fooltzz = TraitBuilder.create("fooltzz");
fooltzz.color = Color.fromHex("1a2933").getIntColor(); 
fooltzz.localizedName = game.localize("噬魂者");
fooltzz.localizedDescription = game.localize("§o虚刃之名的代表...§r\n随着你杀死越来越多的敌人，你的武器的攻击力会越来越高。");
fooltzz.extraInfo = function(thisTrait, item, tag){
    var infos as string[] = ["仔细检查,这个噬魂者是一个由灵气节点做的假东西，希望你能得到一张收据"];
    return infos;
};

fooltzz.register();
/* 
val gddzz = TraitBuilder.create("gddzz");
gddzz.color = 0x7bbfea;
gddzz.localizedName = "肝帝的执着";
gddzz.localizedDescription = "肝帝的执着感动了上天§r\n§f为你的工具赋予抢夺V\n§f(攻击一次后以触发效果)";
gddzz.addItem(<item:text:ganzangshelder>);
gddzz.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "shibiewu1" ;
};
gddzz.onHit = function(trait, tool, attacker, target, damage, isCritical){
    for trait in CotTicTraitLib.getTicTrait(tool) {
                    if (trait has "shibiewu1") return;
                }
    var traitid as string = "shibiewu1";
                    var data as IData = tool.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0xb69968, level: 1}];
        var addtrait as IData = [traitid as string];
        tool.mutable().updateTag({ench: [{lvl: 5 as short, id: 21 as short}]});
         tool.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};

gddzz.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val player as IPlayer = attacker;
    var item as IItemStack = tool;
    
    //这里开始操作NBT
    //由于附魔相关NBT结构为：{ench:[{id:<value> as short,lvl:<value> as short},......]}
    //我们需要对物品的NBT进行访问：
    if(
        !isNull(item.tag)&&//物品有NBT
        !isNull(item.tag.ench)//物品有附魔的NBT
    ){
        var enchList as IData = item.tag.ench;//取出附魔相关NBT数据，这是一个DataList
        var check as bool = false ;//给一个check变量储存检测结果
        if(enchList.length==0) return;//遍历前检测数组长度是否为0，养成好习惯
        //准备遍历
        for i in 0 .. enchList.length{
            if(enchList[i].id.asInt()==21){ //检测到经验修补魔咒
                check = true;//修改标记
                player.sendChat("Mending Found!");//输出调试
                break;//退出循环
            }
        }
        if(check == true)return;//如果没有经验修补则直接return
        var newEnchList as IData = 
            enchList.deepUpdate([{"id":21 as short,"lvl": 5 as short}],MERGE);//添加耐久
        item.mutable().updateTag({"ench":newEnchList});//更新tag
    }
    };
gddzz.register();*/