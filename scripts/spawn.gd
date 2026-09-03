extends Node2D

@export var path: Path2D
@export var enemy_scene: PackedScene
@export var spawn_interval: float = 1.5

@onready var timer = $TimerSpawn

func _ready():
	timer.wait_time = spawn_interval
	timer.timeout.connect(_on_timer_timeout)
	timer.start()


func _on_timer_timeout():
	spawn_enemy()

func spawn_enemy():
	var path_follow = PathFollow2D.new()
	path_follow.loop = false
	path.add_child(path_follow)
	var enemy = enemy_scene.instantiate()
	path_follow.add_child(enemy)
