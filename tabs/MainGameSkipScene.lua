-- MainGameSkipScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main game skip scene where it displays they skipped the scene and tells them the right answer

MainGameSkipScene = class()

local startTime

function MainGameSkipScene:init()
  
    startTime = ElapsedTime
    amountOfSkips = amountOfSkips - 1
    saveLocalData("skips", amountOfSkips)
end

function MainGameSkipScene:draw()
  
    sprite("Dropbox:skipSceneBackground", WIDTH/2, HEIGHT/2, 1024, 768)
    
    -- Changes colour, font, size of text
    -- this text indicates to the user that they are incorrect and don't get candy 
    --it also shows them the correct answer          
    fill(0, 0, 0, 255)       
    font("Futura-CondensedExtraBold")
    fontSize(80)
    text("You skipped the question...",WIDTH/2, 700)
    text("The Correct Answer was:",WIDTH/2, HEIGHT/2-100)
    fill(0, 255, 0, 255)
    text(" "..MainGameScene.getNumber1().." "..MainGameScene.getEquationType().." "..MainGameScene.getNumber2().." = "..MainGameScene.getEquationAnswer(), WIDTH/2, HEIGHT/2-300)
    
    if(startTime + 5 < ElapsedTime) then
       if (MainGameScene:isGameOver() == true ) then
            Scene.Change("totalscore")   
       else
            MainGameScene.changeTheEquation()
            Scene.Change("maingame")
       end
    end
end

function MainGameSkipScene:touched(touch)
   
end