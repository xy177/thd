import mods.thaumcraft.Infusion;
import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;

Infusion.removeRecipe(<tconevo:metal:20>);
Infusion.removeRecipe(<thaumcraft:lamp_fertility>);
Infusion.removeRecipe(<thaumadditions:jar_mithminite>);
Infusion.removeRecipe(<thaumadditions:mithrillium_ingot>);
Infusion.removeRecipe(<gadothaumy:infusion_claw>);
Infusion.removeRecipe(<thaumictinkerer:ichor_block>);

Infusion.registerRecipe("metal","",<contenttweaker:material_part:570>,5,
[<aspect:metallum>*30,<aspect:aer>*15,<aspect:terra>*15,<aspect:ignis>*15,<aspect:aqua>*15,<aspect:ordo>*15,<aspect:perditio>*15],
<additions:fxt-fan_xing>,
[<thaumcraft:primordial_pearl>.anyDamage(),<avaritiaitem:fatum>,<thaumcraft:salis_mundus>]);

Infusion.registerRecipe("metall","",<tconevo:metal:20>,5,
[<aspect:metallum>*30,<aspect:aer>*15,<aspect:terra>*15,<aspect:ignis>*15,<aspect:aqua>*15,<aspect:ordo>*15,<aspect:perditio>*15],
<additions:fxt-fan_xing>,
[<thaumicwonders:primordial_grain>,<avaritiaitem:fatum>,<thaumcraft:salis_mundus>]);

val additions as IItemStack[]=[
<additions:fxt-tz>,
<additions:fxt-xy>,
<additions:fxt-fantastic_feather>,
<additions:fxt-auric>,
<additions:fxt-bx_ingot>
];

Infusion.registerRecipe("tz","",additions[0],5,
[<aspect:draco>*150,<aspect:coralos>*150,<aspect:dreadia>*150,<aspect:vitium>*300,<aspect:tenebrae>*300,<aspect:herba>*377],
<taiga:nihilite_ingot>,
[<tconevo:metal:5>,
<thaumicaugmentation:material:3>,
<tconevo:metal:20>,
<thaumadditions:mithminite_ingot>,
<thaumadditions:mithrillium_ingot>,
<thaumadditions:adaminite_ingot>
]);

Infusion.registerRecipe("tz","",<additions:fxt-tz>,20,
[<aspect:draco>*150,<aspect:coralos>*150,<aspect:dreadia>*150,<aspect:vitium>*300,<aspect:tenebrae>*300,<aspect:herba>*377],
<taiga:nihilite_ingot>,
[<tconevo:metal:5>,
<thaumictinkerer:kamiresource:3>,
<tconevo:metal:20>,
<thaumadditions:mithminite_ingot>,
<thaumadditions:mithrillium_ingot>,
<thaumadditions:adaminite_ingot>
]);

Infusion.registerRecipe("tzkc","",<contenttweaker:material_part:73>,30,
[<aspect:draco>*150,<aspect:coralos>*150,<aspect:dreadia>*150,<aspect:vitium>*300,<aspect:tenebrae>*300,<aspect:herba>*377],
<taiga:nihilite_ingot>,
[<contenttweaker:material_part:175>,
<ore:ingredientsIchorium>,
<contenttweaker:material_part:570>,
<contenttweaker:material_part:22>,
<contenttweaker:material_part:5>,
<contenttweaker:material_part:39>,
<ore:bed>
]);

Infusion.registerRecipe("nm","",<beto:nongsuo>,5,
[<aspect:draco>*100,<aspect:coralos>*100,<aspect:dreadia>*100,<aspect:rattus>*100],
<iceandfire:dragonsteel_lightning_ingot>,
[<rats:black_death_mask>,
<iceandfire:dragonsteel_fire_ingot>,
<additions:fxt-dust_iron>,
<additions:fxt-cold_sliver>,
<additions:fxt-fuc_iron>,
<iceandfire:dragonsteel_ice_ingot>,
<rats:psionic_rat_brain>,
<mod_lavacow:skeletonking_crown>
]);

Infusion.registerRecipe("zz","",<beto:waterbread>,4,
[<aspect:aqua>*100,<aspect:victus>*100],
<minecraft:wheat_seeds>,
[<extendedcrafting:storage:2>,
<minecraft:diamond_sword>,
<minecraft:saddle>,
<croparia:horse_meat>,
<tconstruct:large_plate>.withTag({Material: "sapphire"})
]);

