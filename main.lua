function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
  rightpaddle = {}
  rightpaddle.y = 0
  leftpaddle = {}
  leftpaddle.y = 300
end

function love.update(dt)
  if ball.x > 400 then
  if ball.y > rightpaddle.y then
    rightpaddle.y = rightpaddle.y + 200 *dt
  end
  if ball.y < rightpaddle.y then
    rightpaddle.y = rightpaddle.y - 200 *dt
  end
  end
  if love.keyboard.isDown("down") then
    leftpaddle.y = leftpaddle.y + 200 *dt
  end
  if love.keyboard.isDown("up") then
    leftpaddle.y = leftpaddle.y - 200 *dt
  end
end

function love.draw()
  love.graphics.line (400, 0, 400, 600)
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
  love.graphics.rectangle ("fill", 780, rightpaddle.y - 70, 20, 140)
  love.graphics.rectangle ("fill", 0, leftpaddle.y - 70, 20, 140)
end