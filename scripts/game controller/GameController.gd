extends Node
class_name GameControler


func _ready():
	# gives the pointers of the housing nodes
	Globals.world_2d = $World2D
	Globals.world_3d = $World3D
	Globals.gui = $GUI
