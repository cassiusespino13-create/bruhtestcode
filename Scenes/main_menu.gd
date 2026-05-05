extends Control

enum ScreenState {START, SETTINGS}

var state: ScreenState


func _ready() -> void:
	Set_State(ScreenState.START)


func Set_State(new_state: ScreenState) -> void:
	if state == new_state:
		return
	
	state = new_state

	var is_start := state == ScreenState.START
	var is_settings := state == ScreenState.SETTINGS

	%Start.visible = is_start
	%Settings.visible = is_start
	%Quit.visible = is_start

	$Back.visible = is_settings


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_settings_pressed() -> void:
	Set_State(ScreenState.SETTINGS)

func _on_back_pressed() -> void:
	Set_State(ScreenState.START)

func _on_quit_pressed() -> void:
	get_tree().quit()
