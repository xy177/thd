/*
import mods.ooi.ConversionItem;
import mods.ooi.ConversionFluid;
import mods.ooi.BlackList;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

BlackList.addMatchItem("chisel");
BlackList.addMatchItem("deeperdepths");

ConversionItem.create(<deeperdepths:material>)
    .addMatchItem(<ore:ingotCopper>)
    .register();

ConversionItem.create(<thaumcraft:ingot:2>)
    .addMatchItem(<ore:ingotBrass>)
    .register();

ConversionItem.create(<thermalfoundation:material:163>)
    .addMatchItem(<ore:ingotBronze>)
    .register();

ConversionItem.create(<thermalfoundation:material:164>)
    .addMatchItem(<ore:ingotConstantan>)
    .register();

ConversionItem.create(<thermalfoundation:material:129>)
    .addMatchItem(<ore:ingotTin>)
    .register();

ConversionItem.create(<botania:manaresource>)
    .addMatchItem(<croparia:ingot_manasteel>)
    .register();

ConversionItem.create(<botania:manaresource:4>)
    .addMatchItem(<croparia:ingot_terrasteel>)
    .register();

ConversionItem.create(<botania:manaresource:7>)
    .addMatchItem(<croparia:ingot_elementium>)
    .register();

ConversionItem.create(<botania:manaresource:5>)
    .addMatchItem(<croparia:gaia_spirit>)
    .register();

ConversionItem.create(<thermalfoundation:material:130>)
    .addMatchItem(<ore:ingotSilver>)
    .register();

ConversionItem.create(<thermalfoundation:material:130>)
    .addMatchItem(<ore:ingotSilver>)
    .register();

ConversionItem.create(<thermalfoundation:material:136>)
    .addMatchItem(<ore:ingotMithril>)
    .register();

ConversionItem.create(<thermalfoundation:material:131> )
    .addMatchItem(<ore:ingotLead> )
    .register();

ConversionItem.create(<thermalfoundation:material:132> )
    .addMatchItem(<ore:ingotAluminum> )
    .addMatchItem(<ore:ingotAluminium> )
    .register();


ConversionItem.create(<thermalfoundation:material:133> )
    .addMatchItem(<ore:ingotNickel> )
    .register();


ConversionItem.create(<thermalfoundation:material:134> )
    .addMatchItem(<ore:ingotPlatinum> )
    .register();


ConversionItem.create(<thermalfoundation:material:135> )
    .addMatchItem(<ore:ingotIridium> )
    .register();


ConversionItem.create(<thermalfoundation:material:160> )
    .addMatchItem(<ore:ingotSteel> )
    .register();

ConversionItem.create(<deeperdepths:copper_ore> )
    .addMatchItem(<forestry:resources:1> )
    .register();

ConversionItem.create(<enigmaticlegacy:enigmatic_amulet:7> )
    .addMatchItem(<ore:amuletEnigmatic> )
    .register();

ConversionItem.create(<thermalfoundation:material:196> )
    .addMatchItem(<ore:nuggetAluminum> )
    .addMatchItem(<ore:nuggetAluminium> )
    .register();


for od in oreDict.entries {
    var odName = od.name;
    if (odName.startsWith("ore") 
        || odName.startsWith("dust")
        || odName.startsWith("ingot")
        || odName.startsWith("gem")
        || odName.startsWith("nugget")
        || odName.startsWith("plate")
        || odName.startsWith("gear")
        || odName.startsWith("stick")
    ){
        ConversionItem.create(od.firstItem)
            .addMatchItem(od)
            .register();
        if (odName.startsWith("gem")){
            val od0 = oreDict.get("block" + odName.substring("gem".length));
            if (!od0.empty){
                ConversionItem.create(od0.firstItem)
                    .addMatchItem(od0)
                    .register();
            }
        } else if (odName.startsWith("ingot")){
            val od0 = oreDict.get("block" + odName.substring("ingot".length));
            if (!od0.empty){
                ConversionItem.create(od0.firstItem)
                    .addMatchItem(od0)
                    .register();
            }
        }
    }
}

val b as string[] = [
    "oreDimensionalShard"
];


static modid as string[] = [
    "deeperdepths",
    "minecraft",
    "thermalfoundation",
    "enderio",
    "tconstruct",
    "mets",
    "taiga",
    "forestry",
    "suikerawore"
];
function getODItem(od as IOreDictEntry) as IItemStack{
//按优先级提取词典中的一个物品
    if (isNull(od.firstItem))return <minecraft:stone>;
    var clq as IItemStack = null;
    for i in 0 to modid.length{
        for item in od.items{
            if (item.definition.owner == modid[i]){
                clq = item;
                break;
            }
        }
        if (!isNull(clq))break;
    }

    return isNull(clq) ? od.firstItem : clq;
}

if (!(<ore:itemSilicon>.empty)){
    ConversionItem.create(getODItem(<ore:itemSilicon>))
            .addMatchItem(<ore:itemSilicon>)
            .register();
}

for od in oreDict.entries {
    var odName = od.name;
    if (odName.startsWith("ore") 
        || odName.startsWith("dust")
        || odName.startsWith("ingot")
        || odName.startsWith("gem")
        || odName.startsWith("nugget")
        || odName.startsWith("plate")
        || odName.startsWith("gear")
        || odName.startsWith("stick")
    ){
        if (b has odName)continue;
        ConversionItem.create(getODItem(od))
            .addMatchItem(od)
            .register();
        if (odName.startsWith("gem")){
            val od0 = oreDict.get("block" + odName.substring("gem".length));
            if (!od0.empty){
                ConversionItem.create(getODItem(od0))
                    .addMatchItem(od0)
                    .register();
            }
        } else if (odName.startsWith("ingot")){
            val od0 = oreDict.get("block" + odName.substring("ingot".length));
            if (!od0.empty){
                ConversionItem.create(getODItem(od0))
                    .addMatchItem(od0)
                    .register();
            }
        }
    }
}

ConversionItem.create(<croparia:dragonstone> )
    .addMatchItem(<ore:elvenDragonstone> )
    .register();


ConversionItem.create(<botania:manaresource:1> )
    .addMatchItem(<ore:manaPearl> )
    .register();


ConversionItem.create(<botania:manaresource:2> )
    .addMatchItem(<ore:manaDiamond> )
    .register();
/*
ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();

ConversionItem.create( )
    .addMatchItem( )
    .register();
 */