extends Control

var paused:= false setget set_p


onready var scene_tree:=get_tree()
onready var p_over:=get_node("ColorRect")
onready var score:Label=get_node("Label")

func _ready():
	get_tree().set_auto_accept_quit(false)
	Pdata.connect("score_up",self,"update_interface")
	Pdata.connect("p_died",self,"_on_Player_died")
	Pdata.connect("mela",self,"melag")
	update_interface()
	
func melag():
	if Pdata.deaths==1:
		$HeartUIEmpty3/heart2.hide()
		$HeartUIEmpty2/heart2.show()
	elif Pdata.deaths==0:
		$HeartUIEmpty3/heart2.show()
	elif Pdata.deaths==2:
		$HeartUIEmpty2/heart2.hide()
		$HeartUIEmpty3/heart2.hide()
		$HeartUIEmpty/heart2.show()
	elif Pdata.deaths==3:
		$HeartUIEmpty/heart2.hide()
		$HeartUIEmpty2/heart2.hide()
		$HeartUIEmpty3/heart2.hide()
	
	
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		self.paused=true
		p_over.visible=true
		pass        
	if what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST: 
		# For android
		self.paused=true
		p_over.visible=true
		pass
	
func _on_Player_died() -> void:
		self.paused = true
		$AnimationPlayer.play("q")
		get_node("paused").visible=false
	



func update_interface() -> void:
	score.text="%s"%Pdata.score
	
func _unhandled_input(event:InputEvent):
	if event.is_action_pressed("paused"):
		self.paused=not paused
		scene_tree.set_input_as_handled()

func set_p(value:bool)->void:
	paused=value
	scene_tree.paused=value
	p_over.visible=value
	


func _on_Resume_button_up():
	self.paused=false
	get_node("paused").visible=true
	
func _on_paused_released():
	self.paused=true
	get_node("paused").visible=false
		


func _on_retry_button_up():
	Pdata.deaths=0
	Pdata.score=0
	get_tree().paused=false
	get_tree().reload_current_scene()



func _on_quit_pressed():
	get_tree().paused=true
	$AnimationPlayer.play("menu")
	get_node("menu").show()


func _on_no_pressed():
	$AnimationPlayer.play("rm")






func _on_y_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://screen/ui/pw2.tscn")
	pass # Replace with function body.



	
