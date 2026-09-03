extends Node2D

@export var speed: float = 100.0

func _process(delta):
	var path_follow = get_parent() as PathFollow2D
	path_follow.progress += speed * delta
	
	if path_follow.progress_ratio >= 1.0:
		queue_free()
		path_follow.queue_free()


func _on_area_entered(bullet: Area2D) -> void:
	bullet.queue_free()
