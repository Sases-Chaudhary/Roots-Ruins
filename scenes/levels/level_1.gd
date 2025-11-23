extends Node

var log: int = 0
var stone: int = 0
var milk: int = 0
var egg: int = 0

func _ready() -> void:
	InventorySimple.inventory_changed.connect(check_level_1_completion)
	
func check_level_1_completion() -> void:
	log = InventorySimple.inventory.get("log", 0)
	stone = InventorySimple.inventory.get("stone", 0)
	milk = InventorySimple.inventory.get("milk", 0)
	egg = InventorySimple.inventory.get("egg", 0)
	
	if log >= 0 and stone >= 0 and milk >= 1 and egg >= 1:
		InventorySimple.clear_inventory()
		SceneManager.load_level("Level2")
