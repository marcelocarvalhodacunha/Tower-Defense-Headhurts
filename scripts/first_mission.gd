extends Node2D

var bullet_scene = preload("res://scenes/bullet.tscn")

func _ready() -> void:
	$Towers/TowerBasic.connect('shoot', create_bullet)

func create_bullet(pos: Vector2, angle: float, bullet_enum: Data.Bullet):
	var bullet = bullet_scene.instantiate()
	bullet.setup(pos, angle, bullet_enum)
	$Bullets.add_child(bullet)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			spawn_tower(get_global_mouse_position())

func spawn_tower(pos: Vector2):
	pass
#	tower = tower_scene.instantiate()
