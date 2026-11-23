# Keep in sync with:
# - debug/guide
# - level/librarian_5
# - librarian/get_lectern_enchantments.else
execute if predicate soaplib:api/villager/job/is_librarian run \
    function soaplib:api/villager/trade/set \
    {\
        index: {sell:{components:{"minecraft:custom_data":{"tradetweaks:enchanted_book":1}}}},\
        trade: {\
            xp: 2, \
            priceMultiplier: 0.05f, \
            maxUses: 256, \
            demand: -32,\
            buy: {id: "minecraft:emerald", count: 1}, \
            buyB: {id: "minecraft:book", count: 1}, \
            sell: {\
                id: "minecraft:written_book",\
                count: 1, \
                components: {\
                    "minecraft:written_book_content": {\
                        title: "✦ Enchanters Guide ✦",\
                        author: "Villager #427",\
                        generation: 3,\
                        pages: [\
                        [\
                            {text: "Enchanters Guide", bold: true},\
                            {text: "\n\nThis Villager can learn enchantments by placing an ", bold: false},\
                            {text: " Enchanting Template ", color: "light_purple", bold: false, italic: true},\
                            {sprite: "minecraft:item/enchanted_book", atlas: "minecraft:items", color: "white"},\
                            {text: " in their job station.", bold: false}\
                        ]\
                        ]\
                    },\
                    "minecraft:rarity": "uncommon",\
                    "minecraft:custom_data": {"tradetweaks:guide":1},\
                }\
            },\
            demand: -32\
        }\
    }