extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.players_alive = 2



func _process(delta):
	if Global.players_alive == 0:
		print(Global.player_winner)
		get_tree().change_scene_to_file("res://Scenes/the_winner_is.tscn")

	if Input.is_action_just_pressed("restart"):
		get_tree().change_scene_to_file("res://Scenes/map_3/map_3.tscn")
