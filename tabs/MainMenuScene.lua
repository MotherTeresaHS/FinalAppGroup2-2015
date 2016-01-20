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
-- French --
local storeFrenchButton
local leaderboardsFrenchButton
local achievementsFrenchButton
local tutorialOuiButton
local tutorialNonButton

function MainMenuScene:init()
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:mainMenuPlayButton", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:mainMenuStoreButton", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsButton = Button("Dropbox:mainMenuAchievementsButton", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsButton = Button("Dropbox:mainMenuLeaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    tutorialYesButton = Button("Dropbox:tutorialYesButton", vec2(WIDTH/2-100, HEIGHT/2+225))
    tutorialNoButton = Button("Dropbox:tutorialNoButton", vec2(WIDTH/2+100, HEIGHT/2+225))
    backgroundTextBox = SpriteObject("Dropbox:backgroundRectangleForTextMainMenu", vec2(WIDTH/2, HEIGHT/2+300))
    -- French --
    storeFrenchButton = Button("Dropbox:mainMenuStoreButtonFrench", vec2(WIDTH/2, HEIGHT/2-300))
    achievementsFrenchButton = Button("Dropbox:mainMenuAchievementsButtonFrench", vec2(WIDTH/2+300, HEIGHT/2-300))
    leaderboardsFrenchButton = Button("Dropbox:mainMenuLeaderboardsButtonFrench", vec2(WIDTH/2-300, HEIGHT/2-300))
    tutorialOuiButton = Button("Dropbox:tutorialYesButtonFrench", vec2(WIDTH/2-100, HEIGHT/2+225))
    tutorialNonButton = Button("Dropbox:tutorialNoButtonFrench", vec2(WIDTH/2+100, HEIGHT/2+225))
    
    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false
    tutorialYesButton.draggable = false
    tutorialNoButton.draggable = false
    backgroundTextBox.draggable = false
    -- French --
    storeFrenchButton.draggable = false
    achievementsFrenchButton.draggable = false
    leaderboardsFrenchButton.draggable = false
    tutorialOuiButton.draggable = false
    tutorialNonButton.draggable = false
    
    if musicOff then
        music.stop()
    else
        music("Dropbox:Nigel Good - Discover", true, 0.20)
    end
    
    if(gamecenter.enabled() == true) then
        if(amountOfCandyInBasket == 1) then
            --the achievement for buying something from the store
            gamecenter.submitAchievement("BuySomethingFromTheStoreCandyQuations", 100)
        end
    end
end

function MainMenuScene:draw()
    
    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    
    settingsButton:draw()
    mainGameButton:draw()
    
    fill(255, 255, 255, 255)
    stroke(0, 0, 0, 255)
    strokeWidth(2)
    rectMode(CENTER)
    rect(WIDTH/2, HEIGHT/2-230, 650, 45)
    
    fill(0, 0, 0, 255)
    fontSize(35)
    font("ArialMT")
    
    if(languageForVoiceOver == 1) then
        text("Your total amount of equations right: "..math.floor(amountOfEquationsRightInTotal), WIDTH/2, HEIGHT/2-230) 
        storeButton:draw()
        achievementsButton:draw()
        leaderboardsButton:draw()
    elseif(languageForVoiceOver == 2) then
        text("Votre total d'équations correctes: "..math.floor(amountOfEquationsRightInTotal), WIDTH/2, HEIGHT/2-230)
        storeFrenchButton:draw()
        achievementsFrenchButton:draw()
        leaderboardsFrenchButton:draw()
    end
    
    if(tutorialOver ~= 0) then
        if noTutorialQuestion then
            return
        else
            fill(0, 0, 0, 255)
            fontSize(27)
            font("ArialMT")
            if(languageForVoiceOver == 1) then
                backgroundTextBox:draw()
                tutorialYesButton:draw()
                tutorialNoButton:draw()
                text("Would you like to see the tutorial again?", WIDTH/2, HEIGHT/2+300)
            elseif(languageForVoiceOver == 2) then
                backgroundTextBox:draw()
                tutorialOuiButton:draw()
                tutorialNonButton:draw()
                text("Aimeriez-vous refaire le tutoriel?", WIDTH/2, HEIGHT/2+300)
            end
        end
    end
end

function MainMenuScene:touched(touch)
    
    settingsButton:touched(touch)
    mainGameButton:touched(touch)
    storeButton:touched(touch)
    achievementsButton:touched(touch)
    leaderboardsButton:touched(touch)
    tutorialYesButton:touched(touch)
    tutorialNoButton:touched(touch)
    -- French --
    storeFrenchButton:touched(touch)
    achievementsFrenchButton:touched(touch)
    leaderboardsFrenchButton:touched(touch)
    tutorialOuiButton:touched(touch)
    tutorialNonButton:touched(touch)
    
    if(settingsButton.selected == true) then
        if noSoundEffects then
            Scene.Change("settings")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("settings")
        end
    elseif(mainGameButton.selected == true) then
        if noSoundEffects then
            Scene.Change("worlds")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("worlds")
        end
    elseif(storeButton.selected == true) or (storeFrenchButton.selected == true) then
        if noSoundEffects then
            Scene.Change("store")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("store")
        end
    elseif(achievementsButton.selected == true) or (achievementsFrenchButton.selected == true) then
        if(gamecenter.enabled() == true) then
            if noSoundEffects then
                gamecenter.showAchievements()
            else
                sound(SOUND_HIT, 1851, 0.50)
                gamecenter.showAchievements()
            end
        else    --if game center is not enabled the user will get an alert
            if noSoundEffects then
                alert("You are not logged into Game Center.", "Can't see achievements!")
            else
                sound(SOUND_HIT, 24665, 0.50)
                alert("You are not logged into Game Center.", "Can't see achievements!")
            end
        end
    elseif(leaderboardsButton.selected == true) or (leaderboardsFrenchButton.selected == true) then
        if(gamecenter.enabled() == true) then
            if noSoundEffects then
                gamecenter.showLeaderboards()
            else
                sound(SOUND_HIT, 1851, 0.50)
                gamecenter.showLeaderboards()
            end
        else    --if game center is not enabled the user will get an alert
            if noSoundEffects then
                alert("You are not logged into Game Center.", "Can't see leaderboards!")
            else
                sound(SOUND_HIT, 24665, 0.50)
                alert("You are not logged into Game Center.", "Can't see leaderboards!")
            end
        end
    elseif(tutorialYesButton.selected == true) or (tutorialOuiButton.selected == true) then
        if noSoundEffects then
            Scene.Change("tutorialmainmenu")
            if noVoiceOver then
                return
            else
                if(languageForVoiceOver == 1) then
                    speech.rate = 0.1
                    speech.volume = 0.6
                    speech.pitch = 1.0
                    speech.language = "en-US"
                    speech.say("Press this to begin the game")
                elseif(languageForVoiceOver == 2) then
                    speech.rate = 0.1
                    speech.volume = 0.6
                    speech.pitch = 1.0
                    speech.language = "fr-CA"
                    speech.say("Appuyez sur ce bouton pour commencer le jeu")
                end
            end
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("tutorialmainmenu")
            if noVoiceOver then
                return
            else
                if(languageForVoiceOver == 1) then
                    speech.rate = 0.1
                    speech.volume = 0.6
                    speech.pitch = 1.0
                    speech.language = "en-US"
                    speech.say("Press this to begin the game")
                elseif(languageForVoiceOver == 2) then
                    speech.rate = 0.1
                    speech.volume = 0.6
                    speech.pitch = 1.0
                    speech.language = "fr-CA"
                    speech.say("Appuyez sur ce bouton pour commencer le jeu")
                end
            end            
        end
    elseif(tutorialNoButton.selected == true) or (tutorialNonButton.selected == true) then
        if noSoundEffects then
            noTutorialQuestion = true 
            Scene.Change("mainmenu")
        else
            sound(SOUND_HIT, 1851, 0.50)
            noTutorialQuestion = true 
            Scene.Change("mainmenu")
        end
    end
end