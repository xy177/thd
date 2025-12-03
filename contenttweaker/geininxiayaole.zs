#loader contenttweaker
import mods.ItemStages.addItemStage;
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.IPotion;
import mods.contenttweaker.Player;
import crafttweaker.world.IWorld;
import mods.BXLib;



import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import mods.ctutils.utils.Math;
import crafttweaker.player.IFoodStats;
import crafttweaker.event.EntityLivingHurtEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.util.IRandom;
import crafttweaker.event.IEventPositionable;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IFacing;
import crafttweaker.entity.IEntityDrop;
import crafttweaker.entity.IEntityDefinition;
import mods.contenttweaker.Color;
import native.net.minecraft.entity.player.EntityPlayer;

function timego(e as IEntity ,s1 as string  ,c1 as string ){
    e.server.commandManager.executeCommand(server, "/title @p title [{\"text\":\"" + s1 + "\",\"color\":\"" + c1 + "\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]");
    }

//茶风
var twind as IPotion = VanillaFactory.createPotion("teawind", 0xbed742);
twind.isReady = function(duration, amplifier) {
	return duration %160 == 0;
};
twind.performEffect = function(living, amplifier) {
 	if(living.world.getDimension() == 0) {
		var player as Player = living;
    var world as IWorld = player.world;
		player.foodStats.addStats(1,1.0);
	}
};
twind.register();
//冰箱
var winters as IPotion = VanillaFactory.createPotion("winters", 0xbed742);
winters.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
winters.performEffect = function(living, amplifier) {
	var player as Player = living;
};
winters.register();
//血1
var blood as IPotion = VanillaFactory.createPotion("blood", 0xbed742);
blood.isReady = function(duration, amplifier) {
	return duration %18 == 0;
};
blood.performEffect = function(living, amplifier) {
	var player as Player = living;
	player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(20, 0, false, false));
	player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(20, 0, false, false));
};
blood.register();
//血2
var blooder as IPotion = VanillaFactory.createPotion("blooder", 0xbed742);
blooder.isReady = function(duration, amplifier) {
	return duration %18 == 0;
};
blooder.performEffect = function(living, amplifier) {
	var player as Player = living;
	player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(20, 1, false, false));
	player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(20, 0, false, false));
};
blooder.register();
//血3
var bloodest as IPotion = VanillaFactory.createPotion("bloodest", 0xbed742);
bloodest.isReady = function(duration, amplifier) {
	return duration %18 == 0;
};
bloodest.performEffect = function(living, amplifier) {
	var player as Player = living;
	player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(20, 2, false, false));
	player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(20, 0, false, false));
};
bloodest.register();
//灵动
var nimble as IPotion = VanillaFactory.createPotion("nimble", 0xafb4db);
nimble.isReady = function(duration, amplifier) {
	return duration %30 == 0;
};
nimble.performEffect = function(living, amplifier) {
	var player as Player = living;
	if(player.health <( player.maxHealth as float * 0.5f)){
    player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(30, 3, false, false));}
    else{
     player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(30, 1, false, false));   
    } 
};
nimble.register();
//不知所措
var scared as IPotion = VanillaFactory.createPotion("scared", 0xafb4db);
scared.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
scared.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(30, 0, false, false));
     player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(30, 2, false, false));  
};
scared.register();
//击杀boss
var killboss as IPotion = VanillaFactory.createPotion("killboss", 0xafb4db);
killboss.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
killboss.performEffect = function(living, amplifier) {
};
killboss.register();
//冷却01
var readyscar as IPotion = VanillaFactory.createPotion("readyscar", 0xafb4db);
readyscar.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
readyscar.performEffect = function(living, amplifier) {
};
readyscar.register();
//温暖
var warma as IPotion = VanillaFactory.createPotion("warma", 0xafb4db);
warma.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
warma.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.removePotionEffect(<potion:twilightforest:frosted>);
};
warma.register();
/* 
//冲锋
var running as IPotion = VanillaFactory.createPotion("running", 0xafb4db);
running.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
running.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(30, 2, false, false));
    
};
running.register();
*/
//炽血
var redknife as IPotion = VanillaFactory.createPotion("redknife", 0xaa2116);
redknife.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
redknife.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(30, 0, false, false));
	player.setFire(5);
    
};
redknife.register();

