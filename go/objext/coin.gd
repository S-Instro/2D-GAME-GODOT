extends Area2D
export var score:=100


func _ready():
	$AnimationPlayer.play("bounce")
func _on_coin_body_entered(body):
	pick()
	yield($AnimationPlayer,"animation_finished")
	queue_free()
	
	
func pick():
	$AnimationPlayer.play("fade")
	Pdata.score+=score
	
	


