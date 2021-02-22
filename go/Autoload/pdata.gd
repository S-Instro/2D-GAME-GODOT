extends Node
signal score_up
signal p_died
signal mela
var levels=0
var Total=0
var unlock=1
var score :=0 setget set_score
var deaths :=0 setget set_death


func reset():
	score=0
	deaths=0

func set_score(value: int)->void:
	score=value
	emit_signal("score_up")
	
func set_death(value:int)->void:
	deaths=value
	levels+=1
	emit_signal("mela")
	if deaths==4:
		emit_signal("p_died")




