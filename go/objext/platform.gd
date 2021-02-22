extends Node
const Floor=Vector2.UP
var velocity=Vector2()
var snapN=Vector2.DOWN setget set_snap


func _physics_process(delta):
	
	velocity=0
	
func set_snap(new_snap):
	snapN=new_snap
