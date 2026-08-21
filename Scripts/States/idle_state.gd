extends State

class_name IdleState

func enter():
	print("entering idle state")

# physics update function is optional. this func adds gravity and stops horizontal movement
func physics_update(delta):
	var character = state_machine.get_parent()
	character.velocity.y += 980 * delta
	character.velocity.x = 0
	character.move_and_slide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func handle_input(_event: InputEvent):
	if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right"):
		state_machine.change_state("walkstate")
	elif Input.is_action_just_pressed("jump"):
		state_machine.change_state("jumpstate")
