extends Node

var inventory : Dictionary = Dictionary()

signal inventory_changed

func add_collectable(collectable_name : String) -> void:
	inventory.get_or_add(collectable_name)
	
	if inventory[collectable_name] == null:
		inventory[collectable_name] = 1
	else:
		inventory[collectable_name] += 1
		
	inventory_changed.emit()
	
func remove_collectable(collectable_name: String) -> void:
	if inventory[collectable_name] == null:
		inventory[collectable_name] = 0
	else:
		if inventory[collectable_name] > 0:
			inventory[collectable_name] -= 1

	inventory_changed.emit()
<<<<<<< HEAD
=======


func clear_inventory() -> void:
	inventory.clear()
	inventory_changed.emit()
>>>>>>> 2735f0ff891a7ef288bf9da455de5881192d02f7
