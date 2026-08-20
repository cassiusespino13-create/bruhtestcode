extends State

class_name JumpState

var JUMP_SPEED = -350
# Called when the node enters the scene tree for the first time.
func enter():
	var character = state_machine.get_parent()
	character.velocity.y = JUMP_SPEED

func physics_update(delta):
	var character = state_machine.get_parent()
	
	character.velocity.y += 980 * delta
	
	var direction = Input.get_axis("move_left", "move_right")
	character.velocity.x = direction * 200
	
	character.move_and_slide()
	
	if character.is_on_floor():
		if direction != 0:
			state_machine.change_state("walkstate")
		else:
			state_machine.change_state("idlestate")
