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
	
	if log >= 15 and stone >= 10 and milk >= 15 and egg >= 15:
		SceneManager.load_level("Level2")
		await get_tree().tree_changed
		InventorySimple.clear_inventory()
