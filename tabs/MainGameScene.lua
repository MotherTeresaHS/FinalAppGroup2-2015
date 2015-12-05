MainGameScene = class()

function MainGameScene:init()
    -- you can accept and set parameters here
end

function MainGameScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    
    --test to see if the worldSelected and levelDifficultySelected variables work for later if statements in the main game
    fill(255, 255, 255, 255)
    fontSize(50)
    text("World: "..worldSelected, WIDTH/2, HEIGHT/2+300)
    text("Difficulty: "..levelDifficultySelected, WIDTH/2, HEIGHT/2+200)
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
end