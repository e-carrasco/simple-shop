extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_recyclec_center_pressed():
	get_tree().change_scene_to_packed(load("res://scenes/recycle_center_shop.tscn"))
	pass # Replace with function body.
