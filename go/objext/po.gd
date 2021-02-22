tool
extends Area2D
onready var anim_player: AnimationPlayer = $AnimationPlayer
export var next_scene: PackedScene


func _on_po_body_entered(body):
	Pdata.unlock=Pdata.unlock+1
	teleport()



func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if not next_scene else ""


func teleport() -> void:
	anim_player.play("fade")
	yield(anim_player,"animation_finished")
	get_tree().change_scene_to(next_scene)






