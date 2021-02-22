extends Control
var exit
var ei
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$coin/SCORE.text="%s"%Pdata.Total
	$main.play()
	$AnimationPlayer.play("name")
	exit=get_node("Popup")
	ei=get_node("quit")
	



func _on_quit_pressed():
	$setting.disabled=true
	$about.disabled=true
	ei.hide()
	exit.show()
	$AnimationPlayer.play("pop")
	yield($AnimationPlayer,"animation_finished")
	
	pass # Replace with function body.


func _on_no_pressed():
	$setting.disabled=false
	$about.disabled=false
	$AnimationPlayer.play("pull")
	yield($AnimationPlayer,"animation_finished")
	ei.show()
	$AnimationPlayer.play("name")
	exit.hide()
	pass # Replace with function body.


func _on_yes_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_Play_pressed():
	Pdata.score=0
	get_tree().change_scene("res://screen/ui/plwait.tscn")
	


func _on_about_mouse_entered():
	$about.rect_size.x=160
	$about.rect_size.y=160
	pass # Replace with function body.


func _on_about_mouse_exited():
	$about.rect_size.x=150
	$about.rect_size.y=150
	pass # Replace with function body.


func _on_about_pressed():
	get_tree().change_scene("res://UI/info.tscn")
	pass # Replace with function body.


func _on_setting_mouse_entered():
	$setting.rect_size.x=160
	$setting.rect_size.y=160
	pass # Replace with function body.


func _on_setting_mouse_exited():
	$setting.rect_size.x=150
	$setting.rect_size.y=150
	pass # Replace with function body.


func _on_setting_pressed():
	pass # Replace with function body.