Infusion.registerRecipe("hb","",<beto:zes>,6,
[<aspect:victus>*200,<aspect:spiritus>*200,<aspect:mortuus>*200,<aspect:vitium>*200,<aspect:tenebrae>*200],
<biomesoplenty:gem:1>,
[<botania:rune:9>,
<botania:rune:10>,
<botania:rune:11>,
<botania:rune:12>,
<botania:rune:13>,
<botania:rune:14>,
<botania:rune:15>,
<extrautils2:simpledecorative:2>,
<abyssalcraft:ingotblock:2>,
<tconevo:metal_block:5>,
<thaumadditions:mithrillium_block>,
<taiga:solarium_block>
]);

Infusion.registerRecipe("miyincu","",<contenttweaker:material_part:5>,6,
[<aspect:vitreus>*30,<aspect:metallum>*30,<aspect:potentia>*15,<aspect:alienis>*10,<aspect:praecantatio>*10],
<thaumcraft:plate:3>,
[<thaumcraft:quicksilver>,
<thaumcraft:focus_3>,
<thaumcraft:fabric>,
<thaumcraft:alumentum>,
<thaumcraft:salis_mundus>,
<thaumcraft:quicksilver>,
<thaumcraft:amber>,
<thaumcraft:fabric>,
<thaumcraft:alumentum>,
<thaumcraft:salis_mundus>
]);

Infusion.registerRecipe("miyin","",<thaumadditions:mithrillium_ingot>,6,
[<aspect:vitreus>*30,<aspect:metallum>*30,<aspect:potentia>*15,<aspect:alienis>*10,<aspect:praecantatio>*10],
<thaumcraft:ingot:1>,
[<thaumcraft:quicksilver>,
<thaumcraft:focus_3>,
<thaumcraft:fabric>,
<thaumcraft:alumentum>,
<thaumcraft:salis_mundus>,
<thaumcraft:quicksilver>,
<thaumcraft:amber>,
<thaumcraft:fabric>,
<thaumcraft:alumentum>,
<thaumcraft:salis_mundus>
]);

Infusion.registerRecipe("jingjincu","",<contenttweaker:material_part:39>,8,
[<aspect:spiritus>*120,<aspect:victus>*100,<aspect:praecantatio>*100,<aspect:infernum>*100,<aspect:permutatio>*40,<aspect:metallum>*40,<aspect:alkimia>*30,<aspect:draco>*20,<aspect:visum>*20],
<contenttweaker:material_part:5>,
[<minecraft:nether_star>,
<thaumcraft:fabric>,
<minecraft:nether_star>,
<thaumcraft:primordial_pearl>.anyDamage()
]);

Infusion.registerRecipe("jingjincu2","",<contenttweaker:material_part:39>,8,
[<aspect:spiritus>*120,<aspect:victus>*100,<aspect:praecantatio>*100,<aspect:infernum>*100,<aspect:permutatio>*40,<aspect:metallum>*40,<aspect:alkimia>*30,<aspect:draco>*20,<aspect:visum>*20],
<contenttweaker:material_part:5>,
[<minecraft:nether_star>,
<thaumcraft:fabric>,
<minecraft:nether_star>,
<ore:primordialpearl>
]);

Infusion.registerRecipe("mijincu","",<contenttweaker:material_part:22>,10,
[<aspect:praecantatio>*120,<aspect:victus>*90,<aspect:metallum>*60,<aspect:caeles>*10],
<contenttweaker:material_part:39>,
[<contenttweaker:material_part:5>,
<contenttweaker:material_part:5>,
<thaumcraft:quicksilver>,
<thaumcraft:quicksilver>

]);

Infusion.registerRecipe("longdan1","",<iceandfire:dragonegg_red>,10,
[<aspect:victus>*20,<aspect:spiritus>*100,<aspect:draco>*500,<aspect:mythus>*100],
<ore:cokoeggA>,
[<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>,
<additions:fxt-eggshard_fire>
]);

Infusion.registerRecipe("longdan2","",<iceandfire:dragonegg_blue>,10,
[<aspect:victus>*20,<aspect:spiritus>*100,<aspect:draco>*500,<aspect:mythus>*100],
<ore:cokoeggB>,
[<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>,
<additions:fxt-eggshard_ice>
]);

Infusion.registerRecipe("longdan3","",<iceandfire:dragonegg_amethyst>,10,
[<aspect:victus>*20,<aspect:spiritus>*100,<aspect:draco>*500,<aspect:mythus>*100],
<ore:cokoeggC>,
[<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>,
<additions:fxt-eggshard_sunder>
]);

