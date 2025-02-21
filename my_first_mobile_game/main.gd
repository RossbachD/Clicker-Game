extends Control


var score : int = 0

func _on_button_pressed() -> void:
	score +=1
	$score_label.text = "Score: " + str(score)
	Input.vibrate_handheld(125)
	pass # Replace with function body.
