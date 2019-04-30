require "ball"
require "player"

function score()
	if ball.x < 0 then
		player2.score = player2.score + 1
		ball_init()
	elseif ball.x > width then
		player1.score = player1.score + 1
		ball_init()
	end
	love.graphics.print("Player 1: " .. player1.score, 0, 0)
	love.graphics.print("Player 2: " .. player2.score, 0, 15)
end
