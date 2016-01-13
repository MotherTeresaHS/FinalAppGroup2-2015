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
local backgroundTextBox

function TutorialMainMenuScene:init()
    -- you can accept and set parameters here
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:mainMenuPlayButton", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:mainMenuStoreButton", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:mainMenuAchievementsButton", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:mainMenuLeaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    backgroundTextBox = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextMainMenu", vec2(WIDTH/2-320, HEIGHT/2))
    
    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false
    backgroundTextBox.draggable = false

    music("Dropbox:Nigel Good - Discover", true, 0.25) 
end

function TutorialMainMenuScene:draw()
    -- Codea does not automatically call this method

    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    achievementsButton:draw()
    leaderboardsButton:draw()
    backgroundTextBox:draw()
    
    fill(0, 0, 0, 255)
    fontSize(27)
    text("Press this to begin the game->", WIDTH/2-320, HEIGHT/2)
end

function TutorialMainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    mainGameButton:touched(touch)
    
    if(mainGameButton.selected == true) then
        Scene.Change("tutorialworlds")
    end
end