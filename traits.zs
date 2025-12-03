import zentraits.TraitManager;

//TraitManager.attachTrait("材料ID", "特性ID", "部件类型（可选）");添加
//TraitManager.detachTrait("材料ID", "特性ID", "部件类型（可选）");在已有材料中删除特性

TraitManager.detachTrait("crystal_matrix", "tconevo.aftershock3");
TraitManager.attachTrait("crystal_matrix", "tconevo.aftershock2", "head");
TraitManager.attachTrait("crystal_matrix", "tconevo.aftershock1", "handle");
TraitManager.attachTrait("crystal_matrix", "tconevo.aftershock1", "extra");
TraitManager.attachTrait("emerald_plustic", "herofvillage", "head");
TraitManager.detachTrait("moretcon.nahuatl", "ecological");
TraitManager.detachTrait("moretcon.nahuatl", "dense");
TraitManager.attachTrait("moretcon.nahuatl", "moretcon.slicing", "handle");
TraitManager.attachTrait("moretcon.nahuatl", "moretcon.slicing", "extra");
TraitManager.detachTrait("moretcon.slimewood", "crumbling");
TraitManager.detachTrait("ichorium", "instantbreak");
TraitManager.attachTrait("alumite", "global", "head");
TraitManager.attachTrait("alumite",  "global", "handle");
TraitManager.attachTrait("alumite",  "global", "extra");