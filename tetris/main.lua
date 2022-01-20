function love.load()
	r, x, y = 20, 22, 22
	xs, ys = 300, 300
end

function love.draw()
	love.graphics.circle("line", x, y, r)
end

function love.update(dt)
	if x >= (love.graphics.getPixelWidth()-r) or x <= r then
		xs = xs * -1
	end
	if y >= (love.graphics.getPixelHeight()-r) or y <= r then
		ys = ys * -1
	end

	x = x + xs*dt
	y = y + ys*dt
end
