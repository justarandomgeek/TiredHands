
-- Each curve operates seperately, and is run for each player.
-- When the player is created, their speeds are set to the `start` value,
-- and each time they mine/craft, if it's >`floor`, it is multiplied by the `decay` value.
-- The defautl values of 100/0.96/0.88 will reach 1 after 111 crafts/mines, and then
-- continue decaying to 0.88
tiredhands.config={
  crafting={start=100, decay=0.96, floor=0.88},
  mining={start=100, decay=0.96, floor=0.88},
}
