require "player"

function ball_init()
	ball = {}
	ball.width, ball.height = scale, scale
	ball.x, ball.y, ball.speedx, ball.speedy = ball.width + 5, ball.height + 5, speed, speed
end

function ball_update()
	-- ball start
	ball.x = ball.x + ball.speedx
	ball.y = ball.y + ball.speedy

	-- bounce logic
	if ball.x < player1.x + player1.width and ball.y > player1.y and ball.y < player1.y + player1.height
	or ball.x + ball.width > player2.x and ball.y > player2.y and ball.y < player2.y + player2.height
	then
		ball.speedx = -ball.speedx
	elseif ball.y <= 0 or ball.y >= height - (ball.height / 2)
	then
		ball.speedy = -ball.speedy
	end

	-- bounce on all sides, for debug
	-- if ball.x <= 0 or ball.x >= width - (ball.width / 2) then
	-- 	ball.speedx = -ball.speedx
	-- end
end
