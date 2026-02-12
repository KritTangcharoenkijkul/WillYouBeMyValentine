extends Node2D

var yes_button = 353
var time_press = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Label2.text = "You choose: Yes"
	$ColorRect.visible = false
	$TextureRect.visible = true
	$TextureDone.visible = true
	$Button.visible = false
	$Button2.visible = false
	$Photo3.visible = false
	$Photo1.visible = false
	$Photo2.visible = false
	$Photo4.visible = false
	$Photo5.visible = false
	$Photo6.visible = false


func _on_button_2_pressed() -> void:
	time_press = time_press + 1
	$Label2.text = "You choose: No"
	$Button.custom_minimum_size = Vector2(873, (int(time_press)* 200) + int(yes_button))
	if time_press == 1:
		$Photo1.visible = false
		$Photo3.visible = true
		$Photo2.visible = true
	if time_press == 2:
		$Photo2.visible = false
		$Photo5.visible = true
	if time_press == 3:
		$Photo5.visible = false
		$Photo4.visible = true
	if time_press == 4:
		$Photo4.visible = false
		$Photo6.visible = true
