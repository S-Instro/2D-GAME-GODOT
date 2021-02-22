extends Node2D



func _on_left_pressed():
	Input.action_press("left")


func _on_left_released():
	Input.action_release("left")


func _on_right_pressed():
	Input.action_press("right")


func _on_right_released():
	Input.action_release("right")


func _on_jump_pressed():
	Input.action_press("jump")


func _on_jump_released():
	Input.action_release("jump")


func _on_kill_pressed():
	Input.action_press("down")


func _on_kill_released():
	Input.action_release("down")


func _on_close_2_pressed():
	get_tree().change_scene("res://screen/ui/pw2.tscn")
	pass # Replace with function body.
