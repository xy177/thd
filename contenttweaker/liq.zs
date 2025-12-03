#loader contenttweaker

#modloaded tconstruct

#priority 99

import crafttweaker.liquid.ILiquidStack;

import crafttweaker.game.IGame;

import mods.contenttweaker.Fluid;

import mods.contenttweaker.VanillaFactory;

import mods.contenttweaker.Color;
val bloodstone = mods.contenttweaker.VanillaFactory.createFluid("bloodstone", Color.fromHex("000000").getIntColor());
bloodstone.material = <blockmaterial:lava>;
bloodstone.viscosity = 3000;
bloodstone.density = 6500;
bloodstone.colorize = false;
bloodstone.temperature = 1000;
bloodstone.luminosity = 10;
bloodstone.color = Color.fromHex("000000").getIntColor();
bloodstone.stillLocation = "contenttweaker:blocks/bloodstone_still";
bloodstone.flowingLocation = "contenttweaker:blocks/bloodstone_flow";
bloodstone.register();

val lyhgd = mods.contenttweaker.VanillaFactory.createFluid("lyhgd", Color.fromHex("000000").getIntColor());
lyhgd.material = <blockmaterial:lava>;
lyhgd.viscosity = 3000;
lyhgd.density = 6500;
lyhgd.colorize = false;
lyhgd.temperature = 1000;
lyhgd.luminosity = 10;
lyhgd.color = Color.fromHex("000000").getIntColor();
lyhgd.stillLocation = "contenttweaker:blocks/yellow1_still";
lyhgd.flowingLocation = "contenttweaker:blocks/yellow1_flow";
lyhgd.register();

val gk = mods.contenttweaker.VanillaFactory.createFluid("gk", Color.fromHex("000000").getIntColor());
gk.material = <blockmaterial:lava>;
gk.viscosity = 3000;
gk.density = 6500;
gk.colorize = false;
gk.temperature = 1000;
gk.luminosity = 10;
gk.color = Color.fromHex("000000").getIntColor();
gk.stillLocation = "contenttweaker:blocks/yellow1_still";
gk.flowingLocation = "contenttweaker:blocks/yellow1_flow";
gk.register();

val light = mods.contenttweaker.VanillaFactory.createFluid("light", Color.fromHex("fffffb").getIntColor());
light.material = <blockmaterial:lava>;
light.viscosity = 3000;
light.density = 6500;
light.colorize = true;
light.temperature = 1000;
light.luminosity = 10;
light.color = Color.fromHex("fffffb").getIntColor();
light.register();


val dark = mods.contenttweaker.VanillaFactory.createFluid("dark", Color.fromHex("130c0e").getIntColor());
dark.material = <blockmaterial:lava>;
dark.viscosity = 3000;
dark.density = 6500;
dark.colorize = true;
dark.temperature = 1000;
dark.luminosity = 10;
dark.color = Color.fromHex("130c0e").getIntColor();
dark.register();

val longshelan = mods.contenttweaker.VanillaFactory.createFluid("longshelan", Color.fromHex("b7ba6b").getIntColor());
longshelan.material = <blockmaterial:water>;
longshelan.viscosity = 3000;
longshelan.density = 6500;
longshelan.colorize = true;
longshelan.temperature = 1000;
longshelan.luminosity = 10;
longshelan.color = Color.fromHex("b7ba6b").getIntColor();
longshelan.register();

val qinjiu = mods.contenttweaker.VanillaFactory.createFluid("qinjiu", Color.fromHex("fedcbd").getIntColor());
qinjiu.material = <blockmaterial:water>;
qinjiu.viscosity = 3000;
qinjiu.density = 6500;
qinjiu.colorize = true;
qinjiu.temperature = 1000;
qinjiu.luminosity = 10;
qinjiu.color = Color.fromHex("fedcbd").getIntColor();
qinjiu.register();

val nsmana = mods.contenttweaker.VanillaFactory.createFluid("nsmana", Color.fromHex("009ad6").getIntColor());
nsmana.material = <blockmaterial:water>;
qinjiu.viscosity = 3000;
nsmana.density = 6500;
nsmana.colorize = true;
nsmana.temperature = 1000;
nsmana.luminosity = 10;
nsmana.color = Color.fromHex("009ad6").getIntColor();
nsmana.register();