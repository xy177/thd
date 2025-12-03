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
import mods.contenttweaker.conarm.ArmorTraitBuilder;


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

var imsb = ArmorTraitBuilder.create("imsb");
imsb.color = 0x800000;
imsb.localizedName = "已共鸣";
imsb.localizedDescription = "已共鸣";
imsb.addItem(<item:text:essay>);
imsb.onArmorTick = function(trait, armor, world, player){
};
imsb.register();

val attuned1 = ArmorTraitBuilder.create("attuned1");
attuned1.color = Color.fromHex("142e8f").getIntColor(); 
attuned1.localizedName = game.localize("星辰共鸣:【非攻】");
attuned1.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至非攻座");
attuned1.addItem(<item:attuned-attuned1>);
attuned1.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned1.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_discidia_armor") return;
                }
    var traitid as string = "tconevo.attuned_discidia_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned1.register();



val attuned2 = ArmorTraitBuilder.create("attuned2");
attuned2.color = Color.fromHex("142e8f").getIntColor(); 
attuned2.localizedName = game.localize("星辰共鸣:【遁甲】");
attuned2.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至遁甲座");
attuned2.addItem(<item:attuned-attuned2>);
attuned2.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned2.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_armara_armor") return;}
    var traitid as string = "tconevo.attuned_armara_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)}); 
};
attuned2.register();

val attuned3 = ArmorTraitBuilder.create("attuned3");
attuned3.color = Color.fromHex("142e8f").getIntColor(); 
attuned3.localizedName = game.localize("星辰共鸣:【虚御】");
attuned3.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至虚御座");
attuned2.addItem(<item:attuned-attuned3>);
attuned3.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned3.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_vicio_armor") return;
                }
    var traitid as string = "tconevo.attuned_vicio_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned3.register();

val attuned4 = ArmorTraitBuilder.create("attuned4");
attuned4.color = Color.fromHex("142e8f").getIntColor(); 
attuned4.localizedName = game.localize("星辰共鸣:【生息】");
attuned4.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至生息座");
attuned4.addItem(<item:attuned-attuned4>);
attuned4.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned4.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_aevitas_armor") return;
                }
    var traitid as string = "tconevo.attuned_aevitas_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned4.register();

val attuned5 = ArmorTraitBuilder.create("attuned5");
attuned5.color = Color.fromHex("142e8f").getIntColor(); 
attuned5.localizedName = game.localize("星辰共鸣:【解离】");
attuned5.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至解离座");
attuned5.addItem(<item:attuned-attuned4>);
attuned5.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned5.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_evorsio_armor") return;
                }
    var traitid as string = "tconevo.attuned_evorsio_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned5.register();

val attuned6 = ArmorTraitBuilder.create("attuned6");
attuned6.color = Color.fromHex("142e8f").getIntColor(); 
attuned6.localizedName = game.localize("星辰共鸣:【圣芒】");
attuned6.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至圣芒座");
attuned6.addItem(<item:attuned-attuned4>);
attuned6.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned6.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_lucerna_armor") return;
                }
    var traitid as string = "tconevo.attuned_lucerna_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned6.register();

val attuned7 = ArmorTraitBuilder.create("attuned7");
attuned7.color = Color.fromHex("142e8f").getIntColor(); 
attuned7.localizedName = game.localize("星辰共鸣:【晶金】");
attuned7.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至晶金座");
attuned7.addItem(<item:attuned-attuned4>);
attuned7.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned7.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_mineralis_armor") return;
                }
    var traitid as string = "tconevo.attuned_mineralis_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned7.register();

val attuned8 = ArmorTraitBuilder.create("attuned8");
attuned8.color = Color.fromHex("142e8f").getIntColor(); 
attuned8.localizedName = game.localize("星辰共鸣:【时钟】");
attuned8.localizedDescription = game.localize("时间序列协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至时钟座");
attuned8.addItem(<item:attuned-attuned4>);
attuned8.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned8.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_horologium_armor") return;
                }
    var traitid as string = "tconevo.attuned_horologium_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned8.register();

val attuned9 = ArmorTraitBuilder.create("attuned9");
attuned9.color = Color.fromHex("142e8f").getIntColor(); 
attuned9.localizedName = game.localize("星辰共鸣:【南极】");
attuned9.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至南极座");
attuned9.addItem(<item:attuned-attuned4>);
attuned9.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned9.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_octans_armor") return;
                }
    var traitid as string = "tconevo.attuned_octans_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned9.register();

