#!/usr/bin/love

function love.load()
    logo = love.graphics.newImage("dvd-logo.png")
    x = 0
    y = 10
    speedx = 5
    speedy = 5
end

function love.draw()
	love.graphics.draw(logo, x, y, 0, 0.5, 0.5)
	
	if x == 0 then
	    speedx = 5
	elseif x == 600 then
	    speedx = -5
	end
	if y == 0 then
	    speedy = 5
	elseif y == 500 then
	    speedy = -5
	end
	    x = x + speedx
	    y = y + speedy
end
