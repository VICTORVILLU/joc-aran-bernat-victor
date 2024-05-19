extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.player_winner == "Fire_2":
		$Text.text = "The winner is Blue Player!"
	else:	$Text.text = "The winner is Red Player!"
