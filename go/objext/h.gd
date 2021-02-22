extends Node2D


# Declare member variables here. Examples:

func _on_Area2D_body_entered(body):
	print(Pdata.deaths)
	if Pdata.deaths>0:
		Pdata.deaths=Pdata.deaths-1
	pass # Replace with function body.
