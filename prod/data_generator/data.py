data = {
  "address": [
      {
        "id_address": "1"
      },
      {
        "id_address": "2"
      },
      {
        "id_address": "3"
      }
    ],

  "customer": [
    {
      "id_customer": "1",
      "id_address_customer_fk": "1"
    },
    {
      "id_customer": "2",
      "id_address_customer_fk": "2"
    },
    {
      "id_customer": "3",
      "id_address_customer_fk": "3"
    }
  ],

  "pizza": [
    {
      "pizza_name": "Margarita"
    },
    {
      "pizza_name": "Nordique"
    },
    {
      "pizza_name": "Végétarienne"
    }

  ],

  "customer_order": [
    {
      "id_order": "1",
      "id_customer_order_fk": "1",
      "status": "En cours de préparation",
      "payement_method": "Carte bancaire",
      "delivery_mode": "Chez le client",
      "id_address_order_fk": "1"
    },
    {
      "id_order": "2",
      "id_customer_order_fk": "2",
      "status": "En livraison",
      "payement_method": "Espéces",
      "delivery_mode": "Retrait en pizzeria",
      "id_address_order_fk": "2"
    },
    {
      "id_order": "3",
      "id_customer_order_fk": "3",
      "status": "Livré",
      "payement_method": "Tickets restaurants",
      "delivery_mode": "Retrait en pizzeria",
      "id_address_order_fk": "3"
    }
  ],

  "ingredient": [
      {
        "ingredient_name": "Poulet",
        "ingredient_description": "atomise en petits morceaux"
      },
      {
        "ingredient_name": "Haricots",
        "ingredient_description": "de tchernobyl"
      },
      {
        "ingredient_name": "Caviar",
        "ingredient_description": "de la reine Elisabeth"
      }

    ],

  "recipe": [
      {
        "id_recipe": "0",
        "pizza_name_recipe_fk": "Margarita",
        "ingredient_name_fk": "Poulet",
        "unit_recipe": "Killogrammes",
      },
      {
        "id_recipe": "1",
        "pizza_name_recipe_fk": "Nordique",
        "ingredient_name_fk": "Haricots",
        "unit_recipe": "Grammes",
      },
      {
        "id_recipe": "2",
        "pizza_name_recipe_fk": "Végétarienne",
        "ingredient_name_fk": "Caviar",
        "unit_recipe": "Litres",

    }
  ],

  "employee": [
      {
        "id_employee_number": "1",
        "id_address_employee_fk": "1"
      },
      {
        "id_employee_number": "2",
        "id_address_employee_fk": "2"
      },
      {
        "id_employee_number": "3",
        "id_address_employee_fk": "3"
      }

    ],

  "role": [
      {
        "id_role": "1",
        "id_employee_fk": "1",
        "employee_role": "Directeur"
      },
      {
        "id_role": "2",
        "id_employee_fk": "2",
        "employee_role": "Livreur"
      },
      {
        "id_role": "3",
        "id_employee_fk": "3",
        "employee_role": "Preparateur"
      }

    ],

  "restaurant": [
      {
        "id_restaurant_number": "1",
        "id_address_restaurant_fk": "1",
        "id_role_restaurant_fk": "1",
        "name": "Pizzaria Alfredo"
      },
      {
        "id_restaurant_number": "2",
        "id_address_restaurant_fk": "2",
        "id_role_restaurant_fk": "2",
        "name": "Pizzaria Tatie"
      },
      {
        "id_restaurant_number": "3",
        "id_address_restaurant_fk": "3",
        "id_role_restaurant_fk": "3",
        "name": "Pizzaria Ovnie"
      }

    ],

  "pizza_order": [
      {
        "id_pizza_order": "1",
        "pizza_name_fk": "Margarita",
        "id_order_fk": "1"
      },
      {
        "id_pizza_order": "2",
        "pizza_name_fk": "Nordique",
        "id_order_fk": "2"

      },
      {
        "id_pizza_order": "3",
        "pizza_name_fk": "Végétarienne",
        "id_order_fk": "3"
      }

    ],

  "restaurant_inventory": [
      {
        "id_restaurant_inventory": "1",
        "ingredient_name_inventory_fk": "Poulet",
        "id_restaurant_number_fk": "1",
        "unit_ingredient": "Killogrammes"

      },
      {
        "id_restaurant_inventory": "2",
        "ingredient_name_inventory_fk": "Haricots",
        "id_restaurant_number_fk": "2",
        "unit_ingredient": "Grammes"

      },
      {
        "id_restaurant_inventory": "3",
        "ingredient_name_inventory_fk": "Caviar",
        "id_restaurant_number_fk": "3",
        "unit_ingredient": "Litres"
      }

    ]
}
