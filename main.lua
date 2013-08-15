function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
  rightpaddle = {}
  rightpaddle.y = 230
  leftpaddle = {}
  leftpaddle.y =230
end

function love.update(dt)
rightpaddle.y = rightpaddle.y + 0 *dt
leftpaddle.y = leftpaddle.y + 0 *dt
end

function love.draw()
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
  love.graphics.rectangle ("fill", 780, rightpaddle.y, 20, 140)
   love.graphics.rectangle ("fill", 0, leftpaddle.y, 20, 140)

end