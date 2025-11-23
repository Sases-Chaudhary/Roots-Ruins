class_name DamageComponent
extends Node2D

@export var max_damage = 1
@export var current_damge = 0

signal max_damage_reached

func apply_damage(damage: int) -> void:
	current_damge = clamp(current_damge + damage, 0, max_damage)
	
	if current_damge == max_damage:
		max_damage_reached.emit()
