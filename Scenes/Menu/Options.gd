extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Musica.button_pressed = Global.music
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")

func _on_musica_toggled(toggled_on):
	Global.music = toggled_on
