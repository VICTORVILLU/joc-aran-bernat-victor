extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var change_gravity = true
var gravity = true
@export var escena_bala:PackedScene
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
	
	if gravity == true:
		velocity.y = 600
		invertit = false
	elif gravity == false:
		velocity.y = -600
		invertit = true
	# Handle jump.
	
	if Input.is_action_just_pressed("player_fire") and (is_on_ceiling() or is_on_floor()):
		gravity = !gravity
	
	
		#dispara()
	
	velocity.x = 300
	
	
	#ANIMATION
	
	if is_on_ceiling() or is_on_floor():
		$Animation.play("run")
	else: $Animation.play("air")
	$Bala1.visible = false
	if Input.is_action_just_pressed("dispara_vermell"):
		$Bala1.visible = true
		$Bala1.velocity = Vector2(650,0)
	move_and_slide()

#func dispara():
	#var nova_bala = escena_bala.instantiate()
	#Global.Bales.add_child(nova_bala)
	#nova_bala.global_position = global_position
	#nova_bala.velocity = 650
