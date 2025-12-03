import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;

function removeRecipe(item as IItemStack){
    ExtremeCrafting.remove(item);
}

var items as IItemStack[]=[
    <avaritia:ultimate_stew>,
    <avaritia:cosmic_meatballs>,
    <avaritia:infinity_sword>,
    <avaritia:infinity_bow>,
    <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}),
    <avaritia:infinity_shovel>,
    <avaritia:infinity_axe>,
    <avaritia:infinity_hoe>,
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>,
    <avaritia:skullfire_sword>,
    <avaritia:resource:5>,
    <avaritia:neutron_collector>
];

for item in items{
    removeRecipe(item);
}

