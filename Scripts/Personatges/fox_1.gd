extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var change_gravity = true
var gravity = true
var invertit = false:
	set(nova_inversio):
		invertit = nova_inversio
		if invertit:
			$Animation.flip_v = true
			$Normal.set_deferred("disabled", true)
			$Invertida.set_deferred("disabled", false)
		else:
			$Animation.flip_v = false
			$Normal.set_deferred("disabled", false)
			$Invertida.set_deferred("disabled", true)

func _physics_process(delta):
	# Add the gravity.
	if gravity == true:
		velocity.y = 600
		invertit = false
	elif gravity == false:
		velocity.y = -600
		invertit = true
	# Handle jump.
	
	if Input.is_action_just_pressed("player_fox_1") and (is_on_ceiling() or is_on_floor()):
		gravity = !gravity
	
	velocity.x = 300
	
	#ANIMATION
	
	if is_on_ceiling() or is_on_floor():
		$Animation.play("run")
	else: $Animation.play("air")

	move_and_slide()
