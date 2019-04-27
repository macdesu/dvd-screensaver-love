#!/usr/bin/love

function love.load()
    logo = love.graphics.newImage("dvd-logo.png")
    x = 0
    y = 0
    speedx = 3
    speedy = 2
    hit_counter = -2
    corner_counter = -1
end

function love.draw()
	love.graphics.draw(logo, x, y, 0, 0.5, 0.5)
    love.graphics.print("Corner: " .. corner_counter, 0, 555)	
    love.graphics.print("Bounces: " .. hit_counter, 0, 570)	
    love.graphics.print("x: " .. x .. ", y: " .. y, 0, 585)	

	if x == 0 then
	    speedx = 5
	    hit_counter = hit_counter + 1
	elseif x == 600 then
	    speedx = -5
	    hit_counter = hit_counter + 1
	end
	if y == 0 then
	    speedy = 4
	    hit_counter = hit_counter + 1
	elseif y == 500 then
	    speedy = -4
	    hit_counter = hit_counter + 1
	end

	if  x == 0 and y == 0 or x == 600 and y == 0 then
	    corner_counter = corner_counter + 1
	end
	
	x = x + speedx
	y = y + speedy
end
