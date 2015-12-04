-- LevelDifficultyScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the level difficulty selector scene 

LevelDifficultyScene = class()

local homeButton
local easyLevelDifficultyButton
local mediumLevelDifficultyButton
local hardLevelDifficultyButton

function LevelDifficultyScene:init()
    -- you can accept and set parameters here
   
    homeButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-400, HEIGHT/2+325))
    easyLevelDifficultyButton = Button("Dropbox:Green Level Menu Button", vec2(WIDTH/2-200, HEIGHT/2))
    mediumLevelDifficultyButton = Button("Dropbox:Yellow Level Menu Button", vec2(WIDTH/2, HEIGHT/2))
    hardLevelDifficultyButton = Button("Dropbox:Red Level Menu Button", vec2(WIDTH/2+200,HEIGHT/2))
    
    homeButton.draggable = false
    easyLevelDifficultyButton.draggable = false
    mediumLevelDifficultyButton.draggable = false
    hardLevelDifficultyButton.draggable = false
end

function LevelDifficultyScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    
    homeButton:draw()
    easyLevelDifficultyButton:draw()
    mediumLevelDifficultyButton:draw()
    hardLevelDifficultyButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Level Difficulty", WIDTH/2, HEIGHT/2+300) --title
    text("Easy", WIDTH/2-200, HEIGHT/2+100)
    text("Medium", WIDTH/2, HEIGHT/2+100)
    text("Hard", WIDTH/2+200, HEIGHT/2+100)
end

function LevelDifficultyScene:touched(touch)
    -- Codea does not automatically call this method
    
    homeButton:touched(touch)
    easyLevelDifficultyButton:touched(touch)
    mediumLevelDifficultyButton:touched(touch)
    hardLevelDifficultyButton:touched(touch)
    
    if(homeButton.selected == true) then
        Scene.Change("worlds")
    end
    
    if(easyLevelDifficultyButton.selected == true) then
        levelDifficultySelected = easy
    elseif(mediumLevelDifficultyButton.selected == true) then
        levelDifficultySelected = medium
    elseif(hardLevelDifficultyButton.selected == true) then
        levelDifficultySelected = hard
    end
    Scene.Change("maingame")
end