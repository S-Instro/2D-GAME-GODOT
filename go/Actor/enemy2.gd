extends a
const  ed=preload("res://Effects/Edeath.tscn")
var bol=false
export var score:=100
func _ready():
	set_physics_process(false)
	_velocity.x=-speed.x
	

func _physics_process(delta):
	_velocity.y += gravity * delta
	if is_on_wall():
		bol=not bol
		$AnimatedSprite.flip_h=bol
		_velocity.x*=-1.0
		
	_velocity.y=move_and_slide(_velocity,Vector2.UP).y
		


func _on_hurtbox_area_entered(area):
	 die()

func die():
	Pdata.score+=score
	var Ed=ed.instance()
	get_parent().add_child(Ed)
	Ed.global_position=global_position
	queue_free()
