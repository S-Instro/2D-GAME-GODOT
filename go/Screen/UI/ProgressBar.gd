extends Control
export(String,FILE) var next_scene_path :=" "

func _ready():
	update_percent(100)
	
	
func update_percent(new_percent):
	$ltween.interpolate_property($ProgressBar,"value",$ProgressBar.value,new_percent,9,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
	$ltween.start()
	yield($ltween,"tween_completed")
	 
	if new_percent==$ProgressBar.max_value:
		$AnimationPlayer.play("fade")
		
		yield($AnimationPlayer,"animation_finished")
		get_tree().change_scene(next_scene_path)
