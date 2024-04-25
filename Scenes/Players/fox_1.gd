extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if is_on_floor():
		$AnimatedSprite2D.play('run')
	if not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play('air')
		AnimatedSprite2D.rotation = 180
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = gravity * -1
	# 0.944

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity.x = 500
	
	move_and_slide()
