local NextScene=class("NextScene",cc.load("mvc").ViewBase)

function NextScene:onCreate()

-- add HelloWorld label
cc.Label:createWithSystemFont("Lua Next Scene", "Arial", 40)
:move(display.cx, display.cy + 200)
:addTo(self)

--添加菜单项
local nextButton=cc.MenuItemFont:create("返回")
:onClicked(function()
self:getApp():enterScene("MainScene");
end
)
cc.Menu:create(nextButton)
:move(display.cx,display.cy-200)
:addTo(self)

end

return NextScene