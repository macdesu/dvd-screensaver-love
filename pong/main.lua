require "input"
require "ball"
require "player"

function love.load()
	width, height = love.graphics.getDimensions()
	scale = 16
	speed = 5
	ball_init()
	player_init()
end

function love.update()
	keyboard()
	ball_update()
	player_update()
end

function love.draw()
	love.graphics.setBackgroundColor(26/255, 57/255, 107/255, 100/100)
	love.graphics.setColor(255, 255, 255, 1)
	love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)
	love.graphics.rectangle("fill", player1.x, player1.y, player1.width, player1.height)
	love.graphics.rectangle("fill", player2.x, player2.y, player2.width, player2.height)
end
