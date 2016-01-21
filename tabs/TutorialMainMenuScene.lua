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
-- French --
local storeFrenchButton
local leaderboardsFrenchButton
local achievementsFrenchButton

function TutorialMainMenuScene:init()
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:mainMenuPlayButton", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:mainMenuStoreButton", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:mainMenuAchievementsButton", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:mainMenuLeaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    backgroundTextBox = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextMainMenu", vec2(WIDTH/2-320, HEIGHT/2))
    
    -- French --
    storeFrenchButton = Button("Dropbox:mainMenuStoreButtonFrench", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsFrenchButton = Button("Dropbox:mainMenuAchievementsButtonFrench", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsFrenchButton = Button("Dropbox:mainMenuLeaderboardsButtonFrench", vec2(WIDTH/2-300, HEIGHT/2-300))
    
    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false
    backgroundTextBox.draggable = false
    -- French --
    storeFrenchButton.draggable = false
    achievementsFrenchButton.draggable = false
    leaderboardsFrenchButton.draggable = false
    
    if musicOff then
        music.stop()
    else
        music("Dropbox:Nigel Good - Discover", true, 0.10)
    end
end

function TutorialMainMenuScene:draw()
    -- Codea does not automatically call this method

    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    
    settingsButton:draw()
    mainGameButton:draw()
    backgroundTextBox:draw()
    
    fill(0, 0, 0, 255)
    if(languageForVoiceOver == 1) then   
        storeButton:draw()
        achievementsButton:draw()
        leaderboardsButton:draw()
        fontSize(27)
        text("Press this to begin the game->", WIDTH/2-320, HEIGHT/2)
    elseif(languageForVoiceOver == 2) then
        storeFrenchButton:draw()
        achievementsFrenchButton:draw()
        leaderboardsFrenchButton:draw()
        fontSize(17)
        text("Appuyez sur ce bouton pour commencer le jeu->", WIDTH/2-320, HEIGHT/2)
    end
end

function TutorialMainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    mainGameButton:touched(touch)
    
    if(mainGameButton.selected == true) then
        Scene.Change("tutorialworlds")
        if noVoiceOver then
            return
        else
            if(languageForVoiceOver == 1) then --english
                speech.rate = 0.1
                speech.volume = 0.6
                speech.pitch = 1.0
                speech.preDelay = 0.5
                speech.language = "en-US"
                speech.say("Press the addition world")
            elseif(languageForVoiceOver == 2) then --french
                speech.rate = 0.1
                speech.volume = 0.6
                speech.pitch = 1.0
                speech.preDelay = 0.5
                speech.language = "fr-CA"
                speech.say("Appuyez sur le monde de l'addition")
            end
        end
    end
end