-- MainGameRight
-- FinalAppGroup2-2015

-- Created by: Luke Vandenberghe and Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main game right scene where the program tells the user they were correct

MainGameRight = class()

local startTime

function MainGameRight:init()
    
    startTime = ElapsedTime
    amountOfCandyInBasket = amountOfCandyInBasket + 1
    amountOfEquationsRightInTotal = amountOfEquationsRightInTotal + 1
    saveLocalData("candy", amountOfCandyInBasket)
    saveLocalData("highscore", amountOfEquationsRightInTotal)
    
    if(gamecenter.enabled() == true) then
        gamecenter.submitScore(math.floor(amountOfEquationsRightInTotal), "CandyQuationsLeaderboard")
        if(amountOfEquationsRightInTotal == 1) then
            --the achievement for getting an equation correct
            gamecenter.submitAchievement("CompleteAnEquationCandyQuations", 100)  
        elseif(amountOfEquationsRightInTotal == 50) then
            --the achievement for getting 50 equations correct
            gamecenter.submitAchievement("Complete50EquationsCandyQuations", 100)
        elseif(amountOfEquationsRightInTotal == 100) then
            --the achievement for getting 100 equations correct
            gamecenter.submitAchievement("Complete100EquationsCandyQuations", 100)
        end
    end
end

function MainGameRight:draw()

    sprite("Dropbox:backgroundsForMainGameRainbow", WIDTH/2, HEIGHT/2, 1024, 768)

    -- Changes colour, font, size of text
    -- this text indicates to the user that they are correct and get candy         
    fill(39, 178, 24, 255)
    font("Futura-CondensedExtraBold")
    fontSize(100) 
 
    text("You got it Correct!", WIDTH/2, 600)
    text("Here is a candy", WIDTH/2, 100)
    
    sprite("Dropbox:candyForCurrency", WIDTH/2, HEIGHT/2)
    
    if(startTime + 3 < ElapsedTime) then
        if (MainGameScene:isGameOver() == true ) then
            Scene.Change("totalscore")   
       else
            MainGameScene.changeTheEquation()
            Scene.Change("maingame")
       end
    end
end

function MainGameRight:touched(touch)
    
end