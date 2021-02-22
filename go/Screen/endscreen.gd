extends Node
onready var score:=get_node("Label")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	score.text="Your total score is: %s"%Pdata.score +"\n"+"your died:%s"%Pdata.levels
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_quit_button_up():
	get_tree().quit()
