extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print(body.name)
	if body.name in ["Fire","Fire_2"]:
		body.queue_free()
	elif body.name in ['escena_bala','escena_bala_blava','@CharacterBody2D@2','@CharacterBody2D@3','@CharacterBody2D@4','@CharacterBody2D@5','@CharacterBody2D@6']:
		queue_free()
		body.queue_free()
	


func _on_area_entered(area):
	print(area.name)
	if area.name in ['escena_bala','escena_bala_blava','@CharacterBody2D@2','@CharacterBody2D@3','@CharacterBody2D@4','@CharacterBody2D@5','@CharacterBody2D@6',"Area2D"]:
		queue_free()
		area.queue_free()
