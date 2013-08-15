function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
end

function love.update(dt)

end

function love.draw()
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
end