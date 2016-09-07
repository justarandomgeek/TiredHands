tiredhands={}
require "config"

function onPlayerCreated(event)
  local player = game.players[event.player_index]
  player.character_mining_speed_modifier = tiredhands.config.mining.start
  player.character_crafting_speed_modifier = tiredhands.config.crafting.start
end

function onMined(event)
  local player = game.players[event.player_index]
  if player.character_crafting_speed_modifier > tiredhands.config.mining.floor then
    player.character_mining_speed_modifier = player.character_mining_speed_modifier * tiredhands.config.mining.decay
  end
end

function onCraft(event)
  local player = game.players[event.player_index]
  if player.character_crafting_speed_modifier > tiredhands.config.crafting.floor then
    player.character_crafting_speed_modifier = player.character_crafting_speed_modifier * tiredhands.config.crafting.decay
  end
end

script.on_event(defines.events.on_player_created, onPlayerCreated)
script.on_event(defines.events.on_player_mined_item, onMined)
script.on_event(defines.events.on_player_mined_tile, onMined)
script.on_event(defines.events.on_player_crafted_item,onCraft)
