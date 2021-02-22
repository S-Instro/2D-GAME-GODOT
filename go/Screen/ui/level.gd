extends Control
onready var l1=get_node("levels/1")
onready var l2=get_node("levels/2")
onready var l3=get_node("levels/3")
onready var l4=get_node("levels/4")
onready var l5=get_node("levels/5")

func _ready():		
	for lev in ($levels.get_children()):
		if str2var(lev.name) in range(Pdata.unlock+1):
			lev.disabled=false
			$AnimationPlayer.play(lev.name)
			
		
	
		
		
	
	


func _on_1_pressed():
	get_tree().change_scene("res://screen/ui/pw.tscn")
	pass # Replace with function body.


func _on_b_pressed():
	get_tree().change_scene("res://screen/ui/pw2.tscn")




	
func _on_2_pressed():
	print(Pdata.unlock)
	if Pdata.unlock>=2:
		get_tree().change_scene("res://levels/Level2.tscn")
		
		


func _on_3_pressed():
	if Pdata.unlock>=3:
		get_tree().change_scene("res://levels/Level3.tscn")
	pass # Replace with function body.


func _on_4_pressed():
	if Pdata.unlock>=4:
		get_tree().change_scene("res://levels/Level4.tscn")
	pass # Replace with function body.


func _on_5_pressed():
	if Pdata.unlock>=5:
		get_tree().change_scene("res://levels/Level5.tscn")
	pass # Replace with function body.
