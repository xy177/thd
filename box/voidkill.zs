//本模板由灰喉提供
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;


//最小抽取量，最大抽取量，最小额外抽取量，最大额外抽取量

LootTweaker.getTable("extrabotany:void_herrscher")
           .addPool("void1", 1, 3, 0, 2)
           .addItemEntry(<additions:fxt-subsharp>, 1);

LootTweaker.getTable("extrabotany:void_herrscher")
           .addPool("void2", 1, 1, 0, 0)
           .addItemEntry(<text:manapaper>, 1);

            LootTweaker.getTable("extrabotany:void_herrscher")
           .addPool("void3", 1, 1, 0, 0)
           .addItemEntry(<minecraft:feather>, 1);

LootTweaker.getTable("iceandfire:dragon/fire_dragon_male")
           .addPool("fm1", 1, 1, 0, 2)
           .addItemEntry(<additions:fxt-eggshard_fire>, 1);

LootTweaker.getTable("iceandfire:dragon/fire_dragon_female")
           .addPool("ffm1", 1, 1, 0, 2)
           .addItemEntry(<additions:fxt-eggshard_fire>, 1);