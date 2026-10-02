extends Node

## track wether or not the player is using m&k or gamepad to dynamically
## change input methods and make the player be able to switch the two anytime
var is_using_mouse := true

## real-time player position 
var player_pos: Vector3

## node which stores 2D scenes
var world_2d: Node2D
## node which stores 3D scenes
var world_3d: Node3D
## node which stores GUI scenes
var gui: CanvasLayer



func _input(event: InputEvent) -> void:
	_check_input_method(event)


## this function figures out what input method the player is using.[br]
## this is saved into [code]is_using_mouse[/code]
func _check_input_method(event) -> void:
	# mouse input
	if (event is InputEventMouseMotion or event is InputEventMouseButton) and not is_using_mouse:
		is_using_mouse = true
		
	# controller input
	elif (event is InputEventJoypadMotion or event is InputEventJoypadButton) and is_using_mouse:
		is_using_mouse = false
