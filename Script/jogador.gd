extends CharacterBody2D


const SPEED = 5000.0



func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("esquerda","direita", "cima", "baixo")
	
	if direction:
		velocity = direction * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * delta)
		velocity.y = move_toward(velocity.y, 0, SPEED * delta)
	
	move_and_slide()
