-- TutorialMainMenuScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main menu scene with the tutorial

TutorialMainMenuScene = class()

--global to this file
local settingsButton
local mainGameButton
local storeButton
local achievementsButton
local leaderboardsButton

function TutorialMainMenuScene:init()
    -- you can accept and set parameters here
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:Blue Cancel Button", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/2-300, HEIGHT/2-300))
    
    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false

    music("A Hero's Quest:Battle", true, 0.50) 
    
    if musicOff then
        music.stop()
    else
        music("A Hero's Quest:Battle", true, 0.50)
    end
end

function TutorialMainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 0, 0, 255)
    --sprite("CompanyLogo@2x copy", WIDTH/2, HEIGHT/2, 1048, 768)
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    achievementsButton:draw()
    leaderboardsButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Play", WIDTH/2, HEIGHT/2+100) 
    
    fontSize(48)
    text("Store", WIDTH/2, HEIGHT/2-200)
    text("Achievements", WIDTH/2+300, HEIGHT/2-200)
    text("Leaderboards", WIDTH/2-300, HEIGHT/2-200)
    
    fontSize(30)
    text("Press this to begin the game ->", WIDTH/2-250, HEIGHT/2)
end

function TutorialMainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    mainGameButton:touched(touch)
    
    if(mainGameButton.selected == true) then
        Scene.Change("tutorialworlds")
    end
end
