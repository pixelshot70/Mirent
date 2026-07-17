class_name Ores
extends RefCounted

static var data: Dictionary = {}

static func init_ores():
	if not data.is_empty(): return
	
	data[1] = {"name": "Stone", "color": Color(0.50, 0.50, 0.50), "health": 10}
	data[2] = {"name": "Coal", "color": Color(0.10, 0.10, 0.10), "health": 20}
	data[2] = {"name": "Copper", "color": Color(1.0, 0.491, 0.014, 1.0), "health": 30}
	data[3] = {"name": "Iron", "color": Color(0.80, 0.70, 0.60), "health": 40}
	data[4] = {"name": "Gold", "color": Color(1.00, 0.84, 0.00), "health": 60}
	data[5] = {"name": "Diamond", "color": Color(0.00, 1.00, 1.00), "health": 100}
	data[6] = {"name": "Emerald", "color": Color(0.10, 0.90, 0.30), "health": 120}
	data[7] = {"name": "Ruby", "color": Color(0.90, 0.10, 0.20), "health": 150}
	data[8] = {"name": "Sapphire", "color": Color(0.10, 0.20, 0.90), "health": 150}
	data[9] = {"name": "Amethyst", "color": Color(0.60, 0.10, 0.80), "health": 200}
	data[10] = {"name": "Topaz", "color": Color(0.90, 0.60, 0.10), "health": 180}
	data[11] = {"name": "Obsidian", "color": Color(0.05, 0.00, 0.10), "health": 500}
	data[12] = {"name": "Mithril", "color": Color(0.40, 0.70, 0.90), "health": 800}
	data[13] = {"name": "Adamantite", "color": Color(0.80, 0.20, 0.30), "health": 1200}
	data[14] = {"name": "Uranium", "color": Color(0.40, 1.00, 0.10), "health": 2000}
	data[15] = {"name": "Titanium", "color": Color(0.70, 0.70, 0.80), "health": 1500}

static func get_ore(id: int) -> Dictionary:
	if data.is_empty(): init_ores()
	return data.get(id, data[1])
