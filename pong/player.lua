function player_init()
	player1, player2 = {}, {}
	player1.score, player2.score = 0, 0
	player1.x, player1.y = 8, height / 2
	player2.x, player2.y = width - 24, player1.y
	player1.width, player1.height = scale, scale * 6
	player2.width, player2.height = player1.width, player1.height
end

function player_update()
	-- Players can't go beyond screen's limits
	if player1.y <= 0
	then
		player1.y = player1.y + speed
	elseif player1.y >= height - player1.height
	then
		player1.y = player1.y - speed
	end

	if player2.y <= 0
	then
		player2.y = player2.y + speed
	elseif player2.y >= height - player2.height
	then
		player2.y = player2.y - speed
	end
end
