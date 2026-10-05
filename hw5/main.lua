require("L5")

function setup()
size(1000, 700)
angleMode(DEGREES)
windowTitle("Night City")

describe("Draws a night city ")
end

function draw()

-- night sky
background(20, 15, 35)

-- buildings
fill(255, 40, 140)
rect(width / 10, height * 3 / 5, width / 8, height * 2 / 5)

fill(0)
rect(width / 4, height * 2 / 5, width / 6, height * 3 / 5)

fill(255, 50, 150)
rect(width * 2 / 5, height / 3, width / 6, height * 2 / 3)

fill(0)
rect(width * 3 / 5, height / 2, width / 7, height / 2)

fill(255, 40, 140)
rect(width * 3 / 4, height * 2 / 5, width / 7, height * 3 / 5)

fill(0)
rect(width * 9 / 10, height * 3 / 5, width / 7, height * 2 / 5)

-- windows
fill(255, 220, 80)
rect(width / 10, height * 3 / 5, width / 25, height / 12)
rect(width / 4, height * 2 / 5, width / 25, height / 12)
rect(width * 2 / 5, height / 3, width / 25, height / 12)
rect(width * 3 / 5, height / 2, width / 25, height / 12)
rect(width * 3 / 4, height * 2 / 5, width / 25, height / 12)
rect(width * 9 / 10, height * 3 / 5, width / 25, height / 12)

-- road
fill(0)
rect(width / 2, height * 9 / 10, width, height / 5)

-- moon follows the mouse
fill(255, 230, 180)
ellipse(mouseX, mouseY, width / 8, height / 8)

-- stars follow the moon
fill(255)
ellipse(mouseX - width / 12, mouseY - height / 12, width / 40, height / 40)
ellipse(mouseX + width / 12, mouseY - height / 12, width / 40, height / 40)
ellipse(mouseX - width / 12, mouseY + height / 12, width / 40, height / 40)
ellipse(mouseX + width / 12, mouseY + height / 12, width / 40, height / 40)

end