//共生
var oliveman as IPotion = VanillaFactory.createPotion("oliveman", 0x7c8577);
oliveman.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
oliveman.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(30, 2, false, false));
};
oliveman.register();

//哀伤灵魂
var happy as IPotion = VanillaFactory.createPotion("happy", 0xd71345);
happy.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
happy.performEffect = function(living, amplifier) {
};
happy.register();

//悲恸
var veryhappy as IPotion = VanillaFactory.createPotion("veryhappy", 0xd71345);
veryhappy.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
veryhappy.performEffect = function(living, amplifier) {
	var player as Player = living;
    player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(20, 0, false, false));
};
veryhappy.register();

//冰冻抗性
var dontice as IPotion = VanillaFactory.createPotion("dontice", 0xd71345);
dontice.isReady = function(duration, amplifier) {
	return duration %5 == 0;
};
dontice.performEffect = function(living, amplifier) {
    living.removePotionEffect(<potion:twilightforest:frosted>);
	living.removePotionEffect(<potion:mowziesmobs:frozen>);
};
dontice.register();
/* 
//梦之甜腻
var drinking as IPotion = VanillaFactory.createPotion("drinking", 0xd71345);
drinking.isReady = function(duration, amplifier) {
	return duration %1200 == 0;
};
drinking.performEffect = function(living, amplifier) {
	var player as Player = living;
		player.foodStats.addStats(2,1.0);
};
drinking.register();
*/
//闪避成功
var placeholdera as IPotion = VanillaFactory.createPotion("placeholder_a", 0xd71345);
placeholdera.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
placeholdera.performEffect = function(living, amplifier) {
};
placeholdera.register();

//虚空意志
var voidmind as IPotion = VanillaFactory.createPotion("voidmind", 0xd71345);
voidmind.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
voidmind.performEffect = function(living, amplifier) {
};
voidmind.register();

//虚空庇护
var voidsheld as IPotion = VanillaFactory.createPotion("voidsheld", 0xd71345);
voidsheld.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
voidsheld.performEffect = function(living, amplifier) {
};
voidsheld.register();

//缓息
var huanxi as IPotion = VanillaFactory.createPotion("huanxi", 0xd71345);
huanxi.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
huanxi.performEffect = function(living, amplifier) {
};
huanxi.register();

//前奏
var musica as IPotion = VanillaFactory.createPotion("musica", 0xbed742);
musica.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
musica.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-1,-1.0);}
		else{
        player.foodStats.addStats(-2,-2.0);
		
	}}
};
musica.register();

//间奏
var musicb as IPotion = VanillaFactory.createPotion("musicb", 0xbed742);
musicb.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
musicb.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-1,-1.0);}
		else{
        player.foodStats.addStats(-2,-2.0);
		
	}}
};
musicb.register();

//尾奏
var musicc as IPotion = VanillaFactory.createPotion("musicc", 0xbed742);
musicc.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
musicc.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-1,-1.0);}
		else{
        player.foodStats.addStats(-2,-2.0);
		}}
	
};
musicc.register();

//闭幕
var musicd as IPotion = VanillaFactory.createPotion("musicd", 0xbed742);
musicd.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
musicd.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-1,-1.0);}
		else{
        player.foodStats.addStats(-2,-2.0);
		}}
	
};
musicd.register();

//静场
var musice as IPotion = VanillaFactory.createPotion("musice", 0xbed742);
musice.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
musice.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-1,-1.0);}
		else{
        player.foodStats.addStats(-2,-2.0);
		}}
	
};
musice.register();

//节拍紊乱
var nomusic as IPotion = VanillaFactory.createPotion("nomusic", 0xbed742);
nomusic.isReady = function(duration, amplifier) {
	return duration %10 == 0;
};
nomusic.performEffect = function(living, amplifier) {
		if (living.isBoss){
		return;
	}else{
	var player as Player = living;
    var world as IWorld = player.world;
	if(player.isPotionActive(<potion:contenttweaker:ismusic>)){
		player.foodStats.addStats(-2,-0.0);}
		else{
        player.foodStats.addStats(-4,-0.0);
		}}
	
};
nomusic.register();

