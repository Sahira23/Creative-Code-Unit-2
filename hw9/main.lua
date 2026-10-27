
-- Homework 9

require("L5")

-- Variable to store my image
trees = nil

function setup()
  size(1000, 700)
  windowTitle("Homework 9 - Forest")

  -- forest image
  trees = loadImage("assets/trees.jpg")
  image(trees, 0, 0, width, height)

  noStroke()

  -- Yellow vertical left half 
  fill(255, 230, 0, 125)
  rect(0, 0, 500, height)

  -- Pink vertical half
  fill(255, 0, 130, 125)
  rect(500, 0, 500, height)

  -- Cyan box 
  fill(40, 210, 230, 190)
  rect(350, 0, 180, 170)

  -- Pink box 
  fill(255, 0, 130, 200)
  rect(160, 40, 100, 100)

  -- Yellow box 
  fill(255, 230, 0, 190)
  rect(720, 0, 170, 130)

  -- Orange box 
  fill(255, 80, 20, 200)
  rect(650, 150, 140, 120)

  -- Cyan box 2
  fill(40, 210, 230, 200)
  rect(70, 200, 130, 150)

  -- Pink box 2
  fill(255, 0, 130, 190)
  rect(390, 230, 150, 130)

  -- Yellow box 2
  fill(255, 230, 0, 190)
  rect(800, 300, 140, 140)

  -- Orange box 2
  fill(255, 80, 20, 200)
  rect(160, 420, 150, 130)

  -- Cyan box 3
  fill(40, 210, 230, 200)
  rect(420, 450, 170, 150)

  -- Pink box 3
  fill(255, 0, 130, 190)
  rect(700, 520, 170, 150)

  -- Yellow box 4
  fill(255, 230, 0, 200)
  rect(300, 590, 180, 110)

  describe("A forest with overlapping blocks.")
end

function draw()

end
