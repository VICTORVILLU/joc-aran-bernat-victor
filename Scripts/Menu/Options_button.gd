extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_down():
	$BG_4.visible = true



func _on_button_button_up():
	$BG_4.visible = false
	print("Options")


func _on_button_mouse_entered():
	$BG_3.visible = true


func _on_button_mouse_exited():
	$BG_3.visible = false
