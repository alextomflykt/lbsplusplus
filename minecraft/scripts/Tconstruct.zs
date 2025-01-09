/*


TODO: Rebalance Tconstruct/Metalpress
Metal pressing certain items such as gears, at a reduced cost, results in an infinite feedback loop due to smelting to standard crafting bench cost.

*/


mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:12>, <liquid:iron.molten> * 144, 700, <minecraft:iron_block>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:13>, <liquid:gold.molten> * 144, 500, <minecraft:gold_block>);