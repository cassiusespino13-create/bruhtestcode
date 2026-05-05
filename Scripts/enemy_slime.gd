extends Node2D

const SPEED = 30

var direction = 1

@onready var raycastright: RayCast2D = $Raycastright
@onready var raycastleft: RayCast2D = $Raycastleft


func _process(delta: float) -> void:
	if raycastright.is_colliding():
		direction = -1
	if raycastleft.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta
