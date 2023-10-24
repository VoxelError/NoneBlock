tag @s[nbt={VillagerData: {profession: "minecraft:mason"}}] add Mason
data modify entity @s[tag=Mason,predicate=noneblock:quarter] Offers.Recipes[].sell{id: "minecraft:polished_andesite"}.id set value tuff
data modify entity @s[tag=Mason,predicate=noneblock:quarter] Offers.Recipes[].sell{id: "minecraft:polished_diorite"}.id set value calcite
data modify entity @s[tag=Mason,predicate=noneblock:quarter] Offers.Recipes[].sell{id: "minecraft:polished_granite"}.id set value deepslate

tag @s[nbt={VillagerData: {profession: "minecraft:leatherworker"}}] add Leatherworker
data modify entity @s[tag=Leatherworker,predicate=noneblock:quarter] Offers.Recipes[9] set value {buy: {id: emerald, Count: 9b}, buyB: {id: iron_ingot, Count: 6b}, sell: {id: iron_horse_armor, Count: 1b}, maxUses: 12, xp: 30, priceMultiplier: 0.2f}
data modify entity @s[tag=Leatherworker,predicate=noneblock:quarter] Offers.Recipes[9] set value {buy: {id: emerald, Count: 12b}, buyB: {id: gold_ingot, Count: 6b}, sell: {id: golden_horse_armor, Count: 1b}, maxUses: 12, xp: 30, priceMultiplier: 0.2f}
data modify entity @s[tag=Leatherworker,predicate=noneblock:quarter] Offers.Recipes[9] set value {buy: {id: emerald, Count: 15b}, buyB: {id: diamond, Count: 6b}, sell: {id: diamond_horse_armor, Count: 1b}, maxUses: 12, xp: 30, priceMultiplier: 0.2f}

tag @s[nbt={VillagerData: {profession: "minecraft:fisherman"}}] add Fisherman
data modify entity @s[tag=Fisherman] Offers.Recipes append value {buy: {id: emerald, Count: 1b}, sell: {id: lily_pad, Count: 6b}, maxUses: 12, xp: 30, priceMultiplier: 0.05f}

tag @s[nbt={VillagerData: {profession: "minecraft:librarian"}},predicate=noneblock:quarter] add Librarian
data modify entity @s[tag=Librarian] Offers.Recipes append value {buy: {id: emerald, Count: 19b}, sell: {id: enchanted_book, Count: 1b, tag: {StoredEnchantments: [{id: swift_sneak, lvl: 1s}]}}, maxUses: 12, xp: 30, priceMultiplier: 0.2f}

tag @s[nbt={VillagerData: {profession: "minecraft:cleric"}},predicate=noneblock:quarter] add Cleric
data modify entity @s[tag=Cleric] Offers.Recipes[9] set value {buy: {id: emerald, Count: 64b}, buyB: {id: golden_apple, Count: 8b}, sell: {id: enchanted_golden_apple, Count: 1b}, maxUses: 3, xp: 30, priceMultiplier: 0.2f}

tag @s[nbt={VillagerData: {profession: "minecraft:weaponsmith"}},predicate=noneblock:quarter] add Weaponsmith
data modify entity @s[tag=Weaponsmith] Offers.Recipes append value {buy: {id: emerald, Count: 12b}, sell: {id: diamond, Count: 1b}, maxUses: 12, xp: 30, priceMultiplier: 0.2f}

tag @s add Tagged