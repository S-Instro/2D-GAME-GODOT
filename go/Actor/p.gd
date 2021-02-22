extends a
onready var animation= $AnimationPlayer
var s=0
var jc=0




func _physics_process(delta: float) -> void:
	var is_jump_interrupted: = Input.is_action_just_released("jump") and _velocity.y < 0.0
	var direction: = get_direction()
	_velocity = calculate_move_velocity(_velocity, direction, speed, is_jump_interrupted)
	var snap: Vector2 = Vector2.DOWN * 90.0 if direction.y == 0.0 else Vector2.ZERO
	_velocity = move_and_slide_with_snap(
		_velocity, snap, FLOOR_NORMAL, true
	)
	
	
	if direction!=Vector2.ZERO:
		if direction.x>0:
			animation.play("right")
			
		elif direction.x<0:
			animation.play("left")
	else:
		
		if Input.is_action_just_released("left"):
			animation.play("lidel")
			s=2
		elif Input.is_action_just_released("right"):
			s=3
			animation.play("ridel")
		elif Input.is_action_just_pressed("kill"):
			if s==3:
				animation.play("rkill")
			elif s==2:
				animation.play("lkill")

	

	

		
	
func get_direction() -> Vector2:
	if is_on_floor() and Input.is_action_pressed("jump"):
		$jump.play()
		jc=2
	else:
		jc=0
	return Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		-jc 
		 
	)

func calculate_move_velocity(
		linear_velocity: Vector2,
		direction: Vector2,
		speed: Vector2,
		is_jump_interrupted: bool
	) -> Vector2:
	var velocity: = linear_velocity
	velocity.x = speed.x * direction.x
	if direction.y != 0.0:
		velocity.y = speed.y * direction.y
	if is_jump_interrupted:
		velocity.y = 0.0
	return velocity



func die():
	Pdata.deaths+=1
	if Pdata.deaths==4:
		queue_free()


func _on_ed_body_entered(body):
	$AnimationPlayer.play("death")
	die()
	


func _on_wat_body_entered(body):
	Pdata.deaths+=3
	die()
	pass # Replace with function body.



func _on_Area2D_body_entered(body):
	Pdata.deaths=Pdata.deaths-1
	pass # Replace with function body.
