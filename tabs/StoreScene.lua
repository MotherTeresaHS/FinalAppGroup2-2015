-- StoreScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the store scene 

StoreScene = class()

local homeButton 
local buyButtonForSkips
local buyButtonForBackgrounds
local backgroundPreviewStripes
local backgroundPreviewRainbow
local backgroundPreviewDots
local backgroundPreviewSelectedStripes
local backgroundPreviewButton
local backgroundPreviewSelected = ""
local startTime = 0
local timeRedButtonIsHeld = 0
backgroundPreview = ""

function StoreScene:init()
    
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    buyButtonForSkips = Button("Dropbox:storeBuyButton", vec2(WIDTH/2+350, HEIGHT/2+150))
    buyButtonForBackgrounds = Button("Dropbox:storeBuyButton", vec2(WIDTH/2+350, HEIGHT/2))
    backgroundPreviewStripes = Button("Dropbox:storeBackgroundPreviewStripes", vec2(WIDTH/2-75, HEIGHT/2))
    backgroundPreviewRainbow = Button("Dropbox:storeBackgroundPreviewRainbow", vec2(WIDTH/2, HEIGHT/2))
    backgroundPreviewDots = Button("Dropbox:storeBackgroundPreviewDots", vec2(WIDTH/2+75, HEIGHT/2))
    backgroundPreviewSelectedStripes = SpriteObject("Dropbox:storeBackgroundPreviewSelectedStripes", vec2(WIDTH/2-75, HEIGHT/2))
    backgroundPreviewSelectedRainbow = SpriteObject("Dropbox:storeBackgroundPreviewSelectedRainbow", vec2(WIDTH/2, HEIGHT/2))
    backgroundPreviewSelectedDots = SpriteObject("Dropbox:storeBackgroundPreviewSelectedDots", vec2(WIDTH/2+75, HEIGHT/2))
    backgroundPreviewButton = Button("Dropbox:storeBackgroundPreviewButton", vec2(WIDTH/2, HEIGHT/2-150))
  
    homeButton.draggable = false 
    buyButtonForSkips.draggable = false
    buyButtonForBackgrounds.draggable = false
    backgroundPreviewStripes.draggable = false
    backgroundPreviewRainbow.draggable = false
    backgroundPreviewDots.draggable = false
    backgroundPreviewSelectedStripes.draggable = false
    backgroundPreviewSelectedRainbow.draggable = false
    backgroundPreviewSelectedDots.draggable = false
    backgroundPreviewButton.draggable = false
end

function StoreScene:draw()
    
    --background(0, 0, 0, 255)
    sprite("Dropbox:backgroundsForMainGameStripes", WIDTH/2, HEIGHT/2, 1024, 768)
    
    homeButton:draw()
    buyButtonForSkips:draw()
    --buyButtonForBackgrounds:draw()
    
    --if backgroundPreviewSelected == "" or backgroundPreviewSelected == "rainbow" or backgroundPreviewSelected == "dots" then
       -- backgroundPreviewStripes:draw()
    --elseif backgroundPreviewSelected == "" or backgroundPreviewSelected == "stripes" or backgroundPreviewSelected == "dots" then
        --backgroundPreviewRainbow:draw()
    --elseif backgroundPreviewSelected == "" or backgroundPreviewSelected == "stripes" or backgroundPreviewSelected == "rainbow" then
        --backgroundPreviewDots:draw()
    --elseif backgroundPreviewSelected == "stripes" then
        --backgroundPreviewSelectedStripes:draw()
    --elseif backgroundPreviewSelected == "stripesunselected" then
        --backgroundPreviewStripes:draw()
    --elseif backgroundPreviewSelected == "rainbow" then
        --backgroundPreviewSelectedRainbow:draw()
    --elseif backgroundPreviewSelected == "rainbowunselected" then
        --backgroundPreviewRainbow:draw()
    --elseif backgroundPreviewSelected == "dots" then
        --backgroundPreviewSelectedDots:draw()
    --elseif backgroundPreviewSelected == "dotsunselected" then
        --backgroundPreviewDots:draw()
    --end
    
    --backgroundPreviewRainbow:draw()
    --backgroundPreviewDots:draw()
    --backgroundPreviewButton:draw()

    fill(0, 0, 0, 255)
    fontSize(60)
    text("Store", WIDTH/2, HEIGHT/2+300) 
    fontSize(55)
    text("Skips", WIDTH/2-300, HEIGHT/2+150)
    text("15", WIDTH/2+190, HEIGHT/2+150) -- cost for skips
    sprite("Dropbox:candyForCurrency", WIDTH/2+260, HEIGHT/2+155, 75, 75)
    --text("Backgrounds", WIDTH/2-300, HEIGHT/2)
    --text("10", WIDTH/2+190, HEIGHT/2) -- cost for backgrounds
    --sprite("Dropbox:candyForCurrency", WIDTH/2+260, HEIGHT/2+5, 75, 75)
    
    --amount of candy in basket in top right of screen
    text(math.floor(amountOfCandyInBasket), WIDTH/2+300, HEIGHT/2+325)
    sprite("Dropbox:candyForCurrency", WIDTH/2+400, HEIGHT/2+325, 75, 75)
end

function StoreScene:touched(touch)
    
    homeButton:touched(touch)
    buyButtonForSkips:touched(touch)
    buyButtonForBackgrounds:touched(touch)
    backgroundPreviewStripes:touched(touch)
    backgroundPreviewRainbow:touched(touch)
    backgroundPreviewDots:touched(touch)
    backgroundPreviewSelectedStripes:touched(touch)
    backgroundPreviewSelectedRainbow:touched(touch)
    backgroundPreviewSelectedDots:touched(touch)
    backgroundPreviewButton:touched(touch)
    
    if(homeButton.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        Scene.Change("mainmenu")
    elseif(buyButtonForSkips.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        if(amountOfCandyInBasket >= 15) then
            amountOfCandyInBasket = amountOfCandyInBasket - 15
            amountOfSkips = amountOfSkips + 1
            saveLocalData("candy", amountOfCandyInBasket)
        else
            alert("Not enough candy!", "Can't buy item")
        end
    elseif(buyButtonForBackgrounds.selected == true) then
        if(amountOfCandyInBasket >= 10) then
            amountOfCandyInBasket = amountOfCandyInBasket - 10
            saveLocalData("candy", amountOfCandyInBasket)
            -- need to make a variable for background in the main game
        else
            alert("Not enough candy!", "Can't buy item")
        end
    elseif(backgroundPreviewStripes.selected == true) then
        backgroundPreview = "stripes"
        backgroundPreviewSelected = "stripes"
    elseif(backgroundPreviewRainbow.selected == true) then
        backgroundPreview = "rainbow"
        backgroundPreviewSelected = "rainbow"
    elseif(backgroundPreviewDots.selected == true) then
        backgroundPreview = "dots"
        backgroundPreviewSelected = "dots"
    elseif(backgroundPreviewSelectedStripes.selected == true) then
        backgroundPreviewSelected = "stripesunselected"
    elseif(backgroundPreviewSelectedRainbow.selected == true) then
        backgroundPreviewSelected = "rainbowunselected"
    elseif(backgroundPreviewSelectedDots.selected == true) then
        backgroundPreviewSelected = "dotsunselected"
    elseif(backgroundPreviewButton.selected == true) then
        Scene.Change("backgrounds")
    end
end