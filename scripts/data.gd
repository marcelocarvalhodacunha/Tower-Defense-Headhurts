extends Node

enum Tower{BASIC}
enum Bullet{SINGLE}
enum Enemy{DEFAULT}

var TOWER_DATA = {}
var UPDATE_DATA = {}
var ENEMY_WAVES = {}
var ENEMY_DATA = {
	Enemy.DEFAULT: {'health': 3, 'texture': "res://sprites/icon.svg", 'speed': 25}
}
