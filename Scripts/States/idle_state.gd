extends State

class_name IdleState
# Called when the node enters the scene tree for the first time.
func enter():
	print("entering idle state")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func handle_input(_event: InputEvent):
	if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right"):
		state_machine.change_state("walkstate")
	elif Input.is_action_just_pressed("jump"):
		state_machine.change_state("jumpstate")
		
