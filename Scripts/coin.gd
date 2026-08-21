extends Area2D


@onready var gamemanager: Node = %Gamemanager
@onready var killzone: Area2D = %Killzone


func _on_body_entered(_body: Node2D) -> void:
	gamemanager.add_point()
	# killzone.add_point2()
	queue_free()
