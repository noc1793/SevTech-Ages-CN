import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/*
	Add descriptions to items

	http://crafttweaker.readthedocs.io/en/latest/#Mods/JEI/JEI/#add-description
*/

var descriptionPairs as string[][IItemStack] = {
	<environmentaltech:solar_cont_1>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"16 x 结构方块(1 级及以上)",
		"9 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_2>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"24 x 结构方块(2 级及以上)",
		"25 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_3>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"32 x 结构方块(3级及以上)",
		"49 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_4>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"40 x 结构方块(4级及以上)",
		"81 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_5>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"48 x 结构方块(5级及以上)",
		"121 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_6>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"56 x 结构方块(6级及以上)",
		"169 x 任意类型太阳能板"
	],
	<environmentaltech:void_botanic_miner_cont_1>: [
		"所需材料:",
		"24 x 结构方块(1 级及以上)",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_2>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"32 x 结构方块(2 级及以上)",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_3>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"56 x 结构方块(3级及以上)",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_4>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"56 x 结构方块(4级及以上)",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_5>: [
		"所需材料:",
		"16 x 无效果强化部件",
		"72 x 结构方块(5级及以上)",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_6>: [
		"所需材料:",
		"20 x 无效果强化部件",
		"92 x 结构方块(6级及以上)",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_1>: [
		"所需材料:",
		"24 x 结构方块(1 级及以上)",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_2>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"32 x 结构方块(2 级及以上)",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_3>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"56 x 结构方块(3级及以上)",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_4>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"56 x 结构方块(4级及以上)",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_5>: [
		"所需材料:",
		"16 x 无效果强化部件",
		"72 x 结构方块(5级及以上)",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_6>: [
		"所需材料:",
		"20 x 无效果强化部件",
		"92 x 结构方块(6级及以上)",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_1>: [
		"所需材料:",
		"24 x 结构方块(1 级及以上)",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_2>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"32 x 结构方块(2 级及以上)",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_3>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"56 x 结构方块(3级及以上)",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_4>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"56 x 结构方块(4级及以上)",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_5>: [
		"所需材料:",
		"16 x 无效果强化部件",
		"72 x 结构方块(5级及以上)",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_6>: [
		"所需材料:",
		"20 x 无效果强化部件",
		"92 x 结构方块(6级及以上)",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],

	<environmentaltech:lightning_cont_1>: [
		"所需材料:",
		"4 x 结构方块(1 级及以上)",
		"3 x 避雷针",
		"3 x 绝缘 避雷针"
	],
	<environmentaltech:lightning_cont_2>: [
		"所需材料:",
		"4 x 结构方块(2 级及以上)",
		"4 x 避雷针",
		"4 x 绝缘 避雷针"
	],
	<environmentaltech:lightning_cont_3>: [
		"所需材料:",
		"4 x 结构方块(3级及以上)",
		"5 x 避雷针",
		"5 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_4>: [
		"所需材料:",
		"13 x 结构方块(4级及以上)",
		"4 x 避雷针",
		"16 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_5>: [
		"所需材料:",
		"13 x 结构方块(5级及以上)",
		"6 x 避雷针",
		"22 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_6>: [
		"所需材料:",
		"13 x 结构方块(5级及以上)",
		"8 x 避雷针",
		"28 x 绝缘避雷针"
	],

	<environmentaltech:nano_cont_personal_1>: [
		"所需材料:",
		"4 x 无效果强化部件",
		"20 x 结构方块(1 级及以上)",
		"12 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_2>: [
		"所需材料:",
		"8 x 无效果强化部件",
		"36 x 结构方块(2 级及以上)",
		"24 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_3>: [
		"所需材料:",
		"12 x 无效果强化部件",
		"56 x 结构方块(3级及以上)",
		"40 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_4>: [
		"所需材料:",
		"16 x 无效果强化部件",
		"80 x 结构方块(4级及以上)",
		"60 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_5>: [
		"所需材料:",
		"20 x 无效果强化部件",
		"108 x 结构方块(5级及以上)",
		"84 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_6>: [
		"所需材料:",
		"24 x 无效果强化部件",
		"140 x 结构方块(5级及以上)",
		"112 x 结构镶板"
	]
};

for item, descriptionArray in descriptionPairs {
	JEI.addDescription(item, descriptionArray);
}
