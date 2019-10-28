extends Node

export var score = 0
export var lives = 3

func increase_score(s):
	score += int(s)
	find_node("Score").update_score()
	
func decrease_lives():
	lives -= 1
	find_node("Lives").updates_lives()
	if lives <= 0:
		get_tree().change_scene("res://Scenes/GameOver.tscn")