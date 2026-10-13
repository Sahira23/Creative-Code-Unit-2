
-- Homework 7
-- Repeating Patterns

require("L5")

function setup()
  size(800, 400)
  angleMode(DEGREES)
  rectMode(CENTER)
  noStroke()

  windowTitle("Homework 7 - Repeating Patterns")
  describe("A floral grid and a radial pattern")

  background(190, 15, 55)

  -- left side (makes a grid of little flowers)
  for i = 1, 3, 1 do
    for j = 1, 3, 1 do

      -- moves each flower to its own spot
      x = 65 + i * 85
      y = 40 + j * 100

      -- starts with the biggest square
      fill(220, 175, 105)
      rect(x, y, 75, 75, 12)

      -- adds a purple layer inside it
      fill(145, 105, 170)
      rect(x, y, 62, 62, 10)

      -- this lighter layer makes a border
      fill(235, 205, 155)
      rect(x, y, 52, 52, 9)

      -- this is the red center of the flower
      fill(190, 15, 55)
      ellipse(x, y, 43, 43)

      -- four little petals in the middle
      fill(235, 205, 155)
      ellipse(x - 7, y - 7, 12, 19)
      ellipse(x + 7, y - 7, 12, 19)
      ellipse(x - 7, y + 7, 12, 19)
      ellipse(x + 7, y + 7, 12, 19)

      -- the tiny center detail 
      if random(2) > 1 then
        fill(145, 105, 170)
      else
        fill(235, 205, 155)
      end

      ellipse(x, y, 5, 5)

    end
  end

  -- right side (a flower made from rotating shapes)

  -- This adds little diamonds around the outside
  for i = 1, 8, 1 do
    push()

    translate(600, 200)
    rotate(i * 45)

    fill(220, 175, 105)
    rect(0, -125, 22, 22)

    fill(145, 105, 170)
    rect(0, -125, 12, 12)

    pop()
  end

  -- repeating the petals around the center
  for i = 1, 12, 1 do
    push()

    translate(600, 200)
    rotate(i * 30)

    -- switches between RISO pink and yellow 
    if random(2) > 1 then
      fill(255, 72, 176) -- RISO pink
    else
      fill(255, 232, 0) -- RISO yellow
    end

    ellipse(0, -65, 24, 48)

    pop()
  end

  -- the middle of the flower
  fill(235, 205, 155)
  ellipse(600, 200, 48, 48)

  fill(190, 15, 55)
  ellipse(600, 200, 24, 24)

end

function draw()
  -- empty
end
