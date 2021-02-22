extends Control



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect/bg/score.text="%s"%Pdata.score
	Pdata.Total=Pdata.Total+Pdata.score




func _on_clo_pressed():
	get_tree().change_scene("res://screen/ui/pw2.tscn")
	pass # Replace with function body.


func _on_for_pressed():
	get_tree().change_scene("res://screen/ui/level.tscn")
	pass # Replace with function body.
