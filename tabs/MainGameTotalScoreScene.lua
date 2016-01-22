-- MainGameTotalScoreScene
-- FinalAppGroup2-2015

-- Created by: Luke Vandenberghe and Zacharias Octavious
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main game right scene where the program tells the user their total amount of right answers

MainGameTotalScoreScene = class()

local startTime

function MainGameTotalScoreScene:init()
  
    startTime = ElapsedTime
    
    if(gamecenter.enabled() == true) then
        if(worldSelected == "+") then
            --the achievement for completing the chocolate addition world
            gamecenter.submitAchievement("CompleteChocolateWorldCandyQuations", 100)
        elseif(worldSelected == "-") then
            --the achievement for completing the lollipop subtraction world
            gamecenter.submitAchievement("CompleteLollipopWorldCandyQuations", 100)
        elseif(worldSelected == "*") then
            --the achievement for completing the jellybean multiplication world
            gamecenter.submitAchievement("CompleteJellybeanWorldCandyQuations", 100)
        elseif(worldSelected == "/") then
            --the achievement for completing the gummybear division world
            gamecenter.submitAchievement("CompleteGummybearWorldCandyQuations", 100)
        elseif(worldSelected == "?") then
            --the achievement for completing the sugar mountain world
            gamecenter.submitAchievement("CompleteSugarMountainWorldCandyQuations", 100)
        end
    end
end

function MainGameTotalScoreScene:draw()

    sprite("Dropbox:mainGameTotalScoreBackground", 512, 384, 1024, 768)

    -- Changes colour, font, size of text
    -- this text indicates to the user how many answers the got out of ten correct                    
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    fontSize(60) 
    text(MainGameScene.getCorrectCounter().." Candy has been added to basket!", WIDTH/2, 100)
    text("Score "..MainGameScene.getCorrectCounter().." out of 10",WIDTH/2, 600)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("mainmenu")
    end
end

function MainGameTotalScoreScene:touched(touch)

end