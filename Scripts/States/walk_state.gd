extends State

class_name WalkState

func physics_update(delta):
	var character = state_machine.get_parent()
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction == 0:
		state_machine.change_state("idlestate")
		return
	elif Input.is_action_just_released("move_left") or Input.is_action_just_released("move_right"):
		character.velocity.x = direction * -200
	character.velocity.x = direction * 200
	character.velocity.y += 980 * delta
	
	character.move_and_slide()

func handle_input(_event):
	var character = state_machine.get_parent()
	if character.is_on_floor and Input.is_action_just_pressed("jump"):
		state_machine.change_state("jumpstate")

		
		
	
	
	
