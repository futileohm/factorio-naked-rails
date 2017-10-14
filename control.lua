function on_selected_area(event, alt_selected)
	local player = game.players[event.player_index]
	local surface = player.surface

	local replacement_straight_entity_name = nil
	local replacement_curved_entity_name = nil

	if event.item == "naked-rails-nakedify" then
		replacement_straight_entity_name = not alt_selected and "naked-straight-rail" or "straight-rail"
		replacement_curved_entity_name = not alt_selected and "naked-curved-rail" or "curved-rail"
	elseif event.item == "naked-rails-stoneify" then
		replacement_straight_entity_name = "straight-rail"
		replacement_curved_entity_name = "curved-rail"
	elseif event.item == "naked-rails-sleepify" then
		replacement_straight_entity_name = not alt_selected and "naked-sleepy-straight-rail" or "straight-rail"
		replacement_curved_entity_name = not alt_selected and "naked-sleepy-curved-rail" or "curved-rail"
	elseif event.item == "naked-rails-remnantify" then
		replacement_straight_entity_name = "straight-rail-remnants"
		replacement_curved_entity_name = "curved-rail-remnants"
	else
		return
	end

	if alt_selected and event.item == "naked-rails-remnantify" then
		for k, entity in pairs(event.entities) do
			if entity.type == "rail-remnants" then
				entity.destroy()
			end
		end

		return
	end

	for k, entity in pairs(event.entities) do
		if entity.type == "straight-rail" and entity.name ~= replacement_straight_entity_name or
			entity.type == "curved-rail" and entity.name ~= replacement_curved_entity_name or
			entity.name == "straight-rail-remnants" or entity.name == "curved-rail-remnants" then

			if entity.valid then
				local n = entity.name
				local d = entity.direction
				local f = entity.force
				local p = entity.position
				local straight = entity.type == "straight-rail" or string.find(entity.name, "straight-rail")

				if event.item == "naked-rails-remnantify" then
					replacement_straight_entity_name = n .. "-remnants"
					replacement_curved_entity_name = n .. "-remnants"
				end

				entity.destroy()

				surface.create_entity
				{
					name = straight and replacement_straight_entity_name or replacement_curved_entity_name,
					position = p,
					force = f,
					direction = d
				}
			end
		end
	end
end

script.on_event(defines.events.on_player_selected_area, function(event)
  on_selected_area(event, false)
end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
  on_selected_area(event, true)
end)