extends Node

var score = 0
# Called when the node enters the scene tree for the first time.
func add_point():
	score += 1
	print("You now have ", score, " points!")
	
func _on_killzone_total_score_2() -> void:
	print("Congrats! you have a total of ", score, " score!")
