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
        music("Dropbox:Nigel Good - Discover", true, 0.20)
    end
end

function MainMenuScene:draw()
    
    sprite("Dropbox:mainMenuScene", WIDTH/2, HEIGHT/2, 1024, 800)
    
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    achievementsButton:draw()
    leaderboardsButton:draw()
    
    fill(255, 255, 255, 255)
    stroke(0, 0, 0, 255)
    strokeWidth(2)
    rectMode(CENTER)
    rect(WIDTH/2, HEIGHT/2-230, 650, 45)
    
    fill(0, 0, 0, 255)
    fontSize(35)
    font("ArialMT")
    
    text("Your total amount of equations right: "..math.floor(amountOfEquationsRightInTotal), WIDTH/2, HEIGHT/2-230)
    
    if(tutorialOver ~= 0) then
        if noTutorialQuestion then
            return
        else
            backgroundTextBox:draw()
            tutorialYesButton:draw()
            tutorialNoButton:draw()
            
            fill(0, 0, 0, 255)
            fontSize(27)
            font("ArialMT")
            text("Would you like to see the tutorial again?", WIDTH/2, HEIGHT/2+300)
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
    elseif(storeButton.selected == true) then
        if noSoundEffects then
            Scene.Change("store")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("store")
        end
    elseif(achievementsButton.selected == true) then
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
    elseif(leaderboardsButton.selected == true) then
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
    elseif(tutorialYesButton.selected == true) then
        if noSoundEffects then
            Scene.Change("tutorialmainmenu")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("tutorialmainmenu")
        end
    elseif(tutorialNoButton.selected == true) then
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