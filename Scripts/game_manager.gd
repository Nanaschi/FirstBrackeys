extends Node

var score = 0
@onready var coins_text = %CoinsText


func _ready():
	update_coins_ui()
	
func add_point():
	score += 1
	update_coins_ui()
	print(score)
	
func update_coins_ui():
	coins_text.text = str(score) + " coins"
