tool
extends Node



func _on_game_pressed():

	get_tree().change_scene("res://levels/Level1.tscn")
	Pdata.score=0

	