//稳拍
var ismusic as IPotion = VanillaFactory.createPotion("ismusic", 0xbed742);
ismusic.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
ismusic.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		player.foodStats.addStats(1,1.0);}
	
};
ismusic.register();

//绝望之饥
var warphungry as IPotion = VanillaFactory.createPotion("warphungry", 0xbed742);
warphungry.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
warphungry.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
    var world as IWorld = player.world;
		player.foodStats.addStats(-5,-10.0);
		player.health -=4;
		player.warpTemporary +=2;
		player.warpNormal +=2;
		player.sendStatusMessage(format.red("过低的营养水平使你饥饿不堪，神志不清"));  //给予提示
	}
	
};
warphungry.register();

//饱和饥饿症
var falsesaturation as IPotion = VanillaFactory.createPotion("falsesaturation", 0xbed742);
falsesaturation.isReady = function(duration, amplifier) {
	return duration %60 == 0;
};
falsesaturation.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
 	var player as Player = living;
	  if (!player.world.remote) { 
 	var player as Player = living;
    var world as IWorld = player.world;
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" energy 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" fruitable 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" proteinairy 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" sugarain 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" abundant 1");
		player.sendStatusMessage(format.red("无源的饱腹感充斥着你的肠胃，你反而愈发想念更真实的食物"));  //给予提示
	  }
	
}};
falsesaturation.register();

//弑神怒焰
var killgodfire as IPotion = VanillaFactory.createPotion("killgodfire", 0xbed742);
killgodfire.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
killgodfire.performEffect = function(living, amplifier) {
	if (living.health > 20){
	living.health -= 10 ;
	living.setFire(20);}
};
killgodfire.register();

//止焰
var stopfore as IPotion = VanillaFactory.createPotion("stopfore", 0xbed742);
stopfore.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
stopfore.performEffect = function(living, amplifier) {
};
stopfore.register();

//龙蒿披风增益
var longsong as IPotion = VanillaFactory.createPotion("longsong", 0xbed742);
longsong.isReady = function(duration, amplifier) {
	return duration %399 == 0;
};
longsong.performEffect = function(living, amplifier) {
	 living.addPotionEffect(<potion:contenttweaker:stoplong>.makePotionEffect(600, 0, false, false));
                
};
longsong.register();

//龙蒿披风冷却
var stoplong as IPotion = VanillaFactory.createPotion("stoplong", 0xbed742);
stoplong.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
stoplong.performEffect = function(living, amplifier) {
};
stoplong.register();

//始源林海无敌
var sylhwudi as IPotion = VanillaFactory.createPotion("sylhwudi", 0xbed742);
sylhwudi.isReady = function(duration, amplifier) {
	return duration %399 == 0;
};
sylhwudi.performEffect = function(living, amplifier) {
                
};
sylhwudi.register();

//始源林海无敌冷却
var stopsylh as IPotion = VanillaFactory.createPotion("stopsylh", 0xbed742);
stopsylh.isReady = function(duration, amplifier) {
	return duration %399 == 0;
};
stopsylh.performEffect = function(living, amplifier) {
                
};
stopsylh.register();

//饱和饥饿症豁免
var notfales as IPotion = VanillaFactory.createPotion("notfales", 0xbed742);
notfales.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
notfales.performEffect = function(living, amplifier) {
                
};
notfales.register();

//磁化
var bewoman as IPotion = VanillaFactory.createPotion("bewoman", 0xbed742);
bewoman.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
bewoman.performEffect = function(living, amplifier) {
                
};
bewoman.register();

//弱点标记 
var biaoji as IPotion = VanillaFactory.createPotion("biaoji", 0xbed742);
biaoji.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
biaoji.performEffect = function(living, amplifier) {
                
};
biaoji.register();

//虚空权能
var voidability as IPotion = VanillaFactory.createPotion("voidability", 0xbed742);
voidability.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
voidability.performEffect = function(living, amplifier) {
	living.health = (living.maxHealth * 0.25f) as float ;
};
voidability.register();

