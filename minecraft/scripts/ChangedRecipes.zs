val iron_ingot = <ore:ingotIron>;
val planks = <ore:plankWood>;

// Fixes door decraft plank duplication (Changed output 3 -> 1)
recipes.remove(<minecraft:wooden_door>);
recipes.addShaped(<minecraft:wooden_door>,
[
[planks, planks, null],
[planks, planks, null],
[planks, planks, null]
]);

// Fixes door smelting iron duplication (Changed output 3 -> 1)
recipes.remove(<minecraft:iron_door>);
recipes.addShaped(<minecraft:iron_door>,
[
[iron_ingot, iron_ingot, null],
[iron_ingot, iron_ingot, null],
[iron_ingot, iron_ingot, null]
]);


// Fixes Et futurum smooth stone being uncraftable
val circuit_plate = <ProjRed|Core:projectred.core.part>;
furnace.remove(<*>, <ore:stone>);
recipes.addShaped(<etfuturum:smooth_stone>,
[
[circuit_plate, null],
[circuit_plate, null]
]);
