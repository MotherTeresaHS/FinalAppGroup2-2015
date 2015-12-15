-- MainMenuScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the third scene with all the buttons to game, settings/credits, store, achievements and leaderboards

MainMenuScene = class()

--global to this file
local settingsButton
local mainGameButton
local storeButton
local achievementsButton
local leaderboardsButton
    
function MainMenuScene:init()
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:mainMenuPlayButton", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:mainMenuStoreButton", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:mainMenuAchievementsButton", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:mainMenuLeaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    
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

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    --achievementsButton:draw()
    --leaderboardsButton:draw()
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    settingsButton:touched(touch)
    mainGameButton:touched(touch)
    storeButton:touched(touch)
    achievementsButton:touched(touch)
    leaderboardsButton:touched(touch)
    
    if(settingsButton.selected == true) then
        Scene.Change("settings")
    elseif(mainGameButton.selected == true) then
        Scene.Change("worlds")
    elseif(storeButton.selected == true) then
        Scene.Change("store")
    elseif(achievementsButton.selected == true) then
        Scene.Change("achievements")
    elseif(leaderboardsButton.selected == true) then
        Scene.Change("leaderboards")
    end
end