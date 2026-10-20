
require("L5")

-- Come along and let's make butter chicken if you like spicy food!!!
-- Let's get started --->

-- These are the different types of butter chicken you can select from
styles = {
    "creamy butter chicken",
    "spicy butter chicken",
    "Chili oil butter chicken",
    "smoky butter chicken"
}

-- These are the ingredients for the recipe
ingredients = {
    "garlic and ginger",
    "tomatoes and cream",
    "butter and garam masala",
    "onions and fresh cream"
}

-- These are the different sides you can choose from
sides = {
    "basmati rice",
    "garlic naan",
    "cheese naan",
    "butter naan"
}

-- This function makes a random butter chicken recipe
function textGenerator()
    -- This makes the background super hot pink
    background(255, 0, 110)

    -- This makes the text white
    fill(255, 255, 255)

    textSize(30)
    text("Butter Chicken Generator", 45, 75)

    textSize(18)
    text("Today's recipe is:", 50, 140)

    -- This picks a random option from each list
    local style = random(styles)
    local ingredient = random(ingredients)
    local side = random(sides)

    -- This put the recipe together
    text("Make " .. style, 50, 200)
    text("with " .. ingredient, 50, 240)
    text("and serve with " .. side .. "!", 50, 280)

    textSize(16)
    text("Click for another recipe!", 50, 350)
end

-- This will set up the sketch and show the first recipe
function setup()
    size(600, 400)
    textGenerator()
end

-- I have left this empty
function draw()
end

-- This will make a new recipe when I click
function mousePressed()
    textGenerator()
end
