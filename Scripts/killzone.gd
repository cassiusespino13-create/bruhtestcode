extends Area2D
# var score2 = 0
@onready var timer = $Timer
signal total_score2
const PLAYERBRO = preload("uid://cxnwjgi5awp1l")
func _on_body_entered(_body: Node2D) -> void:
	print("Dead, stupid...")
	timer.start()
	# total_score()
	total_score2.emit()
	
# func add_point2():
	# score2 += 1
	
# func total_score():
	# print("Congrats! you have a total of ", score2, " score!")


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	
