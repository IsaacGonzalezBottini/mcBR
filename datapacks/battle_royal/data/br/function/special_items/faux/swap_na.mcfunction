item replace entity @s weapon.mainhand with carrot_on_a_stick[\
    custom_name= {"text": "Faux de la Mort (Assassin)","color": "dark_gray","italic":true,"bold":true,"underlined":true},\
    lore=[{"text" : "Marché Noir","color":"dark_gray"},{"text" : "clique droit pour basculer en mode dégat ","color":"blue"}],\
    item_model= "iron_hoe",\
    custom_data= {"slay": true, "rg_functor": "br:special_items/faux/swap_an"},\
    enchantment_glint_override=true,\
    attribute_modifiers= [\
        {\
            "type": "attack_damage",\
            "amount": 0,\
            "id": "iron_sword",\
            "operation": "add_value",\
            "slot": "mainhand"\
        },\
        {\
            "type": "attack_speed",\
            "amount": -2.4,\
            "id": "iron_sword",\
            "operation": "add_value",\
            "slot": "mainhand",\
            "display": {\
                "type": "hidden"\
            }\
        }\
    ]]