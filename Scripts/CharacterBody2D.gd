extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var change_gravity = true
var gravity = true

func _physics_process(delta):
	# Add the gravity.
	if gravity == true:
		velocity.y = 600
	elif gravity == false:
		velocity.y = -600

	# Handle jump.
	if Input.is_action_just_pressed("player_1_controller") and (is_on_ceiling() or is_on_floor()):
		gravity = !gravity
	
	velocity.x = 300

	move_and_slide()
