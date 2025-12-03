import mods.futuremc.SmithingTable;
import crafttweaker.item.IItemStack;
import mods.iceandfire.recipes;

SmithingTable.addRecipe(<retro_sophisticated_backpacks:stack_upgrade_tier_3>, <futuremc:netherite_ingot>, <retro_sophisticated_backpacks:stack_upgrade_tier_4>);
SmithingTable.addRecipe(<harvestcraft:skilletitem>, <mod_lavacow:molten_alloy>, <mod_lavacow:moltenpan>);
SmithingTable.addRecipe(<mod_lavacow:moltenpan>, <mod_lavacow:ectoplasm_mass>, <mod_lavacow:soulforged_pan>);
SmithingTable.addRecipe(<draconicevolution:crafting_injector>, <draconicevolution:wyvern_core>, <draconicevolution:crafting_injector:1>);
SmithingTable.addRecipe(<draconicevolution:crafting_injector:1>, <draconicevolution:awakened_core>, <draconicevolution:crafting_injector:2>);
SmithingTable.addRecipe(<draconicevolution:crafting_injector:2>*2, <draconicevolution:chaotic_core>, <draconicevolution:crafting_injector:3>*2);
/*SmithingTable.addRecipe(<retro_sophisticated_backpacks:backpack_diamond>, <futuremc:netherite_ingot>, <retro_sophisticated_backpacks:backpack_obsidian>);
*/
//龙岗锻炉
recipes.addIceDragonForgeRecipe( <coffeework:itemmaterials:1>, <iceandfire:ice_dragon_blood>,<coffeework:coldbrew_bottle>, true);