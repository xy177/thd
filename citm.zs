#loader avaritiaitem
 
import mods.avaritiaitem.AvaritiaItemBuilder;
import mods.avaritiaitem.ItemPrimer;

AvaritiaItemBuilder.registerItem("fatum", 64, "fatum")
    .shouldDrawPulse(true) // 是否显示脉冲特效(即无尽催化剂的抖动效果)
    .create();

AvaritiaItemBuilder.registerItem("medusa", 64, "medusa")
    .shouldDrawPulse(true) // 是否显示脉冲特效(即无尽催化剂的抖动效果)
    .create();
