class_name GameConfig
extends RefCounted

const SAVE_PATH = "user://settings.cfg"

static func save_fov(fov_value: float):
	var config = ConfigFile.new()
	config.load(SAVE_PATH)
	config.set_value("Graphics", "fov", fov_value)
	config.save(SAVE_PATH)

static func load_fov() -> float:
	var config = ConfigFile.new()
	if config.load(SAVE_PATH) != OK:
		return 75.0
	return config.get_value("Graphics", "fov", 75.0)

# === НОВЫЕ ФУНКЦИИ: СОХРАНЕНИЕ ПРОГРЕССА ===
static func save_progress(money: int, power: int, cooldown: int):
	var config = ConfigFile.new()
	config.load(SAVE_PATH)
	config.set_value("Progress", "money", money)
	config.set_value("Progress", "power", power)
	config.set_value("Progress", "cooldown", cooldown)
	config.save(SAVE_PATH)

static func load_progress() -> Dictionary:
	var config = ConfigFile.new()
	config.load(SAVE_PATH)
	return {
		"money": config.get_value("Progress", "money", 0),
		"power": config.get_value("Progress", "power", 1),
		"cooldown": config.get_value("Progress", "cooldown", 1)
	}

static func reset_all():
	var config = ConfigFile.new()
	config.set_value("Graphics", "fov", 75.0)
	config.set_value("Progress", "money", 0)
	config.set_value("Progress", "power", 1)
	config.set_value("Progress", "cooldown", 1)
	config.save(SAVE_PATH)
