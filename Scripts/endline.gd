extends Area2D

var entered = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	entered += 1
	if body.name == "Fire" or body.name == "Fire_2":
		if entered == 1:
			Global.player_winner = body.name
		Global.players_alive -= 1
		body.queue_free()
