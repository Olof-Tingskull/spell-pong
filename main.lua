function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
  ball.dx = 400
  ball.dy = 400
end

function love.update(dt)
  ball.x = ball.x + ball.dx * dt
  ball.y = ball.y + ball.dy * dt

  if (ball.y - 15 < 0 and ball.dy < 0) or (ball.y + 15 > 600 and ball.dy > 0) then
    ball.dy = -ball.dy
  end
end

function love.draw()
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
end