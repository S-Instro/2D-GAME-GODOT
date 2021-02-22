extends KinematicBody2D
onready var stomp_area: Area2D =$stompd
export var score:=100
const ed=preload("res://Effects/Edeath.tscn")
var speed :=Vector2.ZERO
func _ready():
	set_physics_process(true)
	
	
func _on_Area2D_body_entered(body):
	if body.global_position.y > stomp_area.global_position.y:
		return 
	get_node("CollisionShape2D").disabled=true;
	die()
		
	
	
func _physics_process(delta):
	speed.x=200
	
	move_and_slide(speed)
	
	
func die():
	Pdata.score+=score
	var Ed=ed.instance()
	get_parent().add_child(Ed)
	Ed.global_position=global_position
	queue_free()



# Declare member variables here. Examples:
# var a = 2
# var b = "text"



