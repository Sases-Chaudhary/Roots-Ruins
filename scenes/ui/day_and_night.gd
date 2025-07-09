extends Control

@onready var time_label: Label = $TimePannel/MarginContainer/TimeLabel
@onready var day_label: Label = $DayPannel/MarginContainer/DayLabel

@export var normal_speed: int = 10
@export var fast_speed: int = 50
@export var cheetah_speed: int = 550

func _ready() -> void:
	DayNightCycleManager.time_tick.connect(on_time_tick)
	
func on_time_tick(day : int, hour : int, minute : int) -> void:
	day_label.text = " Day " + str(day)
	time_label.text = "%02d:%02d" % [hour, minute]


func _on_normal_speed_button_pressed() -> void:
	DayNightCycleManager.game_speed = normal_speed


func _on_fast_speed_button_pressed() -> void:
	DayNightCycleManager.game_speed = fast_speed


func _on_cheetah_speed_button_pressed() -> void:
	DayNightCycleManager.game_speed = cheetah_speed
