extends CharacterBody2D

var Velocitat = Vector2(1,0)
var speed = 650
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$AnimatedSprite2D.play('air')
	
	var collision_info = move_and_collide(Velocitat.normalized() * delta * speed)
	



func _on_area_2d_body_entered(body):
	if body.name in ["Laser","Laser2","Laser3","Laser4","Laser5","Laser6","Laser7","Laser8","Laser9", "Fire", "Fire_2", "bala_collision"]:
		pass
	else: 
		queue_free()