Infusion.registerRecipe("haimian","",<thaumcraft:creative_flux_sponge>,20,
[<aspect:aer>*1000,<aspect:vitium>*1000,<aspect:praecantatio>*1000,<aspect:caeles>*1000,<aspect:superbia>*520,<aspect:mythus>*520,<aspect:herba>*1],
<minecraft:sponge>,
[<additions:fxt-tz>,
<thaumadditions:puriflower>,
<thaumadditions:dawn_totem>,
<thaumadditions:puriflower>,
<additions:fxt-tz>,
<thaumadditions:puriflower>,
<thaumadditions:dawn_totem>,
<thaumadditions:puriflower>
]);


Infusion.registerRecipe("lingyekuai","TT_ICHOR",<thaumictinkerer:ichor_block>,20,
[<aspect:spiritus>*500,<aspect:lux>*250,<aspect:humanus>*250],
<thaumadditions:mithminite_ingot>,
[<minecraft:dragon_breath>,
<thaumcraft:fabric>,
<thaumcraft:curio:7>,
<thaumcraft:curio:1>
]);

Infusion.registerRecipe("lingyekuaic","TT_ICHOR",<contenttweaker:material_part:600>,22,
[<aspect:spiritus>*500,<aspect:lux>*250,<aspect:humanus>*250],
<contenttweaker:material_part:22>,
[<minecraft:dragon_breath>,
<thaumcraft:fabric>,
<thaumcraft:curio:7>,
<thaumcraft:curio:1>
]);

Infusion.registerRecipe("chaowei","BASEINFUSION",<enigmaticlegacy:extradimensional_eye>.withTag({}),20,
[<aspect:alienis>*50,<aspect:instrumentum>*50,<aspect:machina>*50],
<additions:fxt-possibilityeye>,
[<deadguyshallucinationnightmare:phantomfins>,
<thaumcraft:ingot:2>,
<thaumcraft:nugget:8>,
<minecraft:blaze_powder>,
<thaumcraft:ingot:2>,
<thaumcraft:nugget:8>
]);

Infusion.registerRecipe("qianzhou","BASEINFUSION",<enigmaticlegacy:cursed_scroll>,15,
[<aspect:praecantatio>*75],
<enigmaticlegacy:thicc_scroll>,
[<deadguyshallucinationnightmare:phantomfins>,
<oe:glow_ink_sac>,
<futuremc:wither_rose>,
<twilightforest:raven_feather>,
<deadguyshallucinationnightmare:phantomfins>,
<minecraft:redstone>,
<futuremc:wither_rose>,
<twilightforest:raven_feather>
]);

Infusion.registerRecipe("leiting","BASEINFUSION",<enigmaticlegacy:thunder_scroll>,15,
[<aspect:aer>*150,<aspect:aversio>*150],
<enigmaticlegacy:thicc_scroll>,
[<thaumcraft:elemental_sword>,
<aquaculture:loot:1>,
<enigmaticlegacy:earth_heart>,
<aquaculture:loot:1>,
<oe:heart_of_the_sea>,
<aquaculture:loot:1>
]);

Infusion.registerRecipe("jiushuz","BASEINFUSION",<enigmaticlegacy:blessed_stone>,15,
[<aspect:desiderium>*200],
<enigmaticlegacy:cursed_stone>,
[<thaumictinkerer:kamiresource:3>,
<enigmaticlegacy:cosmic_heart>,
<enigmaticlegacy:twisted_core>,
<beto:worldtitaniu>,
<enigmaticlegacy:twisted_core>,
<enigmaticlegacy:cosmic_heart>
]);


Infusion.registerRecipe("feisheng","HARNESS_BASE",<enigmaticlegacy:ascension_amulet>,20,
[<aspect:volatus>*100,<aspect:spatio>*100],
<thaumcraft:baubles:4>,
[<enigmaticlegacy:astral_dust>,
<deeperdepths:material:1>,
<enigmaticlegacy:etherium_ingot>,
<minecraft:dragon_breath>,
<enigmaticlegacy:cosmic_heart>,
<deeperdepths:material:1>,
<enigmaticlegacy:etherium_ingot>,
<minecraft:dragon_breath>
]);

Infusion.registerRecipe("wuzhizhi","ELDRITCH_EPIPHANY",<enigmaticlegacy:the_infinitum>,20,
[<aspect:vitium>*300,<aspect:desidia>*100],
<enigmaticlegacy:the_twist>,
[<enigmaticlegacy:abyssal_heart>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>,
<enigmaticlegacy:enchanter_pearl>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>
]);

