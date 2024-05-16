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

