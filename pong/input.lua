function keyboard()
	if love.keyboard.isDown("w") then
		player1.y = player1.y - speed
	end
	if love.keyboard.isDown("s") then
		player1.y = player1.y + speed
	end

	if love.keyboard.isDown("up") then
		player2.y = player2.y - speed
	end
	if love.keyboard.isDown("down") then
		player2.y = player2.y + speed
	end
end
