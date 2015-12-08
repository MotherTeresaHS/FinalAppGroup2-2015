-- MainGameWrong
-- FinalAppGroup2-2015

-- Created by: 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the scene that tells the user they got the question wrong

MainGameWrong = class()

function MainGameWrong:init()
    -- you can accept and set parameters here
end

function MainGameWrong:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    fill(255, 255, 255, 255)
    rect(WIDTH/2, HEIGHT/2, 100, 300)
end

function MainGameWrong:touched(touch)
    -- Codea does not automatically call this method
end
