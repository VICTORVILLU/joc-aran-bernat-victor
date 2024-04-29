extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if is_on_floor():
		$AnimatedSprite2D.play('run')
		scale = Vector2(1,1)
	elif not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play('air')
		scale = Vector2(1,-1)
	# Handle jump.
	if Input.is_action_just_pressed("player_1_controller") and (is_on_floor() or is_on_ceiling()) :
		velocity.y *=-1
	# 0.944

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	move_and_slide()
