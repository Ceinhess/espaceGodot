extends Node2D


func dezoom():
	$Player/BackGround.scale *= 2
	$Player/BackGround2.dezoom()
	$Player/BackGround3.scale *= 2
	$Player/BackGround4.scale *= 2
	$Player/BackGround5.scale *= 2
	$Player.dezoom()

func zoom():
	$Player/BackGround.scale /= 2
	$Player/BackGround2.zoom()
	$Player/BackGround3.scale /= 2
	$Player/BackGround4.scale /= 2
	$Player/BackGround5.scale /= 2
	$Player.zoom()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("dezoom"):
		dezoom()
		
	if Input.is_action_just_pressed("zoom"):
		zoom()
	
