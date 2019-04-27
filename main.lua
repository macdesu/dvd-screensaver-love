function love.load()
	logo = love.graphics.newImage("dvd-logo.png")
	width, height = love.graphics.getDimensions()
	logo_width, logo_height = logo:getDimensions()
	posx = 0
	posy = 0
	speedx = 10
	speedy = speedx * 0.8
	hit_counter = 0
	corner_counter = 0
end

function love.update()
	posx = posx + speedx
	posy = posy + speedy

	if posx <= 0 or posx >= width - (logo_width / 2) then
		speedx = -speedx
		hit_counter = hit_counter + 1
	end

	if posy <= 0 or posy >= height - (logo_height / 2) then
		speedy = -speedy
		hit_counter = hit_counter + 1
	end

	if posx <= 0 and posy <= 0 or posx >= width - logo_width / 2 and posy <= 0 then
		corner_counter = corner_counter + 1
	end
end

function love.draw()
	love.graphics.draw(logo, posx, posy, 0, 0.5, 0.5)
	love.graphics.print("Corner: " .. corner_counter, 0, (height - 45))
	love.graphics.print("Bounces: " .. hit_counter, 0, (height - 30))
	love.graphics.print("x: " .. posx .. ", y: " .. posy, 0, (height - 15))
end