//虚空冷却
var stopvoid as IPotion = VanillaFactory.createPotion("stopvoid", 0xbed742);
stopvoid.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
stopvoid.performEffect = function(living, amplifier) {
};
stopvoid.register();

//格挡
var shelding as IPotion = VanillaFactory.createPotion("shelding", 0xbed742);
shelding.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
shelding.performEffect = function(living, amplifier) {
};
shelding.register();

//败血症
var baixue as IPotion = VanillaFactory.createPotion("baixue", 0xbed742);
baixue.badEffectIn = true;
baixue.isReady = function(duration, amplifier) {
	return duration %1 == 0;
};
baixue.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
	if (living.health >= (living.maxHealth*0.75f)){
	living.health = (living.maxHealth * 0.75f) as float ;}
	}
};
baixue.register();

//糖尿病
var tangniao as IPotion = VanillaFactory.createPotion("tangniao", 0xbed742);
tangniao.badEffectIn = true;
tangniao.isReady = function(duration, amplifier) {
	return duration %600 == 0;
};
tangniao.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
	  if (!player.world.remote) {
	player.foodStats.addStats(-5,-5.0);
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" sugarain 1");
	}else return;}
};
tangniao.register();

//低血糖
var dxt as IPotion = VanillaFactory.createPotion("dxt", 0xbed742);
dxt.badEffectIn = true;
dxt.isReady = function(duration, amplifier) {
	return duration %600 == 0;
};
dxt.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
	  if (!player.world.remote) {
		player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(600, 2, false, false));
     player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(600, 2, false, false));  
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" energy 15");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" abundant 5");
	server.commandManager.executeCommand(server,"nutrition add "+player.name+" sugarain 5");
	}else return;}
};
dxt.register();


//倦怠
var juandai as IPotion = VanillaFactory.createPotion("juandai", 0xbed742);
juandai.badEffectIn = true;
juandai.isReady = function(duration, amplifier) {
	return duration %2400 == 0;
};
juandai.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
		var player as Player = living;
	  if (!player.world.remote) {
		player.addPotionEffect(<potion:potioncore:dispel>.makePotionEffect(600, 0, false, false));
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" fruitable 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" proteinairy 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" sugarain 1");
	server.commandManager.executeCommand(server,"nutrition subtract "+player.name+" abundant 1");
    if(Math.random()<0.1){
        timego(player,"困倦难忍，你打了一个盹","red");
		server.commandManager.executeCommand(server,"time add 12000");
		server.commandManager.executeCommand(server,"nutrition add "+player.name+" energy 5");
	}
	}else return;}
};
juandai.register();

//蓄能
var powerup as IPotion = VanillaFactory.createPotion("powerup", 0xbed742);
powerup.badEffectIn = false;
powerup.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
powerup.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
	var player as IPlayer =living;
    var playerr as EntityPlayer  =player.native;
    var absorption as float = playerr.getAbsorptionAmount();
    if (absorption < 10) {
        playerr.setAbsorptionAmount(absorption + 1.0f);
    }
	}
};
powerup.register();

//强蓄能
var powerupi as IPotion = VanillaFactory.createPotion("powerupi", 0xbed742);
powerupi.badEffectIn = false;
powerupi.isReady = function(duration, amplifier) {
	return duration %40 == 0;
};
powerupi.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
	var player as IPlayer =living;
    var playerr as EntityPlayer  =player.native;
    var absorption as float = playerr.getAbsorptionAmount();
    if (absorption < 20) {
        playerr.setAbsorptionAmount(absorption + 2.0f);
    }
	}
};
powerupi.register();

//真蓄能
var powerupii as IPotion = VanillaFactory.createPotion("powerupii", 0xbed742);
powerupii.badEffectIn = false;
powerupii.isReady = function(duration, amplifier) {
	return duration %20 == 0;
};
powerupii.performEffect = function(living, amplifier) {
	if (living.isBoss){
		return;
	}else{
	var player as IPlayer =living;
    var playerr as EntityPlayer  =player.native;
    var absorption as float = playerr.getAbsorptionAmount();
    if (absorption < 40) {
        playerr.setAbsorptionAmount(absorption + 4.0f);
    }
	}
};
powerupii.register();