val attuned10 = ArmorTraitBuilder.create("attuned10");
attuned10.color = Color.fromHex("142e8f").getIntColor(); 
attuned10.localizedName = game.localize("星辰共鸣:【牧夫】");
attuned10.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至牧夫座");
attuned10.addItem(<item:attuned-attuned4>);
attuned10.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned10.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_bootes_armor") return;
                }
    var traitid as string = "tconevo.attuned_bootes_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned10.register();

val attuned11 = ArmorTraitBuilder.create("attuned11");
attuned11.color = Color.fromHex("142e8f").getIntColor(); 
attuned11.localizedName = game.localize("星辰共鸣:【天炉】");
attuned11.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至天炉座");
attuned11.addItem(<item:attuned-attuned4>);
attuned11.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned11.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_fornax_armor") return;
                }
    var traitid as string = "tconevo.attuned_fornax_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned11.register();

val attuned12 = ArmorTraitBuilder.create("attuned12");
attuned12.color = Color.fromHex("142e8f").getIntColor(); 
attuned12.localizedName = game.localize("星辰共鸣:【唤生】");
attuned12.localizedDescription = game.localize("空间站协议无法转接，现启用紧急预案§r\n§f装备后将盔甲共鸣至唤生座");
attuned12.addItem(<item:attuned-attuned4>);
attuned12.canApplyTogetherTrait = function(thisTrait, otherTrait) {
    return otherTrait != "attuned1_armor" &&  otherTrait != "attuned2_armor"&&  otherTrait != "attuned3_armor"&& otherTrait != "attuned4_armor" &&  otherTrait != "attuned5_armor"&&  otherTrait != "attuned6_armor"&&
    otherTrait != "attuned7_armor" &&  otherTrait != "attuned8_armor"&&  otherTrait != "attuned9_armor"&& otherTrait != "attuned10_armor" &&  otherTrait != "attuned11_armor"&&  otherTrait != "attuned12_armor";
};
attuned12.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "tconevo.attuned_pelotrio_armor") return;
                }
    var traitid as string = "tconevo.attuned_pelotrio_armor";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
};
attuned12.register();

/* 
val runeshelder = ArmorTraitBuilder.create("runeshelder");
runeshelder.color = 0xffaadd;
runeshelder.localizedName = "坚实";
runeshelder.localizedDescription = "你的盔甲深爱着你！§r\n§f你的盔甲使用时极高概率不消耗耐久";
runeshelder.addItem(<item:minecraft:egg>);
runeshelder.onArmorTick = function(trait, armor, world, player){
    for trait in CotTicTraitLib.getTicTrait(armor) {
                    if (trait has "shibiewu2") return;
                }
    var traitid as string = "shibiewu2";
                    var data as IData = armor.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: 0x142e8f, level: 1}];
        var addtrait as IData = [traitid as string];
        var enchList as IData = armor.tag;
        var newEnchList as IData = 
            enchList.deepUpdate({"TC.RUNIC": 1 as byte},MERGE);
         armor.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, APPEND), Traits : traits.deepUpdate(addtrait, APPEND)});
         armor.mutable().updateTag(newEnchList);
};

runeshelder.register();*/


val extensibility = ArmorTraitBuilder.create("extensibility");
extensibility.color = 0xffaadd;
extensibility.localizedName = "延展性";
extensibility.localizedDescription = "“坚胜钢铁、却又轻如鹅毛”§r\n§f其制成的造物拥有额外的韧性";
extensibility.onArmorTick = function(trait, armor, world, player){
 if (player instanceof IPlayer) {
        var player as IPlayer = player;
        CotTicLib.addTicToughness(armor, 5.0, "extensibility_renxing");
    }   

};
extensibility.register();

val crychild = ArmorTraitBuilder.create("crychild");
crychild.color = 0xffaadd;
crychild.localizedName = "悲涕";
crychild.localizedDescription = "“没人能替悲伤的我哭泣”§r\n§f极高概率不消耗耐久，但是会降低护甲值";
crychild.onArmorTick = function(trait, armor, world, player){
 if (player instanceof IPlayer) {
        var player as IPlayer = player;
        CotTicLib.addTicDefense(armor, -1.0, "crychild_hujia");
    }   

};

crychild.onArmorDamaged = function(trait, armor, damageSource, amount, newAmount, player, index) {
    var rand = Math.random();
    if (rand > 0.2){
       return 0*newAmount;
    }else{
    return newAmount;
    } 

};
crychild.register();