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
local tutorialYesButton
local tutorialNoButton
local backgroundTextBox
    
function MainMenuScene:init()
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:mainMenuPlayButton", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:mainMenuStoreButton", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:mainMenuAchievementsButton", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:mainMenuLeaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    tutorialYesButton = Button("Dropbox:tutorialYesButton", vec2(WIDTH/2-100, HEIGHT/2+225))
    tutorialNoButton = Button("Dropbox:tutorialNoButton", vec2(WIDTH/2+100, HEIGHT/2+225))
    backgroundTextBox = SpriteObject("Dropbox:backgroundRectangleForTextMainMenu", vec2(WIDTH/2, HEIGHT/2+300))

    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false
    tutorialYesButton.draggable = false
    tutorialNoButton.draggable = false
    backgroundTextBox.draggable = false
    
    if musicOff then
        music.stop()
    else
        music("Dropbox:Nigel Good - Discover", true, 0.25)
    end
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    achievementsButton:draw()
    leaderboardsButton:draw()
    
    if(tutorialOver ~= 0) then
        if noTutorialQuestion then
            return
        else
            backgroundTextBox:draw()
            tutorialYesButton:draw()
            tutorialNoButton:draw()
            
            fill(0, 0, 0, 255)
            fontSize(30)
            text("Would you like to see the tutorial again?", WIDTH/2, HEIGHT/2+300)
        end
    end
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    settingsButton:touched(touch)
    mainGameButton:touched(touch)
    storeButton:touched(touch)
    achievementsButton:touched(touch)
    leaderboardsButton:touched(touch)
    tutorialYesButton:touched(touch)
    tutorialNoButton:touched(touch)
    
    if(settingsButton.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        Scene.Change("settings")
    elseif(mainGameButton.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        Scene.Change("worlds")
    elseif(storeButton.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        Scene.Change("store")
    elseif(achievementsButton.selected == true) then
        if(gamecenter.enabled() == true) then
            gamecenter.showAchievements()
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("achievements")
        end
    elseif(leaderboardsButton.selected == true) then
        if(gamecenter.enabled() == true) then
            gamecenter.showLeaderboards()
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("leaderboards")
        end
    elseif(tutorialYesButton.selected == true) then
        Scene.Change("tutorialmainmenu")
    elseif(tutorialNoButton.selected == true) then
        noTutorialQuestion = true 
        Scene.Change("mainmenu")
    end
end