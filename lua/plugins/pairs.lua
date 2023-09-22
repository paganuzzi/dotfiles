return {
	"echasnovski/mini.pairs",
	version = "*",
	event = "BufAdd",
	dependencies = {
		"echasnovski/mini.pairs",
		version = "*",
	},
	config = true,
	opts = 	-- No need to copy this inside `setup()`. Will be used automatically.
{
		-- In which modes mappings from this `config` should be created
		modes = { insert = true, command = false, terminal = false },

		mappings = {
			["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
			["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
			["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

			[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
			["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
			["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

			['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
			["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
			["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
		},
	},
}
