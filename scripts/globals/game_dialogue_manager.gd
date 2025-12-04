extends Node

signal give_crop_seeds
signal feed_the_animals

var has_taken_seeds: bool = false
var level: int = 1


func action_give_crop_seeds() -> void:
	give_crop_seeds.emit()
	has_taken_seeds = true

func action_feed_animals() -> void:
	feed_the_animals.emit()

func check_resources(logs: int, stones: int, milk: int, eggs: int) -> void:
	if logs >= 0 and stones >= 0 and milk >= 1 and eggs >= 1:
		level = 2   # <-- advance to Level 2
