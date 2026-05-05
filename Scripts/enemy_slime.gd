extends Node2D

const SPEED : int = 30

var direction : int = 1

@onready var raycastright: RayCast2D = $Raycastright
@onready var raycastleft: RayCast2D = $Raycastleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float) -> void:
	if raycastright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycastleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
