
hash = {}

naked_subelements = {"ties", "stone_path", "stone_path_background"}
sleepy_subelements = {"stone_path", "stone_path_background"}

straight_picture_ids = 
{
	{"straight_rail_horizontal", "straight-rail-horizontal"},
	{"straight_rail_vertical", "straight-rail-vertical"},
	{"straight_rail_diagonal_left_top", "straight-rail-diagonal"},
	{"straight_rail_diagonal_right_top", "straight-rail-diagonal"},
	{"straight_rail_diagonal_right_bottom", "straight-rail-diagonal"},
	{"straight_rail_diagonal_left_bottom", "straight-rail-diagonal"}
}

curved_picture_ids =
{
	{"curved_rail_vertical_left_top", "curved-rail-vertical"},
	{"curved_rail_vertical_right_top", "curved-rail-vertical"},
	{"curved_rail_vertical_right_bottom", "curved-rail-vertical"},
	{"curved_rail_vertical_left_bottom", "curved-rail-vertical"},
	{"curved_rail_horizontal_left_top", "curved-rail-horizontal"},
	{"curved_rail_horizontal_right_top", "curved-rail-horizontal"},
	{"curved_rail_horizontal_right_bottom", "curved-rail-horizontal"},
	{"curved_rail_horizontal_left_bottom", "curved-rail-horizontal"}
}

-- Make remnants live forever so that decorative remnants don't disappear on us
data.raw["rail-remnants"]["straight-rail-remnants"].time_before_removed = 1073741824
data.raw["rail-remnants"]["curved-rail-remnants"].time_before_removed = 1073741824

--
-- naked-rail
--

-- item
ptype = table.deepcopy(data.raw["rail-planner"]["rail"])
ptype.name = "naked-rail"
ptype.order = "a[train-system]-a[train]-z"
ptype.place_result = "naked-straight-rail"
ptype.straight_rail = "naked-straight-rail"
ptype.curved_rail = "naked-curved-rail"
table.insert(hash, ptype)

-- straight-rail
ptype = table.deepcopy(data.raw["straight-rail"]["straight-rail"])
ptype.name = "naked-straight-rail"
ptype.minable.result = "rail"

ptype.pictures["rail_endings"].sheets[1].filename = "__naked-rails__/graphics/rail-endings-transparent.png"
ptype.pictures["rail_endings"].sheets[1].hr_version.filename = "__naked-rails__/graphics/hr-rail-endings-transparent.png"

