extends Area2D
var cosa = ''

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print(body.velocity.x)
	body.velocity.x = 20
	print(body.velocity.x)
	cosa = body
	$Timer.start()

func _on_timer_timeout():
	cosa.velocity.x = 300
