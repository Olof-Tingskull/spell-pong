function love.load()
  ball = {}
  ball.x = 400
  ball.y = 300
  ball.dx = 300
  ball.dy = 300  


  leftpoints = 0
  rightpoints = 0

  love.graphics.newImage ("rightpaddle") 
  rightpaddle.y = 300
  leftpaddle = {}
  leftpaddle.y = 300
  rightpaddle.bd = 0
  leftpaddle.bd = 0
end

function love.update(dt)
rightpaddle.bd = ball.y - rightpaddle.y
leftpaddle.bd = ball.y - leftpaddle.y

  ball.x = ball.x + ball.dx * dt
  ball.y = ball.y + ball.dy * dt

  if (ball.y - 15 < 0 and ball.dy < 0) or (ball.y + 15 > 600 and ball.dy > 0) then
    ball.dy = -ball.dy
  end

  if ball.x < 35 and ball.dx < 0 and ball.y + 15 > leftpaddle.y - 70 and ball.y - 15 < leftpaddle.y + 70 then
    ball.dx = -ball.dx
    ball.dy = ball.dy + leftpaddle.bd * 3
  end


  
  if ball.x > 765 and ball.dx > 0 and ball.y + 15 > rightpaddle.y - 70 and ball.y - 15 < rightpaddle.y + 70 then
    ball.dx = -ball.dx
    ball.dy = ball.dy + rightpaddle.bd * 3
 
  end

    if ball.x > 785 and ball.dx > 0 then
    ball.dx = -ball.dx
    leftpoints = leftpoints + 1
  end
    if ball.x < 15 and ball.dx < 0 then
    ball.dx = -ball.dx
    rightpoints = rightpoints + 1
  end

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

  if leftpaddle.y < 70 then
    leftpaddle.y = 70
  end
  if leftpaddle.y > 530 then
    leftpaddle.y = 530
  end
end

function love.draw()
  love.graphics.print (leftpoints, 0, 0)
  love.graphics.print (rightpoints, 770, 0)
  love.graphics.line (400, 0, 400, 600)
  love.graphics.circle("fill", ball.x, ball.y, 15, 20)
love.graphics.draw(rightpaddle, rightpaddle.x, rightpaddle.y)
  love.graphics.rectangle("fill", 0, leftpaddle.y - 70, 20, 140)
end