for _, id in ipairs(straight_picture_ids) do
	for _, element in ipairs(naked_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

-- curved-rail
ptype = table.deepcopy(data.raw["curved-rail"]["curved-rail"])
ptype.name = "naked-curved-rail"
ptype.minable.result = "rail"
ptype.placeable_by.item = "rail"

ptype.pictures["rail_endings"].sheets[1].filename = "__naked-rails__/graphics/rail-endings-transparent.png"
ptype.pictures["rail_endings"].sheets[1].hr_version.filename = "__naked-rails__/graphics/hr-rail-endings-transparent.png"

for _, id in ipairs(curved_picture_ids) do
	for _, element in ipairs(naked_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

--
-- naked-remnants
--

-- straight-rail
ptype = table.deepcopy(data.raw["rail-remnants"]["straight-rail-remnants"])
ptype.name = "naked-straight-rail-remnants"

for _, id in ipairs(straight_picture_ids) do
	for _, element in ipairs(naked_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

-- curved-rail
ptype = table.deepcopy(data.raw["rail-remnants"]["curved-rail-remnants"])
ptype.name = "naked-curved-rail-remnants"

for _, id in ipairs(curved_picture_ids) do
	for _, element in ipairs(naked_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

--
-- sleepy-rail
--

-- item
ptype = table.deepcopy(data.raw["rail-planner"]["rail"])
ptype.name = "naked-sleepy-rail"
ptype.order = "a[train-system]-a[train]-z"
ptype.place_result = "naked-sleepy-straight-rail"
ptype.straight_rail = "naked-sleepy-straight-rail"
ptype.curved_rail = "naked-sleepy-curved-rail"
table.insert(hash, ptype)

-- TODO need icons for these for deconstruction filters, etc. ... or not.

-- straight-rail
ptype = table.deepcopy(data.raw["straight-rail"]["straight-rail"])
ptype.name = "naked-sleepy-straight-rail"
ptype.minable.result = "rail"

ptype.pictures["rail_endings"].sheets[1].filename = "__naked-rails__/graphics/rail-endings-transparent.png"
ptype.pictures["rail_endings"].sheets[1].hr_version.filename = "__naked-rails__/graphics/hr-rail-endings-transparent.png"

for _, id in ipairs(straight_picture_ids) do
	for _, element in ipairs(sleepy_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

-- curved-rail
ptype = table.deepcopy(data.raw["curved-rail"]["curved-rail"])
ptype.name = "naked-sleepy-curved-rail"
ptype.minable.result = "rail"
ptype.placeable_by.item = "rail"

ptype.pictures["rail_endings"].sheets[1].filename = "__naked-rails__/graphics/rail-endings-transparent.png"
ptype.pictures["rail_endings"].sheets[1].hr_version.filename = "__naked-rails__/graphics/hr-rail-endings-transparent.png"

for _, id in ipairs(curved_picture_ids) do
	for _, element in ipairs(sleepy_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

--
-- naked-sleepy-remnants
--

-- straight-rail
ptype = table.deepcopy(data.raw["rail-remnants"]["straight-rail-remnants"])
ptype.name = "naked-sleepy-straight-rail-remnants"

for _, id in ipairs(straight_picture_ids) do
	for _, element in ipairs(sleepy_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)

-- curved-rail
ptype = table.deepcopy(data.raw["rail-remnants"]["curved-rail-remnants"])
ptype.name = "naked-sleepy-curved-rail-remnants"

for _, id in ipairs(curved_picture_ids) do
	for _, element in ipairs(sleepy_subelements) do
		ptype.pictures[id[1]][element].filename = string.format("__naked-rails__/graphics/%s-transparent.png", id[2])
		ptype.pictures[id[1]][element].hr_version.filename = string.format("__naked-rails__/graphics/hr-%s-transparent.png", id[2])
	end
end

table.insert(hash, ptype)
data:extend(hash)

--
-- Set up the selection items and recipies to change rails to different types
--

data:extend({
	{
		type = "selection-tool",
		name = "naked-rails-stoneify",
		flags = { "goes-to-quickbar" },
		subgroup = "transport",
    	stack_size = 1,
		order = "a[train-system]-y[naked-rails-stoneify]",
		selection_color = { r = 1, g = 1, b = 1, a = 0.2 },
		alt_selection_color = { r = 0.5, g = 0.5, b = 0.5, a = 0.2 },
		selection_mode = { "buildable-type" },
		alt_selection_mode = { "buildable-type" },
		selection_cursor_box_type = "entity",
	    alt_selection_cursor_box_type = "copy",
		icons = {
			{ icon = "__naked-rails__/graphics/naked-replacer-icon.png" },
			{
				icon = "__base__/graphics/icons/rail.png",
				scale = 0.75
			},
			{
				icon = "__base__/graphics/icons/stone.png",
				scale = 0.3,
				shift = { 6, -6 }
			}
		},
		icon_size=32,
		show_in_library = true
	},
	{
		type = "recipe",
		name = "naked-rails-stoneify",
		enabled = true,
		energy_required = 0.1,
		ingredients = {},
		result = "naked-rails-stoneify"
	},
	{
		type = "selection-tool",
		name = "naked-rails-sleepify",
		flags = { "goes-to-quickbar" },
		subgroup = "transport",
    	stack_size = 1,
		order = "a[train-system]-b[rail-c]",
		selection_color = { r = 1, g = 1, b = 1, a = 0.2 },
		alt_selection_color = { r = 0.5, g = 0.5, b = 0.5, a = 0.2 },
		selection_mode = { "buildable-type" },
		alt_selection_mode = { "buildable-type" },
		selection_cursor_box_type = "entity",
	    alt_selection_cursor_box_type = "copy",
	    icons = {
			{ icon = "__naked-rails__/graphics/naked-replacer-icon.png" },
			{
				icon = "__base__/graphics/icons/rail.png",
				scale = 0.75
			}
		},
		icon_size=32,
		show_in_library = true
	},
	{
		type = "recipe",
		name = "naked-rails-sleepify",
		enabled = true,
		energy_required = 0.1,
		ingredients = {},
		result = "naked-rails-sleepify"
	},
	{
		type = "selection-tool",
		name = "naked-rails-nakedify",
		flags = { "goes-to-quickbar" },
		subgroup = "transport",
    	stack_size = 1,
		order = "a[train-system]-b[rail-a]",
		selection_color = { r = 1, g = 1, b = 1, a = 0.2 },
		alt_selection_color = { r = 0.5, g = 0.5, b = 0.5, a = 0.2 },
		selection_mode = { "buildable-type" },
		alt_selection_mode = { "buildable-type" },
		selection_cursor_box_type = "entity",
	    alt_selection_cursor_box_type = "copy",
	    icons = {
			{ icon = "__naked-rails__/graphics/naked-replacer-icon.png" },
			{
				icon = "__naked-rails__/graphics/naked-rails-icon.png",
				scale = 0.75,
				tint = { r = 1, g = 1, b = 1, a = 0.5 }
			}
		},
		icon_size=32,
		show_in_library = true
	},
	{
		type = "recipe",
		name = "naked-rails-nakedify",
		enabled = true,
		energy_required = 0.1,
		ingredients = {},
		result = "naked-rails-nakedify"
	},
	{
		type = "selection-tool",
		name = "naked-rails-remnantify",
		flags = { "goes-to-quickbar" },
		subgroup = "transport",
    	stack_size = 1,
		order = "a[train-system]-b[rail-d]",
		selection_color = { r = 1, g = 1, b = 1, a = 0.2 },
		alt_selection_color = { r = 1, g = 0, b = 0 },
		selection_mode = { "buildable-type" },
		alt_selection_mode = { "any-entity" },
		selection_cursor_box_type = "entity",
	    alt_selection_cursor_box_type = "not-allowed",
	    icons = {
			{ icon = "__naked-rails__/graphics/naked-replacer-icon.png" },
			{
				icon = "__base__/graphics/icons/straight-rail-remnants.png",
				scale = 0.7
			}
		},
		icon_size=32,
		show_in_library = true
	},
	{
		type = "recipe",
		name = "naked-rails-remnantify",
		enabled = true,
		energy_required = 0.1,
		ingredients = {},
		result = "naked-rails-remnantify"
	}
})
