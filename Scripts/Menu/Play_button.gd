extends Node2D

var rng = RandomNumberGenerator.new()



# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_mouse_entered():
	$BG_3.visible = true


func _on_button_mouse_exited():
	$BG_3.visible = false


func _on_button_button_up():
	var random_level = rng.randf_range(1, 3.99999999999999999999)
	$BG_4.visible = false
	print(str(int(random_level)))
	get_tree().change_scene_to_file("res://Scenes/map_"+str(int(random_level))+"/map_"+str(int(random_level))+".tscn")


func _on_button_button_down():
	$BG_4.visible = true
