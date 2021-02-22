extends Control

export var next_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("new")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().change_scene_to(next_scene)
	pass # Replace with function body.
