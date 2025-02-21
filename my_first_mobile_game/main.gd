extends Control


var score : int = 0
var time_left : int = 12

func _on_button_pressed() -> void:
	score +=1
	$score_label.text = "Score: " + str(score)
	Input.vibrate_handheld(125)
	pass # Replace with function body.


func _on_time_left_timer_timeout() -> void:
	time_left -= 1
	$time_left.text = "Time left: " + str(time_left) +" sec"
	pass # Replace with function body.

func _ready() -> void:
	$time_left.text = "Time left: " + str(time_left) + " sec"
