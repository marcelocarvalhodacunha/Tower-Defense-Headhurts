extends Tower

func _physics_process(_delta: float) -> void:
	if enemies.size() > 0:
		$Turret.look_at(enemies[0].global_position)
		$Turret.rotation -= PI/2


func _on_reload_timer_timeout() -> void:
	if enemies:
		var dir = Vector2.DOWN.rotated($Turret.rotation).normalized()
		shoot.emit(position + dir * 20, $Turret.rotation, Data.Bullet.SINGLE)
