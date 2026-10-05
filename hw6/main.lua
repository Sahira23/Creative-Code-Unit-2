require("L5")

moonRed = 80
moonMove = 1

starSize = 20
growing = true

cloudX = 100
cloudMove = 1

function setup()
    size(800, 600)
end

function draw()
    background(20, 25, 60)

    -- moon changes color
    fill(moonRed, 180, 255)
    circle(650, 140, 100)

    moonRed = moonRed + moonMove

    if moonRed > 255 then
       moonMove = -1
    else
        if moonRed < 60 then
            moonMove = 1
        end
    end

    -- star changes size
    fill(255, 240, 120)
    circle(200, 150, starSize)

    if growing then
        starSize = starSize + 1
    else
        starSize = starSize - 1
    end

    if starSize > 35 then
        growing = false
    else
        if starSize < 15 then
            growing = true
        end
    end

    -- cloud changes position
    fill(220, 230, 240)
    circle(cloudX, 300, 50)
    circle(cloudX + 40, 290, 60)
    circle(cloudX + 80, 300, 50)
    rect(cloudX, 300, 80, 30)

    cloudX = cloudX + cloudMove

    if cloudX > width - 100 then
        cloudMove = -1
    else
        if cloudX < 0 then
            cloudMove = 1
        end
    end
end