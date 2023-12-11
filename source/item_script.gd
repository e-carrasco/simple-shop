extends HBoxContainer

var start_item_creation = false
var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.set_text(str(counter))
	pass


func _on_old_computer_part_pressed():
	start_item_creation = true
	$Timer.start()
	pass # Replace with function body.

# Starts the generation of items. Once complete, the timer will stop, and reset the progress bar.
func _on_timer_timeout():	
	if start_item_creation:
		$ProgressBar.value += 1
	if $ProgressBar.value >= $ProgressBar.max_value:
		counter += 1
		$Timer.stop()
		$ProgressBar.value = 0
		start_item_creation = false
	
