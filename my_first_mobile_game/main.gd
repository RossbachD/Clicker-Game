extends Control


var score : int = 0
var time_left : int = 12
var aim_score : int = 5

func _on_button_pressed() -> void:
	score +=1
	$score_label.text = "Score: " + str(score)
	Input.vibrate_handheld(125)
	if score == aim_score:
		get_tree().change_scene_to_file("res://win.tscn")
	pass # Replace with function body.


func _on_time_left_timer_timeout() -> void:
	time_left -= 1
	$time_left.text = "Time left: " + str(time_left) +" sec"
	if time_left == 0:
		get_tree().change_scene_to_file("res://game_over.tscn")
	pass # Replace with function body.

func _ready() -> void:
	$time_left.text = "Time left: " + str(time_left) + " sec"
	$aim_score.text = "Aim Score: " + str(aim_score)
