function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
  ball.dx = 400
  ball.dy = 400

  rightpaddle = {}
  rightpaddle.y = 230
  leftpaddle = {}
  leftpaddle.y =230
end

function love.update(dt)
  ball.x = ball.x + ball.dx * dt
  ball.y = ball.y + ball.dy * dt

  if (ball.y - 15 < 0 and ball.dy < 0) or (ball.y + 15 > 600 and ball.dy > 0) then
    ball.dy = -ball.dy
  end
  
  if love.keyboard.isDown("down") then
    leftpaddle.y = leftpaddle.y + 200 *dt
  end
  if love.keyboard.isDown("up") then
    leftpaddle.y = leftpaddle.y - 200 *dt
  end
end

function love.draw()
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
  love.graphics.rectangle("fill", 780, rightpaddle.y, 20, 140)
  love.graphics.rectangle("fill", 0, leftpaddle.y, 20, 140)
end