#loader multiblocked
 
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
 
import crafttweaker.text.ITextComponent;
 
var definition as ComponentDefinition = MBDRegistry.getDefinition("fish:fishbox");
 
var fish = definition as ControllerDefinition;
fish.recipeMap.start()
    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_1>)
    .outputItems(0.1f,<aquaculture:fish:5>)
    .outputItems(0.1f,<aquaculture:fish:3>)
    .outputItems(0.1f,<aquaculture:fish:1>)
    .outputItems(0.1f,<aquaculture:fish:4>)
    .outputItems(0.1f,<aquaculture:fish:7>)
    .outputItems(0.1f,<aquaculture:fish>)
    .outputItems(0.1f,<aquaculture:fish:2>)
    .outputItems(0.1f,<aquaculture:fish:6>)
    .buildAndRegister();


 


var fish3 = definition as ControllerDefinition;
fish3.recipeMap.start()

    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_3>)
    .outputItems(0.1f,<aquaculture:fish:24>)
    .outputItems(0.1f,<aquaculture:fish:25>)
    .outputItems(0.1f,<aquaculture:fish:26>)
    .outputItems(0.1f,<aquaculture:fish:27>)
    .outputItems(0.1f,<aquaculture:fish:28>)
    .outputItems(0.1f,<aquaculture:fish:29>)
    .outputItems(0.1f,<aquaculture:fish:30>)
    .outputItems(0.1f,<aquaculture:fish:6>)
    .buildAndRegister();

var fish2 = definition as ControllerDefinition;
fish2.recipeMap.start()
    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_2>)
    .outputItems(0.2f,<aquaculture:fish:16>)
    .outputItems(0.2f,<aquaculture:fish:11>)
    .outputItems(0.2f,<aquaculture:fish:12>)
    .outputItems(0.2f,<aquaculture:fish:13>)
    .outputItems(0.2f,<aquaculture:fish:14>)
    .outputItems(0.2f,<aquaculture:fish:9>)
    .buildAndRegister();

var fish4 = definition as ControllerDefinition;
fish4.recipeMap.start()
    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_4>)
    .outputItems(0.25f,<aquaculture:fish:31>)
    .outputItems(0.25f,<aquaculture:fish:32>)
    .outputItems(0.25f,<aquaculture:fish:33>)
    .outputItems(0.25f,<aquaculture:fish:34>)
    .buildAndRegister();

var fish5 = definition as ControllerDefinition;
fish5.recipeMap.start()
    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_5>)
    .outputItems(0.33f,<aquaculture:fish:20>)
    .outputItems(0.33f,<aquaculture:fish:22>)
    .outputItems(0.33f,<aquaculture:fish:23>)
    .buildAndRegister();

var fish6 = definition as ControllerDefinition;
fish6.recipeMap.start()
    .duration(6000)
    .inputFluids(0.1f,<liquid:fluidedmana>*10000)
    .inputItems(0.0f,<beto:motherfish_6>)
    .outputItems(0.15f,<aquaculture:fish:35>)
    .outputItems(0.15f,<aquaculture:fish:36>)
    .outputItems(0.15f,<aquaculture:fish:37>)
    .outputItems(0.15f,<atum:fish_skeletal>)
    .outputItems(0.15f,<atum:fish_jeweled>)
    .outputItems(0.15f,<atum:fish_mummified>)
    .outputItems(0.15f,<atum:fish_forsaken>)
    .outputItems(0.15f,<mod_lavacow:parasite_item>)
    .buildAndRegister();
