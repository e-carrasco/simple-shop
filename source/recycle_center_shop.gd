extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$ShopWindow.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_scene_button_pressed():
	get_tree().change_scene_to_packed(load("res://scenes/WorldMap.tscn"))
	pass # Replace with function body.


func _on_shop_keeper_pressed():
	$ShopWindow.show()
	pass # Replace with function body.


func _on_exit_shop_button_pressed():
	$ShopWindow.hide()
	pass # Replace with function body.