Infusion.registerRecipe("qingmiezhi","HARNESS_BASE",<enigmaticlegacy:eldritch_amulet>.withTag({}),20,
[<aspect:vitium>*300,<aspect:superbia>*100],
<enigmaticlegacy:ascension_amulet>,
[<enigmaticlegacy:abyssal_heart>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>,
<minecraft:nether_star>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>
]);


Infusion.registerRecipe("taotie","HUNGRYCHEST",<enigmaticlegacy:eldritch_pan>,20,
[<aspect:vitium>*300,<aspect:gula>*100],
<mod_lavacow:soulforged_pan>,
[<enigmaticlegacy:abyssal_heart>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>,
<enigmaticlegacy:void_stone>,
<enigmaticlegacy:cosmic_heart>,
<ore:ingotNetherite>,
<enigmaticlegacy:evil_essence>
]);


Infusion.registerRecipe("xkzz","VOIDSEERPEARL",<enigmaticlegacy:void_pearl>,20,
[<aspect:vacuos>*500],
<thaumcraft:voidseer_charm>,
[<thaumictinkerer:kamiresource:3>,
<thaumcraft:ingot:1>,
<thaumictinkerer:kamiresource:3>,
<thaumcraft:ingot:1>
]);


Infusion.registerRecipe("xyzy","VOIDSEERPEARL",<enigmaticlegacy:eye_of_nebula>,20,
[<aspect:permutatio>*100,<aspect:praecantatio>*100,<aspect:alienis>*100],
<astralsorcery:itemfragmentcapsule>,
[<ancientbeasts:rifted_pearl>,
<enigmaticlegacy:astral_dust>,
<thaumadditions:mithrillium_ingot>,
<da:endless_enderpearl>,
<enigmaticlegacy:astral_dust>,
<thaumadditions:mithrillium_ingot>
]);

Infusion.registerRecipe("folf","TT_ICHOR",<enigmaticlegacy:the_cube>,30,
[<aspect:caeles>*666],
<draconicevolution:chaos_shard:1>,
[<additions:fxt-tz>,
<enigmaticlegacy:void_pearl>,
<enigmaticlegacy:eye_of_nebula>,
<enigmaticlegacy:magma_heart>,
<enigmaticlegacy:cosmic_heart>,
<extrabotany:allforone>,
<enigmaticlegacy:ocean_stone>,
<enigmaticlegacy:angel_blessing>,
<enigmaticlegacy:golem_heart>,
<enigmaticlegacy:cosmic_heart>
]);
mods.thaumcraft.SalisMundus.addSingleConversion(<blockstate:extrautils2:user>.block, <gadothaumy:infusion_claw>,"INFUSION_CLAW");
mods.thaumcraft.Crucible.registerRecipe("niuquzhixin", "WARP", <enigmaticlegacy:twisted_core>*2, <enigmaticlegacy:earth_heart>, [<aspect:vitium>*30]);
mods.thaumcraft.Crucible.registerRecipe("shenyuanzhixin", "WARP", <enigmaticlegacy:abyssal_heart>, <draconicevolution:dragon_heart>, [<aspect:vitium>*300]);

mods.thaumcraft.Crucible.registerRecipe("crucible1", "", <star_rains_toybox:soundblood>, <iceandfire:fire_dragon_blood>, [<aspect:alienis>*10,<aspect:praecantatio>*10,<aspect:metallum>*40]);
mods.thaumcraft.Crucible.registerRecipe("crucible2", "", <croparia:water_gem>, <minecraft:diamond>, [<aspect:aqua>*10]);
mods.thaumcraft.Crucible.registerRecipe("crucible3", "", <croparia:fire_gem>, <minecraft:diamond>, [<aspect:ignis>*10]);
mods.thaumcraft.Crucible.registerRecipe("crucible4", "", <croparia:earth_gem>, <minecraft:diamond>, [<aspect:terra>*10]);
mods.thaumcraft.Crucible.registerRecipe("crucible5", "", <croparia:air_gem>, <minecraft:diamond>, [<aspect:aer>*10]);
mods.thaumcraft.Crucible.registerRecipe("crucible6", "", <additions:fxt-visdiamond>, <minecraft:diamond>, [<aspect:praecantatio>*5]);
mods.thaumcraft.Crucible.registerRecipe("crucible7", "", <additions:fxt-vispearl>, <minecraft:ender_pearl>, [<aspect:praecantatio>*5]);