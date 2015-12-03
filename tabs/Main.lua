-- Main
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the main starting point 

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create the scenes
    Scene("companylogo", CompanyLogoScene)
    Scene("gamelogo", GameLogoScene)
    Scene("mainmenu", MainMenuScene)
    Scene("settings", SettingsScene)
    Scene("credits", CreditsScene)
    Scene("maingame", MainGameScene)
    Scene("store", StoreScene)
    Scene("achievements", AchievementsScene)
    Scene("leaderboards", LeaderboardsScene)
    Scene("worlds", WorldsScene)
    
    Scene.Change("companylogo")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch)
end