



local a=game:GetService"UserInputService"
local b=game:GetService"Players"
local c=game:GetService"Workspace"
local d=game:GetService"ReplicatedStorage"
local e=game:GetService"HttpService"
local f=game:GetService"GuiService"
local g=game:GetService"Lighting"
local h=game:GetService"RunService"
local i=game:GetService"Stats"
local j=game:GetService"CoreGui"
game:GetService"Debris"
local k=game:GetService"TweenService"
game:GetService"SoundService"

local l=Vector2.new local m=
Vector3.new
local n=UDim2.new
local o=UDim.new local p=
Rect.new
local q=CFrame.new
local r=q()local s=
r.PointToObjectSpace local t=
CFrame.Angles
local u=UDim2.fromOffset

local v=Color3.new
local w=Color3.fromRGB
local x=Color3.fromHex local y=
Color3.fromHSV
local z=ColorSequence.new
local A=ColorSequenceKeypoint.new
local B=NumberSequence.new
local C=NumberSequenceKeypoint.new

local D=c.CurrentCamera
local E=b.LocalPlayer
local F=E:GetMouse()
local G=f:GetGuiInset().Y

local H=math.max
local I=math.floor
local J=math.min
local K=math.abs local L=
math.noise local M=
math.exp local N=
math.rad local O=
math.random local P=
math.pow local Q=
math.sin local R=
math.pi local S=
math.tan local T=
math.atan2
local U=math.clamp

local V=table.insert
local W=table.find
local X=table.remove
local Y=table.concat



getgenv().library={
directory="priv9",
folders={
"/fonts",
"/configs",
},
_keybinds={},
flags={},
config_flags={},

connections={},
notifications={},
playerlist_data={
players={},
player={},
},
colorpicker_open=false;
gui;
}

local Z={
preset={
outline=w(10,10,10),
inline=w(35,35,35),
text=w(180,180,180),
text_outline=w(0,0,0),
background=w(20,20,20),
["1"]=x"#245771",
["2"]=x"#215D63",
["3"]=x"#1E6453",
},

utility={
inline={
BackgroundColor3={}
},
text={
TextColor3={}
},
text_outline={
Color={}
},
["1"]={
BackgroundColor3={},
TextColor3={},
ImageColor3={},
ScrollBarImageColor3={}
},
["2"]={
BackgroundColor3={},
TextColor3={},
ImageColor3={},
ScrollBarImageColor3={}
},
["3"]={
BackgroundColor3={},
TextColor3={},
ImageColor3={},
ScrollBarImageColor3={}
},
}
}

local _={
[Enum.KeyCode.LeftShift]="lShift",
[Enum.KeyCode.RightShift]="rShift",
[Enum.KeyCode.LeftControl]="lCtrl",
[Enum.KeyCode.RightControl]="rCtrl",
[Enum.KeyCode.Insert]="INSERT",
[Enum.KeyCode.Backspace]="BACK",
[Enum.KeyCode.Return]="Ent",
[Enum.KeyCode.LeftAlt]="L Alt",
[Enum.KeyCode.RightAlt]="R Alt",
[Enum.KeyCode.CapsLock]="CAPS",
[Enum.KeyCode.One]="1",
[Enum.KeyCode.Two]="2",
[Enum.KeyCode.Three]="3",
[Enum.KeyCode.Four]="4",
[Enum.KeyCode.Five]="5",
[Enum.KeyCode.Six]="6",
[Enum.KeyCode.Seven]="7",
[Enum.KeyCode.Eight]="8",
[Enum.KeyCode.Nine]="9",
[Enum.KeyCode.Zero]="0",
[Enum.KeyCode.KeypadOne]="Num1",
[Enum.KeyCode.KeypadTwo]="Num2",
[Enum.KeyCode.KeypadThree]="Num3",
[Enum.KeyCode.KeypadFour]="Num4",
[Enum.KeyCode.KeypadFive]="Num5",
[Enum.KeyCode.KeypadSix]="Num6",
[Enum.KeyCode.KeypadSeven]="Num7",
[Enum.KeyCode.KeypadEight]="Num8",
[Enum.KeyCode.KeypadNine]="Num9",
[Enum.KeyCode.KeypadZero]="Num0",
[Enum.KeyCode.Minus]="-",
[Enum.KeyCode.Equals]="=",
[Enum.KeyCode.Tilde]="~",
[Enum.KeyCode.LeftBracket]="[",
[Enum.KeyCode.RightBracket]="]",
[Enum.KeyCode.RightParenthesis]=")",
[Enum.KeyCode.LeftParenthesis]="(",
[Enum.KeyCode.Semicolon]=",",
[Enum.KeyCode.Quote]="'",
[Enum.KeyCode.BackSlash]="\\",
[Enum.KeyCode.Comma]=",",
[Enum.KeyCode.Period]=".",
[Enum.KeyCode.Slash]="/",
[Enum.KeyCode.Asterisk]="*",
[Enum.KeyCode.Plus]="+",
[Enum.KeyCode.Period]=".",
[Enum.KeyCode.Backquote]="`",
[Enum.UserInputType.MouseButton1]="M1",
[Enum.UserInputType.MouseButton2]="M2",
[Enum.UserInputType.MouseButton3]="M3",
[Enum.KeyCode.Escape]="ESC",
[Enum.KeyCode.Space]="SPACE",
}

library.__index=library

for aa,ab in next,library.folders do
makefolder(library.directory..ab)
end

local aa=library.flags
local ab=library.config_flags
local ac={SoundId=nil,Volume=nil}


local ad={};do
function Register_Font(ae,af,ag,ah)
if not isfile(ah.Id)then
writefile(ah.Id,ah.Font)
end

if isfile(ae..".font")then
delfile(ae..".font")
end

local ai={
name=ae,
faces={
{
name="Regular",
weight=af,
style=ag,
assetId=getcustomasset(ah.Id),
},
},
}

writefile(ae..".font",game:GetService"HttpService":JSONEncode(ai))

return getcustomasset(ae..".font")
end

local ae=Register_Font("TahomaBold",200,"Normal",{
Id="TahomaBold.ttf",
Font=game:HttpGet"https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/tahoma_bold.ttf",
})

local af=Register_Font("ProggyTiny",200,"Normal",{
Id="ProggyTiny.ttf",
Font=game:HttpGet"https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/ProggyTiny.ttf",
})

local ag=Register_Font("ProggyClean",200,"normal",{
Id="ProggyClean.ttf",
Font=game:HttpGet"https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/ProggyClean.ttf"
})

ad={ProggyTiny=
Font.new(af,Enum.FontWeight.Regular,Enum.FontStyle.Normal);TahomaBold=
Font.new(ae,Enum.FontWeight.Regular,Enum.FontStyle.Normal);ProggyClean=
Font.new(ag,Enum.FontWeight.Regular,Enum.FontStyle.Normal);
}
end





function library.tween(ae,af,ag)
local ah=k:Create(af,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0),ag):Play()

return ah
end

function library.close_current_element(ae,af)
local ag=library.current_element_open

if ag then
ag.set_visible(false)
ag.open=false
end
end

function library.resizify(ae,af)
local ag=Instance.new"TextButton"
ag.Position=n(1,-10,1,-10)
ag.BorderColor3=w(0,0,0)
ag.Size=n(0,10,0,10)
ag.BorderSizePixel=0
ag.BackgroundColor3=w(255,255,255)
ag.Parent=af
ag.BackgroundTransparency=1
ag.Text=""

local ah=false
local ai
local aj
local ak=af.Size

ag.InputBegan:Connect(function(al)
if al.UserInputType==Enum.UserInputType.MouseButton1 then
ah=true
aj=al.Position
ai=af.Size
end
end)

ag.InputEnded:Connect(function(al)
if al.UserInputType==Enum.UserInputType.MouseButton1 then
ah=false
end
end)

library:connection(a.InputChanged,function(al,am)
if ah and al.UserInputType==Enum.UserInputType.MouseMovement then
local an=D.ViewportSize.X
local ao=D.ViewportSize.Y

local ap=n(
ai.X.Scale,
math.clamp(
ai.X.Offset+(al.Position.X-aj.X),
ak.X.Offset,
an
),
ai.Y.Scale,
math.clamp(
ai.Y.Offset+(al.Position.Y-aj.Y),
ak.Y.Offset,
ao
)
)
af.Size=ap
end
end)
end

function library.mouse_in_frame(ae,af)
local ag=af.AbsolutePosition.Y<=F.Y and F.Y<=af.AbsolutePosition.Y+af.AbsoluteSize.Y
local ah=af.AbsolutePosition.X<=F.X and F.X<=af.AbsolutePosition.X+af.AbsoluteSize.X

return(ag and ah)
end

library.lerp=function(ae,af,ag)
ag=ag or 0.125

return ae*(1-ag)+af*ag
end

function library.draggify(ae,af)
local ag=false
local ah=af.Position
local ai

af.InputBegan:Connect(function(aj)
if aj.UserInputType==Enum.UserInputType.MouseButton1 then
ag=true
ai=aj.Position
ah=af.Position
end
end)

af.InputEnded:Connect(function(aj)
if aj.UserInputType==Enum.UserInputType.MouseButton1 then
ag=false
end
end)

library:connection(a.InputChanged,function(aj,ak)
if ag and aj.UserInputType==Enum.UserInputType.MouseMovement then
local al=D.ViewportSize.X
local am=D.ViewportSize.Y

local an=n(
0,
U(
ah.X.Offset+(aj.Position.X-ai.X),
0,
al-af.Size.X.Offset
),
0,
math.clamp(
ah.Y.Offset+(aj.Position.Y-ai.Y),
0,
am-af.Size.Y.Offset
)
)

af.Position=an
end
end)
end

function library.convert(ae,af)
local ag={}

for ah in string.gmatch(af,"[^,]+")do
V(ag,tonumber(ah))
end

if#ag==4 then
return unpack(ag)
else
return
end
end

function library.convert_enum(ae,af)
local ag={}

for ah in string.gmatch(af,"[%w_]+")do
V(ag,ah)
end

local ah=Enum
for ai=2,#ag do
local aj=ah[ag[ai] ]

ah=aj
end

return ah
end

local ae;
function library.update_config_list(af)
if not ae then
return
end

local ag={}

for ah,ai in listfiles(library.directory.."/configs")do
local aj=ai:gsub(library.directory.."/configs\\",""):gsub(".cfg",""):gsub(library.directory.."\\configs\\","")
ag[#ag+1]=aj
end


ae.refresh_options(ag)
end

function library.get_config(af)
local ag={}

for ah,ai in pairs(aa)do
if type(ai)=="table"and ai.key~=nil and ai.mode~=nil then
ag[ah]={active=ai.active,mode=ai.mode,key=tostring(ai.key)}
elseif type(ai)=="table"and ai.Color~=nil and ai.Transparency~=nil then
ag[ah]={Transparency=ai.Transparency,Color=ai.Color:ToHex()}
else
ag[ah]=ai
end
end

return e:JSONEncode(ag)
end

function library.load_config(af,ag)
local ah=e:JSONDecode(ag)

for ai,aj in pairs(ah)do
if ai~="config_name_list"then
local ak=library.config_flags[ai]
if ak then
if type(aj)=="table"and aj.Transparency~=nil and aj.Color then
ak(x(aj.Color),aj.Transparency)
else
ak(aj)
end
end
end
end
end

function library.round(af,ag,ah)
local ai=1/(ah or 1)

return I(ag*ai+0.5)/ai
end

function library.apply_theme(af,ag,ah,ai)
V(Z.utility[ah][ai],ag)
end

function library.update_theme(af,ag,ah)
for ai,aj in Z.utility[ag]do

for ak,al in aj do
if al[ai]==Z.preset[ag]then
al[ai]=ah
end
end
end

Z.preset[ag]=ah
end

function library.connection(af,ag,ah)
local ai=ag:Connect(ah)

V(library.connections,ai)

return ai
end

function library.apply_stroke(af,ag)
local ah=library:create("UIStroke",{
Parent=ag,
Color=Z.preset.text_outline,
LineJoinMode=Enum.LineJoinMode.Miter
})

library:apply_theme(ah,"text_outline","Color")
end

function library.create(af,ag,ah)
local ai=Instance.new(ag)

for aj,ak in next,ah do
ai[aj]=ak
end

if ag=="TextLabel"or ag=="TextButton"or ag=="TextBox"then
library:apply_theme(ai,"text","TextColor3")
library:apply_stroke(ai)
end

return ai
end

function library.unload_menu(af)
if library.gui then
library.gui:Destroy()
end

for ag,ah in next,library.connections do
ah:Disconnect()
ah=nil
end

if library.sgui then
library.sgui:Destroy()
end

library=nil
end



function library.window(af,ag)
local ah={
name=ag.name or ag.Name or"priv9",
size=ag.size or ag.Size or n(0,450,0,350),
selected_tab
}

library.gui=library:create("ScreenGui",{
Parent=j,
Name="\0",
Enabled=true,
ZIndexBehavior=Enum.ZIndexBehavior.Sibling,
DisplayOrder=20,
IgnoreGuiInset=true,
})


local ai=library:create("Frame",{
Parent=library.gui;
Position=n(0.5,-ah.size.X.Offset/2,0.5,-ah.size.Y.Offset/2);
BorderColor3=w(0,0,0);
Size=ah.size;
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});
ai.Position=n(0,ai.AbsolutePosition.Y,0,ai.AbsolutePosition.Y)
ah.main_outline=ai

library:resizify(ai)
library:draggify(ai)

local aj=library:create("Frame",{
Parent=ai;
BackgroundTransparency=0.800000011920929;
Position=n(0,2,0,2);
BorderColor3=w(0,0,0);
Size=n(1,-4,0,20);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});

library:create("TextLabel",{
FontFace=ad.TahomaBold;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=ah.name;
Parent=aj;
BackgroundTransparency=1;
Size=n(1,0,1,0);
BorderSizePixel=0;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library.gradient=library:create("UIGradient",{
Color=z{
A(0,Z.preset["1"]),
A(0.5,Z.preset["2"]),
A(1,Z.preset["3"]),
};
Parent=ai
});

local ak=library:create("Frame",{
AnchorPoint=l(0,1);
Parent=ai;
BackgroundTransparency=0.800000011920929;
Position=n(0,2,1,-2);
BorderColor3=w(0,0,0);
Size=n(1,-4,0,20);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});ah.tab_button_holder=ak

library:create("UIListLayout",{
VerticalAlignment=Enum.VerticalAlignment.Center;
FillDirection=Enum.FillDirection.Horizontal;
HorizontalAlignment=Enum.HorizontalAlignment.Center;
HorizontalFlex=Enum.UIFlexAlignment.Fill;
Parent=ak;
SortOrder=Enum.SortOrder.LayoutOrder;
VerticalFlex=Enum.UIFlexAlignment.Fill
});


function ah.toggle_menu(al)
ai.Visible=al
end

return setmetatable(ah,library)
end

function library.tab(af,ag)
local ah={
name=ag.name or"visuals",
count=0
}



local ai=library:create("TextButton",{
FontFace=ad.ProggyClean;
TextColor3=w(170,170,170);
BorderColor3=w(0,0,0);
Text=ah.name;
Parent=af.tab_button_holder;
BackgroundTransparency=1;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.XY;
TextSize=12;
BackgroundColor3=w(255,255,255)
});



local aj=library:create("Frame",{
Parent=af.main_outline;
BackgroundTransparency=0.6;
Position=n(0,2,0,24);
BorderColor3=w(0,0,0);
Size=n(1,-4,1,-48);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0),
Visible=false,
});ah.page=aj

library:create("UIListLayout",{
FillDirection=Enum.FillDirection.Horizontal;
HorizontalFlex=Enum.UIFlexAlignment.Fill;
Parent=aj;
Padding=o(0,2);
SortOrder=Enum.SortOrder.LayoutOrder;
VerticalFlex=Enum.UIFlexAlignment.Fill
});

library:create("UIPadding",{
PaddingTop=o(0,2);
PaddingBottom=o(0,2);
Parent=aj;
PaddingRight=o(0,2);
PaddingLeft=o(0,2)
});



function ah.open_tab()
local ak=af.selected_tab

if ak then
ak[1].Visible=false
ak[2].TextColor3=w(170,170,170)

ak=nil
end

aj.Visible=true
ai.TextColor3=w(255,255,255)

af.selected_tab={aj,ai}
end

ai.MouseButton1Down:Connect(function()
ah.open_tab()
end)

if not af.selected_tab then
ah.open_tab(true)
end

return setmetatable(ah,library)
end

local af={notifs={}}

library.sgui=library:create("ScreenGui",{
Name="Hi",
Parent=gethui()
})

function af.refresh_notifs(ag)
for ah,ai in af.notifs do
local aj=l(16,0)
k:Create(ai,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Position=u(aj.X,aj.Y+(ah*30))}):Play()
end
end

function af.fade(ag,ah,ai)
local aj=ai and 1 or 0

k:Create(ah,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=aj}):Play()

for ak,al in ah:GetDescendants()do
if not al:IsA"GuiObject"then
if al:IsA"UIStroke"then
k:Create(al,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Transparency=aj}):Play()
end

continue
end

if al:IsA"TextLabel"then
k:Create(al,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=aj}):Play()
elseif al:IsA"Frame"then
k:Create(al,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=al.Transparency and 0.6 and ai and 1 or 0.6}):Play()
end
end
end

function af.create_notification(ag,ah)
local ai={
name=ah.name or"Hit: q3sm (finobe) in the Head for 100 Damage!",
outline;
}


local aj=library:create("Frame",{
Parent=library.sgui;
Position=u(-50,50+(#af.notifs*30));
BorderColor3=w(0,0,0);
Size=n(0,0,0,24);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
BackgroundColor3=w(255,255,255)
});

local ak=library:create("Frame",{
Parent=aj;
BackgroundTransparency=1;
Position=n(0,2,0,2);
BorderColor3=w(0,0,0);
Size=n(1,-4,1,-4);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});

library:create("UIPadding",{
PaddingTop=o(0,7);
PaddingBottom=o(0,6);
Parent=ak;
PaddingRight=o(0,7);
PaddingLeft=o(0,4)
});

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=ai.name;
Parent=ak;
Size=n(0,0,1,0);
Position=n(0,1,0,-1);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library:create("UIGradient",{
Color=z{
A(0,Z.preset["1"]),
A(0.5,Z.preset["2"]),
A(1,Z.preset["3"]),
};
Parent=aj
});


local al=#af.notifs+1
af.notifs[al]=aj

af:refresh_notifs()
k:Create(aj,TweenInfo.new(1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{AnchorPoint=l(0,0)}):Play()

af:fade(aj,false)

task.spawn(function()
task.wait(3)

af.notifs[al]=nil

af:fade(aj,true)

task.wait(3)

aj:Destroy()
end)
end

function library.watermark(ag,ah)
local ai={
name=ah.name or"nebulahax";
}


local aj=library:create("Frame",{
Parent=library.sgui;
Position=n(0,16,0,0);
BorderColor3=w(0,0,0);
Size=n(0,0,0,24);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
BackgroundColor3=w(255,255,255)
});library.watermark_outline=aj;library:draggify(aj);

local ak=library:create("Frame",{
Parent=aj;
BackgroundTransparency=0.6;
Position=n(0,2,0,2);
BorderColor3=w(0,0,0);
Size=n(1,-4,1,-4);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});

library:create("UIPadding",{
PaddingTop=o(0,7);
PaddingBottom=o(0,6);
Parent=ak;
PaddingRight=o(0,7);
PaddingLeft=o(0,4)
});

local al=library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=ai.name;
Parent=ak;
Size=n(0,0,1,0);
Position=n(0,1,0,-1);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library.watermark_gradient=library:create("UIGradient",{
Color=z{
A(0,Z.preset["1"]),
A(0.5,Z.preset["2"]),
A(1,Z.preset["3"]),
};
Parent=aj
});


function ai.update_text(am)
al.Text=am
end

ai.update_text(ai.name)

return setmetatable(ai,library)
end

local ag=library:watermark{name="priv9 is here..."}
local ah=0
local ai=tick()

h.RenderStepped:Connect(function()
ah+=1

if tick()-ai>1 then
ai=tick()
local aj=math.floor(i.PerformanceStats.Ping:GetValue()).."ms"
ag.update_text(string.format("priv9.net alpha | fps: %s",ah,aj))
ah=0
end
end)

local aj=false
task.spawn(function()
while not aj do
af:create_notification{name="bypass loading, please wait"}
task.wait(3)
end
end)

do
if getgenv().NoMoreAdonis then
aj=true
else
getgenv().NoMoreAdonis=true

game:GetService"StarterGui":SetCore("DevConsoleVisible",false)

local ak=game:GetService"ReplicatedStorage"
local function GetAdonisRemote()
for al,am in ak:GetChildren()do
if am:IsA"RemoteEvent"and am:FindFirstChild"__FUNCTION"and am.__FUNCTION:IsA"RemoteFunction"then
return am
end
end
end

local al=game:GetService"Players".LocalPlayer
local am=GetAdonisRemote()

local an

local ao
ao=hookfunction(am.FireServer,function(ap,...)
if ap~=am then
return ao(ap,...)
end
if not an then
an={...}
end
end)

local ap=os.clock()+60
repeat
task.wait(1)
until an or os.clock()>ap

hookfunction(al.Kick,function()end)

if an then
local function main(aq)
if typeof(aq)~="table"then
return aq
end
for ar,as in aq do
if ar=="Sent"then
aq[ar]=as+1
end
main(as)
end
end

task.spawn(function()
while true do
main(an)
ao(am,an)
task.wait(30)
end
end)
end
end

af:create_notification{name="done!"}
aj=true
end










function library.column(ak,al)
ak.count+=1

local am={color=library.gradient.Color.Keypoints[ak.count].Value,count=ak.count}

local an=library:create("ScrollingFrame",{
ScrollBarImageColor3=w(0,0,0);
Active=true;
AutomaticCanvasSize=Enum.AutomaticSize.Y;
ScrollBarThickness=0;
Parent=ak.page;
LayoutOrder=-1;
BackgroundTransparency=1;
ScrollBarImageTransparency=1;
BorderColor3=w(0,0,0);
BackgroundColor3=w(0,0,0);
BorderSizePixel=0;
CanvasSize=n(0,0,0,0)
});am.column=an

library:create("UIListLayout",{
Parent=an;
Padding=o(0,5);
SortOrder=Enum.SortOrder.LayoutOrder
});

return setmetatable(am,library)
end

function library.section(ak,al)
local am={
name=al.name or al.Name or"section",
size=al.size or 1,
autofill=al.auto_fill or false,
count=ak.count;
color=ak.color;
}


local an=library:create("Frame",{
Parent=ak.column;
ClipsDescendants=true;
BorderColor3=w(0,0,0);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(an,tostring(ak.count),"BackgroundColor3");

local ao=library:create("Frame",{
Parent=an;
BackgroundTransparency=0.6;
Position=n(0,2,0,16);
BorderColor3=w(0,0,0);
Size=n(1,-4,1,-18);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});

local ap=library:create("Frame",{
Parent=ao;
Position=n(0,4,0,5);
BorderColor3=w(0,0,0);
Size=n(1,-8,0,0);
BackgroundTransparency=1;
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});am.elements=ap

if am.autofill==false then
ap.AutomaticSize=Enum.AutomaticSize.Y;
an.AutomaticSize=Enum.AutomaticSize.Y;
an.Size=n(1,0,0,0);

library:create("UIPadding",{
Parent=ap,
Name="",
PaddingBottom=o(0,7)
})
else
an.Size=n(1,0,am.size,0);
end

library:create("UIListLayout",{
Parent=ap;
Padding=o(0,6);
SortOrder=Enum.SortOrder.LayoutOrder
});

library:create("TextLabel",{
FontFace=ad.TahomaBold;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,0,0);
Position=n(0,4,0,2);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library:create("UIListLayout",{
Parent=ScrollingFrame;
Padding=o(0,5);
SortOrder=Enum.SortOrder.LayoutOrder
});


return setmetatable(am,library)
end


function library.toggle(ak,al)
local am={
enabled=al.enabled or nil,
name=al.name or"Toggle",
flag=al.flag or al.name or"Flag",

default=al.default or false,
folding=al.folding or false,
callback=al.callback or function()end,

color=ak.color;
count=ak.count;
}



local an=library:create("TextButton",{
Parent=ak.elements;
BackgroundTransparency=1;
Text="";
BorderColor3=w(0,0,0);
Size=n(1,0,0,12);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,1,0);
Position=n(0,1,0,-1);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

local ao=library:create("Frame",{
AnchorPoint=l(1,0);
Parent=an;
Position=n(1,0,0,0);
BorderColor3=w(0,0,0);
Size=n(0,12,0,12);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ao,tostring(ak.count),"BackgroundColor3");

local ap=library:create("Frame",{
Parent=ao;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ap,tostring(ak.count),"BackgroundColor3");

library:create("UIListLayout",{
FillDirection=Enum.FillDirection.Horizontal;
HorizontalAlignment=Enum.HorizontalAlignment.Right;
Parent=right_components;
Padding=o(0,4);
SortOrder=Enum.SortOrder.LayoutOrder
});



local aq;

if am.folding then
aq=library:create("Frame",{
Parent=ak.elements;
BackgroundTransparency=1;
Position=n(0,4,0,21);
Size=n(1,0,0,0);
BorderSizePixel=0;
Visible=false;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=w(255,255,255)
});am.elements=aq

library:create("UIListLayout",{
Parent=aq;
Padding=o(0,6);
HorizontalAlignment=Enum.HorizontalAlignment.Right;
SortOrder=Enum.SortOrder.LayoutOrder
});
end




function am.set(ar)
ap.BackgroundColor3=ar and Z.preset[tostring(ak.count)]or Z.preset.inline

aa[am.flag]=ar

am.callback(ar)

if am.folding then
aq.Visible=ar
end
end

am.set(am.default)

ab[am.flag]=am.set



an.MouseButton1Click:Connect(function()
am.enabled=not am.enabled
am.set(am.enabled)
end)


return setmetatable(am,library)
end

function library.list(ak,al)
local am={
callback=al and al.callback or function()end,
name=al.name or nil,

scale=al.size or 90,
items=al.items or{"1","2","3"},

visible=al.visible or true,

option_instances={},
current_instance=nil,
flag=al.flag or"flag",
}


local an=library:create("Frame",{
BorderColor3=w(0,0,0);
AnchorPoint=l(1,0);
Parent=ak.elements;
Position=n(1,0,0,0);
Size=n(1,0,0,am.scale);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(an,tostring(ak.count),"BackgroundColor3")

local ao=library:create("Frame",{
Parent=an;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(35,35,35)
});library:apply_theme(ao,"inline","BackgroundColor3")

local ap=library:create("ScrollingFrame",{
ScrollBarImageColor3=w(0,0,0);
Active=true;
AutomaticCanvasSize=Enum.AutomaticSize.Y;
ScrollBarThickness=0;
Parent=ao;
Size=n(1,0,1,0);
LayoutOrder=-1;
BackgroundTransparency=1;
ScrollBarImageTransparency=1;
BorderColor3=w(0,0,0);
BackgroundColor3=w(0,0,0);
BorderSizePixel=0;
CanvasSize=n(0,0,0,0)
});

library:create("UIListLayout",{
Parent=ap;
Padding=o(0,6);
SortOrder=Enum.SortOrder.LayoutOrder
});

library:create("UIPadding",{
PaddingTop=o(0,2);
PaddingBottom=o(0,4);
Parent=ap;
PaddingRight=o(0,5);
PaddingLeft=o(0,5)
});



function am.render_option(aq)
local ar=library:create("TextButton",{
FontFace=ad.ProggyClean;
TextColor3=w(170,170,170);
BorderColor3=w(0,0,0);
Text=aq;
AutoButtonColor=false;
BackgroundTransparency=1;
Parent=ap;
BorderSizePixel=0;
Size=n(1,0,0,0);
AutomaticSize=Enum.AutomaticSize.Y;
TextSize=12;
TextXAlignment=Enum.TextXAlignment.Left;
BackgroundColor3=w(255,255,255)
});

return ar
end

function am.refresh_options(aq)
for ar,as in am.option_instances do
as:Destroy()
end

for ar,as in next,aq do
local at=am.render_option(as)

V(am.option_instances,at)

at.MouseButton1Click:Connect(function()
if am.current_instance and am.current_instance~=at then
am.current_instance.TextColor3=w(170,170,170)
end

am.current_instance=at
at.TextColor3=w(255,255,255)

aa[am.flag]=at.text

am.callback(at.text)
end)
end
end

function am.filter_options(aq)
for ar,as in next,am.option_instances do
if string.find(as.Text,aq)then
as.Visible=true
else
as.Visible=false
end
end
end

function am.set(aq)
for ar,as in next,am.option_instances do
if as.Text==aq then
as.TextColor3=w(255,255,255)
else
as.TextColor3=w(170,170,170)
end
end

aa[am.flag]=aq
am.callback(aq)
end

am.refresh_options(am.items)


return setmetatable(am,library)
end

function library.slider(ak,al)
local am={
name=al.name or nil,
suffix=al.suffix or"",
flag=al.flag or al.name or"Flag",
callback=al.callback or function()end,

min=al.min or al.minimum or 0,
max=al.max or al.maximum or 100,
intervals=al.interval or al.decimal or 1,
default=al.default or 10,
value=al.default or 10,

ignore=al.ignore or false,
dragging=false,
}


local an=library:create("Frame",{
Parent=ak.elements;
BackgroundTransparency=1;
BorderColor3=w(0,0,0);
Size=n(1,0,0,25);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

local ao=library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
RichText=true;
BorderColor3=w(0,0,0);
Text="max distance : 5000";
Parent=an;
Size=n(1,0,0,0);
Position=n(0,1,0,-2);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.XY;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

local ap=library:create("TextButton",{
Parent=an;
Text="";
AutoButtonColor=false;
Position=n(0,0,0,13);
BorderColor3=w(0,0,0);
Size=n(1,0,0,12);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ap,tostring(ak.count),"BackgroundColor3")

local aq=library:create("Frame",{
Parent=ap;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(ap,"inline","BackgroundColor3")

local ar=library:create("Frame",{
Parent=aq;
BorderColor3=w(0,0,0);
Size=n(0.5,0,1,0);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ar,tostring(ak.count),"BackgroundColor3")



function am.set(as)
local at=tonumber(as)

if at==nil then
return
end

am.value=U(library:round(at,am.intervals),am.min,am.max)

ar.Size=n((am.value-am.min)/(am.max-am.min),0,1,0)
ao.Text=am.name.."<font color='#AAAAAA'>"..' - '..tostring(am.value)..am.suffix.."</font>"

aa[am.flag]=am.value

am.callback(aa[am.flag])
end

am.set(am.default)



ap.MouseButton1Down:Connect(function()
am.dragging=true
end)

library:connection(a.InputChanged,function(as)
if am.dragging and as.UserInputType==Enum.UserInputType.MouseMovement then
local at=(as.Position.X-aq.AbsolutePosition.X)/aq.AbsoluteSize.X
local au=((am.max-am.min)*at)+am.min

am.set(au)
end
end)

library:connection(a.InputEnded,function(as)
if as.UserInputType==Enum.UserInputType.MouseButton1 then
am.dragging=false
end
end)


am.set(am.default)

ab[am.flag]=am.set

return setmetatable(am,library)
end

function library.dropdown(ak,al)
local am={
name=al.name or nil,
flag=al.flag or al.name or"Flag",
items=al.items or{""},
callback=al.callback or function()end,
multi=al.multi or false,
scrolling=al.scrolling or false,


open=false,
option_instances={},
multi_items={},
ignore=al.ignore or false,
}

am.default=al.default or(am.multi and{am.items[1]})or am.items[1]or"None"

aa[am.flag]={}



local an=library:create("Frame",{
Parent=ak.elements;
BackgroundTransparency=1;
BorderColor3=w(0,0,0);
Size=n(1,0,0,16);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

local ao=library:create("TextButton",{
AnchorPoint=l(1,0);
AutoButtonColor=false;
Text="";
Parent=an;
Position=n(1,-2,0,0);
BorderColor3=w(0,0,0);
Size=n(0.52,8,0,16);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ao,tostring(ak.count),"BackgroundColor3")

local ap=library:create("Frame",{
Parent=ao;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(35,35,35)
});

local aq=library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=ap;
Size=n(1,-8,1,0);
BackgroundTransparency=1;
Position=n(0,5,0,-1);
BorderSizePixel=0;
TextXAlignment=Enum.TextXAlignment.Left;
TextTruncate=Enum.TextTruncate.AtEnd;
TextWrapped=false;
AutomaticSize=Enum.AutomaticSize.Y;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,1,0);
Position=n(0,1,0,0);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});



local ar=library:create("Frame",{
Parent=library.gui;
Size=n(0.0907348021864891,0,0.006218905560672283,20);
Position=n(0,500,0,100);
BorderColor3=w(0,0,0);
BorderSizePixel=0;
Visible=false;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ar,tostring(ak.count),"BackgroundColor3")

local as=library:create("Frame",{
Parent=ar;
Size=n(1,-2,1,-2);
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=Z.preset.inline
});library:apply_theme(as,"inline","BackgroundColor3")

library:create("UIListLayout",{
Parent=as;
Padding=o(0,6);
SortOrder=Enum.SortOrder.LayoutOrder
});

library:create("UIPadding",{
PaddingTop=o(0,5);
PaddingBottom=o(0,2);
Parent=as;
PaddingRight=o(0,6);
PaddingLeft=o(0,6)
});

library:create("UIPadding",{
PaddingBottom=o(0,2);
Parent=ar
});




function am.render_option(at)
local au=library:create("TextButton",{
FontFace=ad.ProggyClean;
AutoButtonColor=false;
TextColor3=w(170,170,170);
BorderColor3=w(0,0,0);
Text=at;
Parent=as;
Size=n(1,0,0,0);
Position=n(0,0,0,1);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

return au
end

function am.set_visible(at)
ar.Visible=at
end

function am.set(at)
local au={}
local av=type(at)=="table"

if at==nil then
return
end

for aw,ax in next,am.option_instances do
if ax.Text==at or(av and W(at,ax.Text))then
V(au,ax.Text)
am.multi_items=au
ax.TextColor3=w(255,255,255)
else
ax.TextColor3=w(170,170,170)
end
end

aq.Text=if av then Y(au,", ")else au[1]

aa[am.flag]=if av then au else au[1]

am.callback(aa[am.flag])
end

function am.refresh_options(at)
for au,av in next,am.option_instances do
av:Destroy()
end

am.option_instances={}

for au,av in next,at do
local aw=am.render_option(av)

V(am.option_instances,aw)

aw.MouseButton1Down:Connect(function()
if am.multi then
local ax=W(am.multi_items,aw.Text)

if ax then
X(am.multi_items,ax)
else
V(am.multi_items,aw.Text)
end

am.set(am.multi_items)
else
am.set_visible(false)
am.open=false

am.set(aw.Text)
end
end)
end
end

am.refresh_options(am.items)

am.set(am.default)

ab[am.flag]=am.set



ao.MouseButton1Click:Connect(function()
am.open=not am.open

ar.Size=n(0,ao.AbsoluteSize.X,0,ar.Size.Y.Offset)
ar.Position=n(0,ao.AbsolutePosition.X,0,ao.AbsolutePosition.Y+77)

am.set_visible(am.open)
end)

a.InputEnded:Connect(function(at)
if at.UserInputType==Enum.UserInputType.MouseButton1 then
if not(library:mouse_in_frame(ar)or library:mouse_in_frame(an))then
am.open=false
am.set_visible(false)
end
end
end)


return setmetatable(am,library)
end

function library.colorpicker(ak,al)
local am={
name=al.name or"Color",
flag=al.flag or al.name or"Flag",

color=al.color or v(1,1,1),
alpha=al.alpha and 1-al.alpha or 0,

open=false,
callback=al.callback or function()end,
}



local an=library:create("TextButton",{
Parent=ak.elements;
BackgroundTransparency=1;
Text="";
AutoButtonColor=false;
BorderColor3=w(0,0,0);
Size=n(1,0,0,12);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

local ao=library:create("Frame",{
AnchorPoint=l(1,0);
Parent=an;
Position=n(1,0,0,0);
BorderColor3=w(0,0,0);
Size=n(0,30,0,12);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ao,tostring(ak.count),"BackgroundColor3")

local aq=library:create("Frame",{
Parent=ao;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,1,0);
Position=n(0,1,0,0);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});




local ar=library:create("Frame",{
Parent=library.gui;
Position=n(0.6888179183006287,0,0.24751244485378265,0);
BorderColor3=w(0,0,0);
Visible=false;
Size=n(0,150,0,150);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ar,tostring(ak.count),"BackgroundColor3")

local as=library:create("Frame",{
Parent=ar;
BorderColor3=w(0,0,0);
Size=n(1,0,1,0);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(as,tostring(ak.count),"BackgroundColor3")

local at=library:create("Frame",{
Parent=as;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0);
BackgroundTransparency=0.6;
ZIndex=-1
});

library:create("UIPadding",{
PaddingTop=o(0,7);
PaddingBottom=o(0,-13);
Parent=at;
PaddingRight=o(0,6);
PaddingLeft=o(0,7)
});

local au=library:create("Frame",{
Parent=at;
Position=n(0,0,1,-36);
BorderColor3=w(0,0,0);
Size=n(1,-1,0,16);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(au,tostring(ak.count),"BackgroundColor3")

local av=library:create("TextBox",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text="";
Parent=au;
BackgroundTransparency=0;
ClearTextOnFocus=false;
PlaceholderColor3=w(255,255,255);
Size=n(1,-2,1,-2);
Position=n(0,1,0,1);
BorderSizePixel=0;
TextSize=12;
TextXAlignment=Enum.TextXAlignment.Center;
BackgroundColor3=Z.preset.inline
});library:apply_theme(av,"inline","BackgroundColor3")

local aw=library:create("TextButton",{
AnchorPoint=l(1,0);
Text="";
AutoButtonColor=false;
Parent=at;
Position=n(1,-1,0,0);
BorderColor3=w(0,0,0);
Size=n(0,14,1,-60);
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(aw,"inline","BackgroundColor3")

local ax=library:create("Frame",{
Parent=aw;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("UIGradient",{
Rotation=90;
Parent=ax;
Color=z{A(0,w(255,0,0)),A(0.17,w(255,255,0)),A(0.33,w(0,255,0)),A(0.5,w(0,255,255)),A(0.67,w(0,0,255)),A(0.83,w(255,0,255)),A(1,w(255,0,0))}
});

local ay=library:create("Frame",{
Parent=ax;
BorderMode=Enum.BorderMode.Inset;
BorderColor3=w(0,0,0);
Size=n(1,2,0,3);
Position=n(0,-1,0,-1);
BackgroundColor3=w(255,255,255)
});

local az=library:create("TextButton",{
AnchorPoint=l(0,0.5);
Text="";
AutoButtonColor=false;
Parent=at;
Position=n(0,0,1,-48);
BorderColor3=w(0,0,0);
Size=n(1,-1,0,14);
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(az,"inline","BackgroundColor3")

local aA=library:create("Frame",{
Parent=az;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(0,221,255)
});

local aB=library:create("ImageLabel",{
ScaleType=Enum.ScaleType.Tile;
BorderColor3=w(0,0,0);
Parent=aA;
Image="rbxassetid://18274452449";
BackgroundTransparency=1;
Size=n(1,0,1,0);
TileSize=n(0,4,0,4);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("UIGradient",{
Parent=aB;
Transparency=B{C(0,0),C(1,1)}
});

local aC=library:create("Frame",{
Parent=aA;
BorderMode=Enum.BorderMode.Inset;
BorderColor3=w(0,0,0);
Size=n(0,3,1,2);
Position=n(0,-1,0,-1);
BackgroundColor3=w(255,255,255)
});

local aD=library:create("TextButton",{
Parent=at;
BorderColor3=w(0,0,0);
Size=n(1,-20,1,-60);
Text="";
AutoButtonColor=false;
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(aD,"inline","BackgroundColor3")

local aE=library:create("Frame",{
Parent=aD;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(0,221,255)
});

local aF=library:create("TextButton",{
Parent=aE;
Text="";
AutoButtonColor=false;
BorderColor3=w(0,0,0);
Size=n(1,0,1,0);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("UIGradient",{
Parent=aF;
Transparency=B{C(0,0),C(1,1)}
});

local aG=library:create("Frame",{
Parent=aE;
BorderColor3=w(0,0,0);
Size=n(0,3,0,3);
BorderSizePixel=0;
BackgroundColor3=w(0,0,0)
});

library:create("Frame",{
Parent=aG;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

local aH=library:create("TextButton",{
Parent=aE;
Text="";
AutoButtonColor=false;
Size=n(1,0,1,0);
BorderColor3=w(0,0,0);
ZIndex=2;
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

library:create("UIGradient",{
Rotation=270;
Transparency=B{C(0,0),C(1,1)};
Parent=aH;
Color=z{A(0,w(0,0,0)),A(1,w(0,0,0))}
});






local aI=false
local aJ=false
local aK=false

local aL,aM,aN=am.color:ToHSV()
local aO=am.alpha

aa[am.flag]={}

function am.set_visible(aP)
ar.Visible=aP

ar.Position=u(aq.AbsolutePosition.X-1,aq.AbsolutePosition.Y+aq.AbsoluteSize.Y+65)
end

function am.set(aP,aQ)
if aP then
aL,aM,aN=aP:ToHSV()
end

if aQ then
aO=aQ
end

local aR=Color3.fromHSV(aL,aM,aN)

ay.Position=n(0,-1,aL,-1)
aC.Position=n(1-aO,-1,0,-1)
aG.Position=n(aM,-1,1-aN,-1)



aA.BackgroundColor3=Color3.fromHSV(aL,1,1)
aq.BackgroundColor3=aR
aE.BackgroundColor3=Color3.fromHSV(aL,1,1)

aa[am.flag]={
Color=aR;
Transparency=aO
}

local aS=aq.BackgroundColor3
av.Text=string.format("%s, %s, %s, ",library:round(aS.R*255),library:round(aS.G*255),library:round(aS.B*255))
av.Text..=library:round(1-aO,0.01)

am.callback(aR,aO)
end

function am.update_color()
local aP=a:GetMouseLocation()
local aQ=l(aP.X,aP.Y-G)

if aI then
aM=math.clamp((aQ-aD.AbsolutePosition).X/aD.AbsoluteSize.X,0,1)
aN=1-math.clamp((aQ-aD.AbsolutePosition).Y/aD.AbsoluteSize.Y,0,1)
elseif aJ then
aL=math.clamp((aQ-aw.AbsolutePosition).Y/aw.AbsoluteSize.Y,0,1)
elseif aK then
aO=1-math.clamp((aQ-az.AbsolutePosition).X/az.AbsoluteSize.X,0,1)
end

am.set(nil,nil)
end

am.set(am.color,am.alpha)

ab[am.flag]=am.set



an.MouseButton1Click:Connect(function()
am.open=not am.open

am.set_visible(am.open)
end)

a.InputChanged:Connect(function(aP)
if(aI or aJ or aK)and aP.UserInputType==Enum.UserInputType.MouseMovement then
am.update_color()
end
end)

library:connection(a.InputEnded,function(aP)
if aP.UserInputType==Enum.UserInputType.MouseButton1 then
aI=false
aJ=false
aK=false

if not(library:mouse_in_frame(an)or library:mouse_in_frame(ar))then
am.open=false
am.set_visible(false)
end
end
end)

az.MouseButton1Down:Connect(function()
aK=true
end)

aw.MouseButton1Down:Connect(function()
aJ=true
end)

aH.MouseButton1Down:Connect(function()
aI=true
end)

av.FocusLost:Connect(function()
local aP,aQ,aR,aS=library:convert(av.Text)

if aP and aQ and aR and aS then
am.set(w(aP,aQ,aR),1-aS)
end
end)


return setmetatable(am,library)
end

function library.textbox(ak,al)
local am={
name=al.name or"...",
placeholder=al.placeholder or al.placeholdertext or al.holder or al.holdertext or"type here...",
default=al.default,
flag=al.flag or al.name or"Flag",
callback=al.callback or function()end,
visible=al.visible or true,
}


local an=library:create("TextButton",{
AnchorPoint=l(1,0);
Text="";
AutoButtonColor=false;
Parent=ak.elements;
Position=n(1,0,0,0);
BorderColor3=w(0,0,0);
Size=n(1,0,0,16);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(an,tostring(ak.count),"BackgroundColor3")

local ao=library:create("Frame",{
Parent=an;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(ao,"inline","BackgroundColor3")

local aq=library:create("TextBox",{
Parent=an,
Name="",
FontFace=ad.ProggyClean,
TextTruncate=Enum.TextTruncate.AtEnd,
TextSize=12,
Text="",
Size=n(1,-6,1,0),
RichText=true,
TextColor3=w(255,255,255),
BorderColor3=w(0,0,0),
CursorPosition=-1,
BackgroundTransparency=1,
TextXAlignment=Enum.TextXAlignment.Left,
Position=n(0,6,0,0),
BorderSizePixel=0,
PlaceholderColor3=w(170,170,170),
})



function am.set(ar)
aa[am.flag]=ar

aq.Text=ar

am.callback(ar)
end

ab[am.flag]=am.set

if am.default then
am.set(am.default)
end



aq:GetPropertyChangedSignal"Text":Connect(function()
am.set(aq.Text)
end)


return setmetatable(am,library)
end

function library.keybind(ak,al)
local am={
flag=al.flag or al.name or"Flag",
callback=al.callback or function()end,
open=false,
binding=nil,
name=al.name or nil,
ignore_key=al.ignore or false,

key=al.key or nil,
mode=al.mode or"toggle",
active=al.default or false,

hold_instances={},
}

aa[am.flag]={}



local an=library:create("Frame",{
Parent=ak.elements;
BackgroundTransparency=1;
BorderColor3=w(0,0,0);
Size=n(1,0,0,16);
BorderSizePixel=0;
BackgroundColor3=w(255,255,255)
});

local ao=library:create("TextButton",{
AnchorPoint=l(1,0);
AutoButtonColor=false;
Text="";
Parent=an;
Position=n(1,0,0,0);
BorderColor3=w(0,0,0);
Size=n(0.45,0,0,16);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(ao,tostring(ak.count),"BackgroundColor3")

local aq=library:create("Frame",{
Parent=ao;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=w(35,35,35)
});

local ar=library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=aq;
Size=n(1,0,1,0);
BackgroundTransparency=1;
Position=n(0,0,0,-1);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,1,0);
Position=n(0,1,0,0);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});



local at=library:create("Frame",{
Parent=library.gui;
Visible=false;
Size=n(0.0907348021864891,0,0.006218905560672283,20);
Position=n(0,500,0,100);
BorderColor3=w(0,0,0);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(at,tostring(ak.count),"BackgroundColor3")

local au=library:create("Frame",{
Parent=at;
Size=n(1,-2,1,-2);
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.Y;
BackgroundColor3=Z.preset.inline
});library:apply_theme(au,"inline","BackgroundColor3")

library:create("UIListLayout",{
Parent=au;
Padding=o(0,6);
SortOrder=Enum.SortOrder.LayoutOrder
});

library:create("UIPadding",{
PaddingTop=o(0,5);
PaddingBottom=o(0,2);
Parent=au;
PaddingRight=o(0,6);
PaddingLeft=o(0,6)
});

library:create("UIPadding",{
PaddingBottom=o(0,2);
Parent=at
});

local av={"Hold","Toggle","Always"}

for aw,ax in av do
local ay=library:create("TextButton",{
FontFace=ad.ProggyClean;
TextColor3=w(170,170,170);
BorderColor3=w(0,0,0);
Text=ax;
Parent=au;
Position=n(0,0,0,1);
BackgroundTransparency=1;
TextXAlignment=Enum.TextXAlignment.Left;
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.XY;
TextSize=12;
BackgroundColor3=w(255,255,255)
});am.hold_instances[ax]=ay

ay.MouseButton1Click:Connect(function()
am.set(ax)

am.set_visible(false)

am.open=false
end)
end




function am.modify_mode_color(aw)
for ax,ay in am.hold_instances do
ay.TextColor3=w(170,170,170)
end

if am.hold_instances[aw]then
am.hold_instances[aw].TextColor3=w(255,255,255)
end
end

function am.set_mode(aw)
am.mode=aw

if aw=="Always"then
am.set(true)
elseif aw=="Hold"then
am.set(false)
end

aa[am.flag].mode=aw
am.modify_mode_color(aw)
end

function am.set(aw)
if type(aw)=="boolean"then
local ax=aw

if am.mode=="Always"then
ax=true
end

am.active=ax
am.callback(ax)
elseif tostring(aw):find"Enum"then
aw=aw.Name=="Escape"and"..."or aw

am.key=aw or"..."

am.callback(am.active or false)
elseif W({"Toggle","Hold","Always"},aw)then
am.set_mode(aw)

if aw=="Always"then
am.active=true
end

am.callback(am.active or false)
elseif type(aw)=="table"then
aw.key=type(aw.key)=="string"and aw.key~="..."and library:convert_enum(aw.key)or aw.key

aw.key=aw.key==Enum.KeyCode.Escape and"..."or aw.key
am.key=aw.key or"none"

am.mode=aw.mode or"Toggle"
am.set_mode(aw.mode)

if aw.active then
am.active=aw.active
end
end

aa[am.flag]={
mode=am.mode,
key=am.key,
active=am.active
}

library._keybinds[am.flag]={name=am.name,active=am.active}

local ax=tostring(am.key)~="Enums"and(_[am.key]or tostring(am.key):gsub("Enum.",""))or nil
local ay=ax and(tostring(ax):gsub("KeyCode.",""):gsub("UserInputType.",""))

ar.Text=" "..(ay or"...").." "





end

function am.set_visible(aw)
at.Visible=aw

at.Size=n(0,ao.AbsoluteSize.X,0,at.Size.Y.Offset)
at.Position=n(0,ao.AbsolutePosition.X,0,ao.AbsolutePosition.Y+77)
end

local function stop_keybind_capture()
if am.binding then
am.binding:Disconnect()
am.binding=nil
end

local aw=tostring(am.key)~="Enums"and(_[am.key]or tostring(am.key):gsub("Enum.",""))or nil
local ax=aw and(tostring(aw):gsub("KeyCode.",""):gsub("UserInputType.",""))
ar.Text=" "..(ax or"...").." "
end



ao.MouseButton1Down:Connect(function()
stop_keybind_capture()
task.wait()
ar.Text="..."

am.binding=library:connection(a.InputBegan,function(aw,ax)
local ay=aw.UserInputType==Enum.UserInputType.Keyboard and aw.KeyCode or aw.UserInputType
am.set(ay)

if am.binding then
am.binding:Disconnect()
am.binding=nil
end
end)
end)

ao.MouseButton2Down:Connect(function()
stop_keybind_capture()
am.open=not am.open
am.set_visible(am.open)
end)

library:connection(a.InputBegan,function(aw,ax)
local ay=aw.UserInputType==Enum.UserInputType.Keyboard and aw.KeyCode or aw.UserInputType
if ay==am.key then
if am.mode=="Toggle"then
am.active=not am.active
am.set(am.active)
elseif am.mode=="Hold"then
am.set(true)
end
end
end)

library:connection(a.InputEnded,function(aw,ax)
local ay=aw.UserInputType==Enum.UserInputType.Keyboard and aw.KeyCode or aw.UserInputType

if ay==am.key then
if am.mode=="Hold"then
am.set(false)
end
end

if aw.UserInputType==Enum.UserInputType.MouseButton1 then
if not(library:mouse_in_frame(ao)or library:mouse_in_frame(at))then
am.open=false
am.set_visible(false)
end
end
end)


ab[am.flag]=am.set
am.set{mode=am.mode,active=am.active,key=am.key}

return setmetatable(am,library)
end

function library.button(ak,al)
local am={
name=al.name or"button",
callback=al.callback or function()end,
}


local an=library:create("TextButton",{
AnchorPoint=l(1,0);
Text="";
AutoButtonColor=false;
Parent=ak.elements;
Position=n(1,0,0,0);
BorderColor3=w(0,0,0);
Size=n(1,0,0,16);
BorderSizePixel=0;
BackgroundColor3=Z.preset[tostring(ak.count)]
});library:apply_theme(an,tostring(ak.count),"BackgroundColor3")

local ao=library:create("Frame",{
Parent=an;
Position=n(0,1,0,1);
BorderColor3=w(0,0,0);
Size=n(1,-2,1,-2);
BorderSizePixel=0;
BackgroundColor3=Z.preset.inline
});library:apply_theme(ao,"inline","BackgroundColor3")

library:create("TextLabel",{
FontFace=ad.ProggyClean;
TextColor3=w(255,255,255);
BorderColor3=w(0,0,0);
Text=am.name;
Parent=an;
Size=n(1,0,1,0);
BackgroundTransparency=1;
Position=n(0,1,0,1);
BorderSizePixel=0;
AutomaticSize=Enum.AutomaticSize.X;
TextSize=12;
BackgroundColor3=w(255,255,255)
});



an.MouseButton1Click:Connect(function()
am.callback()
end)


return setmetatable(am,library)
end

function library.init_config(ak,al)
local am;
local an=al:tab{name="misc"}

local ao=an:column{}
local ar=an:column{}
local at=an:column{}

local au=ao:section{name="misc",size=1,default=true}

local av=false
local aw=true
local ax=true
local ay=w(255,0,0)
local az=5000
local aA=30
local aB=2
local aC=5
local aD=5
local aE={}
local aF=true
local aG=300
local aH=true




local function cleanup_auto_mortar_history()
local aI=tick()
for aJ=#aE,1,-1 do
if aI-aE[aJ].time>aC then
table.remove(aE,aJ)
end
end
end

local function is_near_recent_auto_mortar_target(aI)
cleanup_auto_mortar_history()
for aJ,aK in ipairs(aE)do
if(aI-aK.position).Magnitude<=aA then
return true
end
end
return false
end

local function cleanup_auto_mortar_targets()
for aI,aJ in ipairs(c:GetChildren())do
if aJ.Name=="MortarTarget"then
pcall(function()aJ:Destroy()end)
end
end
end

local function is_under_cover(aI,aJ)
if not aw then
return false
end

local aK=aJ+Vector3.new(0,3,0)
local aL=aK+Vector3.new(0,80,0)

local aM=RaycastParams.new()
aM.FilterType=Enum.RaycastFilterType.Blacklist
aM.FilterDescendantsInstances={aI}
local aN=c:FindFirstChild"MortarTarget"
if aN then
table.insert(aM.FilterDescendantsInstances,aN)
end

local aO=c:Raycast(aK,aL-aK,aM)
return aO~=nil
end

local function spawn_auto_mortar_visualizer(aI)
if not ax then
return
end

cleanup_auto_mortar_targets()

local aJ=Instance.new"Part"
aJ.Name="MortarTarget"
aJ.Shape=Enum.PartType.Ball
aJ.Size=Vector3.new(12,12,12)
aJ.Position=aI
aJ.Anchored=true
aJ.CanCollide=false
aJ.CanQuery=false
aJ.CanTouch=false
aJ.Material=Enum.Material.Neon
aJ.Color=ay
aJ.Transparency=0.01
aJ.Parent=c

local aK=Instance.new"Highlight"
aK.Parent=aJ
aK.Adornee=aJ
aK.FillColor=ay
aK.FillTransparency=0.3
aK.OutlineColor=w(1,1,1)
aK.OutlineTransparency=0
aK.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop

local aL=Instance.new"SelectionBox"
aL.Parent=aJ
aL.Adornee=aJ
aL.Color3=ay
aL.LineThickness=0.1
aL.Transparency=0

task.spawn(function()
task.wait(7)
pcall(function()aJ:Destroy()end)
end)
end

local function get_best_auto_mortar_cluster()
local aI=E and E.Character
if not aI then
return nil
end
local aJ=aI:FindFirstChild"HumanoidRootPart"
if not aJ then
return nil
end

local aK=aJ.Position
local aL={}

for aM,aN in ipairs(b:GetPlayers())do
if aN~=E and aN.Team~=E.Team then
local aO=aN.Character
if aO then
local aP=aO:FindFirstChild"HumanoidRootPart"or aO.PrimaryPart
if aP then
local aQ=aP.Position
if(aK-aQ).Magnitude<=az then
local aR=false

if aH then
local aS,aT=pcall(function()
local aS=c:FindFirstChild"LobbyRoom"
if not aS then return nil end
return aS:FindFirstChild"LobbyRoom"
end)
if aS and aT and aT:IsA"Model"then
local aU=Vector3.new(1/0,1/0,1/0)
local aV=Vector3.new(-1/0,-1/0,-1/0)
for aW,aX in ipairs(aT:GetDescendants())do
if aX:IsA"BasePart"then
local aY=aX.Position
aU=Vector3.new(math.min(aU.X,aY.X),math.min(aU.Y,aY.Y),math.min(aU.Z,aY.Z))
aV=Vector3.new(math.max(aV.X,aY.X),math.max(aV.Y,aY.Y),math.max(aV.Z,aY.Z))
end
end
if aU.X~=1/0 then
if aQ.X>=aU.X and aQ.X<=aV.X and aQ.Y>=aU.Y and aQ.Y<=aV.Y and aQ.Z>=aU.Z and aQ.Z<=aV.Z then
aR=true
end
end
end
end

if not aR and aF and aQ.Y<=aK.Y-aG then
aR=true
end

if not aR then
local aS=aO:FindFirstChildOfClass"Humanoid"
if aS and aS.Health>0 then
if not is_under_cover(aO,aQ)and not is_near_recent_auto_mortar_target(aQ)then
table.insert(aL,aQ)
end
end
end
end
end
end
end
end

if#aL<aB then
return nil
end

local aM
local aN=0

for aO,aP in ipairs(aL)do
local aQ=0
local aR=Vector3.new(0,0,0)
for aS,aT in ipairs(aL)do
if(aP-aT).Magnitude<=aA then
aQ=aQ+1
aR=aR+aT
end
end
if aQ>aN and aQ>=aB then
local aS=aR/aQ
if not is_near_recent_auto_mortar_target(aS)then
aN=aQ
aM=aS
end
end
end

return aM
end

local function fire_auto_mortar(aI)
local aJ=d:FindFirstChild"MortarFire"
if not aJ then
return
end
pcall(function()
aJ:FireServer(aI)
end)
end

local function execute_auto_mortar()
local aI=get_best_auto_mortar_cluster()
if not aI then
return
end
table.insert(aE,{position=aI,time=tick()})
cleanup_auto_mortar_history()
spawn_auto_mortar_visualizer(aI)
task.wait(0.8)
fire_auto_mortar(aI)
end

task.spawn(function()
while true do
if av then
execute_auto_mortar()
end
task.wait(aD)
end
end)

local aI="none"
local aJ=w(255,255,255)

local aK
local aL=g.Ambient
local aM=g.Brightness

au:toggle{
name="fullbright",
flag="misc_fullbright",
default=false,
callback=function(aN)
if aK then
aK:Disconnect()
aK=nil
end

if aN then
aK=h.RenderStepped:Connect(function()
g.Ambient=w(255,255,255)
g.Brightness=0.1
end)
else
g.Ambient=aL
g.Brightness=aM
end
end,
}

au:dropdown{
name="fov",
flag="fov_circle_mode",
items={"none","line"},
default=aI,
callback=function(aN)
aI=aN
end,
}

au:colorpicker{
name="color",
flag="fov_circle_color",
color=aJ,
callback=function(aN,aO)
aJ=aN
end,
}

local aN={}

local function restore_lighting()
for aO,aP in pairs(aN)do
if aP.clone and not aP.clone.Parent then
aP.clone.Parent=g
end
end
aN={}
end

local function destroy_lighting()
for aO,aP in ipairs(g:GetChildren())do
if aP.Parent==g then
aN[aP:GetFullName()]={clone=aP:Clone()}
aP:Destroy()
end
end
end

au:toggle{
name="destroy lighting",
flag="misc_destroy_lighting",
default=false,
callback=function(aO)
if aO then
destroy_lighting()
else
restore_lighting()
end
end,
}


































local aO
local aP={
bob=nil,
original_disabled=nil,
}

local function restore_no_bob()
if aP.bob and aP.bob.Parent then
pcall(function()
if aP.original_disabled~=nil and aP.bob.Disabled~=nil then
aP.bob.Disabled=aP.original_disabled
end
end)
end
aP.bob=nil
aP.original_disabled=nil
end

local function unbind_no_bob()
if aO then
aO:Disconnect()
aO=nil
end
restore_no_bob()
end
local function bind_no_bob()
local function remove_bob(aQ)
local aR=aQ:FindFirstChild"CameraBobbing"
if aR then
local aS,aT=pcall(function()
return aR.Disabled
end)
if aS then
aP.bob=aR
aP.original_disabled=aT
pcall(function()aR.Disabled=true end)
else
pcall(function()aR:Destroy()end)
end
end
end

if E and E.Character then
remove_bob(E.Character)
end

aO=E.CharacterAdded:Connect(remove_bob)
end

local aQ
local aR={
script=nil,
original_disabled=nil,
}
local function restore_tilt()
if aR.script and aR.script.Parent then
pcall(function()
if aR.original_disabled~=nil and aR.script.Disabled~=nil then
aR.script.Disabled=aR.original_disabled
end
end)
end
aR.script=nil
aR.original_disabled=nil
end

local function unbind_remove_tilt()
if aQ then
aQ:Disconnect()
aQ=nil
end
restore_tilt()
end
local function bind_remove_tilt()
local aS=E and E:FindFirstChild"PlayerScripts"or E and E:WaitForChild("PlayerScripts",5)
if aS then
local aT=aS:FindFirstChild"Tilt"
if aT then
local aU,aV=pcall(function()
return aT.Disabled
end)
if aU then
aR.script=aT
aR.original_disabled=aV
pcall(function()aT.Disabled=true end)
else
pcall(function()aT:Destroy()end)
end
end
aQ=aS.ChildAdded:Connect(function(aU)
if aU.Name=="Tilt"then
local aV,aW=pcall(function()
return aU.Disabled
end)
if aV then
aR.script=aU
aR.original_disabled=aW
pcall(function()aU.Disabled=true end)
else
pcall(function()aU:Destroy()end)
end
end
end)
end
end






































au:toggle{
name="no bob",
flag="misc_no_bob",
default=false,
callback=function(aS)
if aS then
bind_no_bob()
bind_remove_tilt()
else
unbind_no_bob()
unbind_remove_tilt()
end
end,
}

au:dropdown{
name="sound",
flag="misc_killsound",
items={"default","tf2","neverlose","rust","skeet"},
default="rust",
callback=function(aS)
local aT={
tf2="rbxassetid://138901307926331",
neverlose="rbxassetid://139452805868562",
rust="rbxassetid://5043539486",
skeet="rbxassetid://5447626464",
}

local aU=workspace:FindFirstChild"Sounds"
local aV=aU and aU:FindFirstChild"KillConfirmed"
if aV then
if not ac.SoundId then
ac.SoundId=aV.SoundId
ac.Volume=aV.Volume
end

if aS=="default"then
aV.SoundId=ac.SoundId
aV.Volume=ac.Volume
else
aV.SoundId=aT[aS]or aV.SoundId
aV.Volume=10
end
end
end,
}

au:dropdown{
name="class",
flag="misc_spam_class",
items={"none","Assault","Grenadier","Medic","Officer","Mortarman","AntiTank"},
default="none",
callback=function(aS)
if aS=="none"then
return false
end

local aT=d:FindFirstChild"RequestClass"
if aT and aT:IsA"RemoteFunction"then
local aU,aV=pcall(function()
return aT:InvokeServer(aS)
end)

if aU and aV==true then
af:create_notification{name="class: "..aS.." selected"}
return true
end
end

return false
end,
}

game:GetService"ContextActionService"

local aS=Enum.KeyCode.U
local aT=false

local aU=D.CameraType
local aV=D.CFrame
local aW=D.Focus
local aX=D.FieldOfView
local aY=D.CameraSubject
local aZ=a.MouseBehavior
local a_=a.MouseIconEnabled


local a0={}
local a1=false
local a2
local a3
local a4
local a5={
["Enum.KeyCode.W"]=true,
["Enum.KeyCode.A"]=true,
["Enum.KeyCode.S"]=true,
["Enum.KeyCode.D"]=true,
["Enum.KeyCode.Space"]=true,
["Enum.KeyCode.LeftShift"]=true,
["Enum.KeyCode.RightShift"]=true,
}
local a6=not a.KeyboardEnabled

local a7=5
local a8=a7
local a9=0.3
a8=a8/10
if a6 then a9=a9*2 end

local function renderStepped(ba)

if a1 then
local bb=a:GetMouseDelta()
local bc=D.CFrame local
bd=bc:ToEulerAnglesYXZ()
local be=bd
local bf=math.deg(be)+bb.Y
if bf>65 or bf<-65 then
if not(be<0 and bb.Y<0)and not(be>0 and bb.Y>0)then
bb=Vector2.new(bb.X,0)
end
end
bc=bc*CFrame.Angles(-math.rad(bb.Y),0,0)
bc=CFrame.Angles(0,-math.rad(bb.X),0)*(bc-bc.Position)+bc.Position
bc=CFrame.lookAt(bc.Position,bc.Position+bc.LookVector)
if bb~=Vector2.new(0,0)then
D.CFrame=D.CFrame:Lerp(bc,a9)
end
a.MouseBehavior=Enum.MouseBehavior.LockCurrentPosition
else
a.MouseBehavior=Enum.MouseBehavior.Default
end


if a0["Enum.KeyCode.W"]then
D.CFrame=D.CFrame*CFrame.new(0,0,-a8*ba*60)
end
if a0["Enum.KeyCode.A"]then
D.CFrame=D.CFrame*CFrame.new(-a8*ba*60,0,0)
end
if a0["Enum.KeyCode.S"]then
D.CFrame=D.CFrame*CFrame.new(0,0,a8*ba*60)
end
if a0["Enum.KeyCode.D"]then
D.CFrame=D.CFrame*CFrame.new(a8*ba*60,0,0)
end
if a0["Enum.KeyCode.Space"]then
D.CFrame=D.CFrame*CFrame.new(0,a8*ba*60,0)
end
if a0["Enum.KeyCode.LeftShift"]or a0["Enum.KeyCode.RightShift"]then
D.CFrame=D.CFrame*CFrame.new(0,-a8*ba*60,0)
end
end

local ba,bb

local function startFreecam()
if aT then return end

aU=D.CameraType
aV=D.CFrame
aW=D.Focus
aX=D.FieldOfView
aZ=a.MouseBehavior
a_=a.MouseIconEnabled
aY=D.CameraSubject

D.CameraSubject=nil
D.CameraType=Enum.CameraType.Scriptable
D.FieldOfView=70
a.MouseIconEnabled=false
a.MouseBehavior=Enum.MouseBehavior.Default


if E and E.Character then
local bc=E.Character
local bd=bc:FindFirstChild"HumanoidRootPart"or bc:FindFirstChild"UpperTorso"or bc:FindFirstChild"Torso"
if bd and bd:IsA"BasePart"then
a2=bd
a3=bd.Anchored
bd.Anchored=true
end
end


ba=a.InputBegan:Connect(function(bc,bd)
if bc.UserInputType==Enum.UserInputType.Keyboard and bc.KeyCode then
local be=tostring(bc.KeyCode)
if a5[be]then a0[be]=true end
end
if bc.UserInputType==Enum.UserInputType.MouseButton2 then
a1=true
end
end)

bb=a.InputEnded:Connect(function(bc,bd)
if bc.UserInputType==Enum.UserInputType.Keyboard and bc.KeyCode then
local be=tostring(bc.KeyCode)
if a5[be]then a0[be]=false end
end
if bc.UserInputType==Enum.UserInputType.MouseButton2 then
a1=false
end
end)

a4=h.RenderStepped:Connect(renderStepped)
aT=true
end

local function stopFreecam()
if ba then ba:Disconnect()ba=nil end
if bb then bb:Disconnect()bb=nil end
if a4 then a4:Disconnect()a4=nil end

D.CameraType=aU
D.CameraSubject=aY
aY=nil
D.CFrame=aV
D.Focus=aW
D.FieldOfView=aX
a.MouseIconEnabled=a_
a.MouseBehavior=aZ


if a2 and a2.Parent then
a2.Anchored=a3 or false
a2=nil
a3=nil
end

aT=false
end

au:keybind{
name="freecam",
flag="misc_freecam",
key=aS,
mode="Hold",
default=false,
callback=function(bc)
if bc then
startFreecam()
else
stopFreecam()
end
end,
}

au:slider{
name="speed",
flag="misc_freecam_speed",
min=1,
max=50,
default=a7,
interval=0.1,
callback=function(bc)
a7=bc
a8=a7/10
end,
}

library:connection(a.InputChanged,function(bc)
if not aT then
return
end
if bc.UserInputType==Enum.UserInputType.MouseWheel then
D.FieldOfView=U((D.FieldOfView or 70)+bc.Position.Z*-2,1,120)
end
end)

local bc=ar:section{name="movement",size=1,default=true}

local bd=false
local be=false
local bf={}
local bg
local bh=false
local bi=false
local bj=16

local bk=false
local bl=16
local bm

local bn

local function update_speedhack_walkspeed()
local bo=b.LocalPlayer
local bp=bo and bo.Character and bo.Character:FindFirstChildOfClass"Humanoid"
if not bp then
bn=nil
return
end

if bk then
if bn~=bp then
bm=bp.WalkSpeed
bn=bp
end

if bp.WalkSpeed~=bl then
bp.WalkSpeed=bl
end
else
if bn==bp and bm then
bp.WalkSpeed=bm
end
bn=nil
end
end

bc:keybind{name="noclip",flag="movement_noclip",mode="Hold",default=false,callback=function(bo)
bd=bo

local bp=b.LocalPlayer and b.LocalPlayer.Character
if bo then
bf={}
if bp then
for bq,br in pairs(bp:GetDescendants())do
if br:IsA"BasePart"then
bf[br]=br.CanCollide
pcall(function()br.CanCollide=false end)
end
end
if be then
local bq=bp:FindFirstChild"HumanoidRootPart"or bp:FindFirstChild"Torso"or bp:FindFirstChild"UpperTorso"
if bq then bg=bq.Position.Y end
end
end
else
for bq,br in pairs(bf)do
if bq and bq.Parent then
pcall(function()bq.CanCollide=br end)
end
end
bf={}
bg=nil
end
end}

bc:toggle{name="freeze y",flag="movement_freeze_y",default=false,callback=function(bo)
be=bo
if bo and bd then
local bp=b.LocalPlayer and b.LocalPlayer.Character
local bq=bp and(bp:FindFirstChild"HumanoidRootPart"or bp:FindFirstChild"Torso"or bp:FindFirstChild"UpperTorso")
if bq then bg=bq.Position.Y end
else
bg=nil
end
end}

library:connection(a.InputBegan,function(bo,bp)
if bp then return end
if bo.KeyCode==Enum.KeyCode.Space then
bh=true
elseif bo.KeyCode==Enum.KeyCode.LeftShift or bo.KeyCode==Enum.KeyCode.RightShift then
bi=true
end
end)

library:connection(a.InputEnded,function(bo,bp)
if bp then return end
if bo.KeyCode==Enum.KeyCode.Space then
bh=false
elseif bo.KeyCode==Enum.KeyCode.LeftShift or bo.KeyCode==Enum.KeyCode.RightShift then
bi=false
end
end)

bc:keybind{name="speedhack",callback=function(bo)
bk=bo
update_speedhack_walkspeed()
end,mode="Toggle",default=false}

bc:slider{name="speed",min=12,max=300,default=12,interval=1,suffix="",callback=function(bo)
bl=bo
if bk then
update_speedhack_walkspeed()
end
end}

bc:toggle{
name="jump cooldown",
flag="movement_jump_cooldown",
default=false,
callback=function(bo)
local function remove_jump_cooldown(bp)
if not bp then
return
end
local bq=bp:FindFirstChild"JumpCooldown"
if bq then
pcall(function()
if typeof(bq.Disabled)=="boolean"then
bq.Disabled=true
end
end)
end
end

if bo then
if E and E.Character then
remove_jump_cooldown(E.Character)
end
library:connection(b.PlayerAdded,function(bp)
bp.CharacterAdded:Connect(remove_jump_cooldown)
end)
if E then
E.CharacterAdded:Connect(remove_jump_cooldown)
end
end
end,
}

library:connection(h.RenderStepped,function()
if bk then
update_speedhack_walkspeed()
end
end)

library:connection(h.RenderStepped,function(bo)
if bd and be then
local bp=b.LocalPlayer and b.LocalPlayer.Character
local bq=bp and(bp:FindFirstChild"HumanoidRootPart"or bp:FindFirstChild"Torso"or bp:FindFirstChild"UpperTorso")
if bq and bg then
if bh then
bg=bg+(bj*bo)
elseif bi then
bg=bg-(bj*bo)
end

local br,bs,bt=bq.CFrame:ToOrientation()
bq.CFrame=CFrame.new(bq.Position.X,bg,bq.Position.Z)*CFrame.Angles(br,bs,bt)
pcall(function()
local bu=bq.Velocity
bq.Velocity=Vector3.new(bu.X,0,bu.Z)
end)
end
end
end)


local bo=false
local bp
local bq

bc:toggle{
name="teleport tool",
flag="movement_tptool",
default=false,
callback=function(br)
bo=br
if br then
if E then
local bs=E:FindFirstChildOfClass"Backpack"
if bs then
bp=Instance.new"Tool"
bp.Name="Teleport Tool"
bp.RequiresHandle=false
bp.Parent=bs
bq=bp.Activated:Connect(function()
local bt=E.Character
local bu=bt and(bt:FindFirstChild"HumanoidRootPart"or bt.PrimaryPart)
local bv=F and F.Hit
if not bu or not bv then return end
bu.CFrame=CFrame.new(bv.X,bv.Y+3,bv.Z,select(4,bu.CFrame:components()))
pcall(function()
if bu:IsA"BasePart"then
bu.Velocity=Vector3.new(0,0,0)
if bu.AssemblyLinearVelocity then
bu.AssemblyLinearVelocity=Vector3.new(0,0,0)
end
end
end)
end)
end
end
else
if bq then
bq:Disconnect()
bq=nil
end
if bp then
pcall(function()bp:Destroy()end)
bp=nil
end
end
end,
}

local br=ar:section{name="fov changer",size=1,default=true,auto_fill=false}

local bs=false
local bt=70
local bu=20
local bv=D.FieldOfView

br:toggle{
name="enabled",
flag="fov_changer_enabled",
default=false,
callback=function(bw)
bs=bw
if not bw then
D.FieldOfView=bv
end
end,
}

br:slider{
name="amount",
flag="fov_changer_amount",
min=10,
max=120,
default=100,
interval=1,
suffix="",
callback=function(bw)
bt=bw
end,
}

br:keybind{
name="zoom key",
flag="fov_changer_zoom_key",
mode="Hold",
default=false,
callback=function()end,
}

br:slider{
name="zoom amount",
flag="fov_changer_zoom_amount",
min=0,
max=70,
default=25,
interval=1,
suffix="",
callback=function(bw)
bu=bw
end,
}



local bw=Drawing.new"Circle"
bw.Thickness=1
bw.Visible=false
bw.Filled=false
bw.NumSides=90

local bx={}
local function sample_color_sequence(by,bz)
local bA=by.Keypoints
if#bA==0 then
return w(255,255,255)
end

if bz<=bA[1].Time then
return bA[1].Value
end

for bB=1,#bA-1 do
local bC=bA[bB]
local bD=bA[bB+1]
if bz<=bD.Time then
local bE=(bz-bC.Time)/(bD.Time-bC.Time)
return bC.Value:Lerp(bD.Value,bE)
end
end

return bA[#bA].Value
end

local function update_fov_circle()
local by=U(aa.fov or 40,0,360)
local bz=D and D.ViewportSize or Vector2.new(1920,1080)
local bA=Vector2.new(bz.X/2,bz.Y/2)

if aI=="none"then
bw.Visible=false
for bB,bC in ipairs(bx)do
bC.Visible=false
end
return
end

if aI=="line"then
bw.Visible=true
bw.Position=bA
bw.Radius=by
bw.Color=aJ

for bB,bC in ipairs(bx)do
bC.Visible=false
end
return
end

if aI=="menu"then
bw.Visible=false
local bB=72
for bC=1,bB do
local bD=bx[bC]
if not bD then
bD=Drawing.new"Line"
bD.Thickness=1
bD.Visible=true
bx[bC]=bD
end

local bE=((bC-1)/bB)*(math.pi*2)
local bF=(bC/bB)*(math.pi*2)
local bG=bA+Vector2.new(math.cos(bE),math.sin(bE))*by
local bH=bA+Vector2.new(math.cos(bF),math.sin(bF))*by
bD.From=bG
bD.To=bH
bD.Color=sample_color_sequence(library.gradient.Color,(bC-1)/(bB-1))
bD.Visible=true
end

for bC=bB+1,#bx do
bx[bC].Visible=false
end
end
end

library:connection(h.RenderStepped,function()
if bs then
local by=bt
local bz=aa.fov_changer_zoom_key

if type(bz)=="table"and bz.active then
by=bu
end

D.FieldOfView=U(by,1,120)
end

update_fov_circle()
end)


local by=at:section{name="config",size=1,default=true}

by:keybind{name="menu key",callback=function(bz)al.toggle_menu(bz)end,key=Enum.KeyCode.Insert,mode="Toggle",default=false}

ae=by:dropdown{name="config",options={"Report","This","Error","To","Finobe"},callback=function(bz)if am then am.set(bz)end end,flag="config_name_list"};library:update_config_list()
am=by:textbox{name="Config name:",flag="config_name_text"}
by:button{name="save config",callback=function()writefile(library.directory.."/configs/"..aa.config_name_text..".cfg",library:get_config())library:update_config_list()end}
by:button{name="load config",callback=function()library:load_config(readfile(library.directory.."/configs/"..aa.config_name_text..".cfg"))library:update_config_list()end}
by:button{name="delete config",callback=function()delfile(library.directory.."/configs/"..aa.config_name_text..".cfg")library:update_config_list()end}


local bz=at:section{name="theme",size=1,default=true,}


local bA={

morytania={x"#245771",x"#215D63",x"#1E6453"},
ancient={x"#6C486E",x"#244063",x"#00587F"},
}


local function apply_preset(bB)
local bC=bA[bB]
if not bC then return end

library:update_theme("1",bC[1])
library:update_theme("2",bC[2])
library:update_theme("3",bC[3])

library.gradient.Color=z{
A(0,Z.preset["1"]),
A(0.5,Z.preset["2"]),
A(1,Z.preset["3"]),
}

library.watermark_gradient.Color=z{
A(0,Z.preset["1"]),
A(0.5,Z.preset["2"]),
A(1,Z.preset["3"]),
}
end


bz:dropdown{name="theme",flag="theme_preset",items={"morytania","ancient"},default="morytania",callback=function(bB)
apply_preset(bB)
end}


apply_preset"morytania"

local bB=ao:section{name="exploits",size=1,default=true}


local bC=at:section{name="auto mortar",auto_fill=false}

bC:toggle{
name="enabled",
flag="auto_mortar_enabled",
default=false,
callback=function(bD)
av=bD
end,
}

bC:toggle{
name="indoor check",
flag="auto_mortar_indoor_check",
default=true,
callback=function(bD)
aw=bD
end,
}

bC:toggle{
name="visualizer",
flag="auto_mortar_visualizer",
default=true,
callback=function(bD)
ax=bD
end,
}

bC:colorpicker{
name="color",
flag="auto_mortar_visual_color",
color=w(255,0,0),
callback=function(bD)
ay=bD
end,
}

bC:toggle{
name="ignore spawnbox",
flag="auto_mortar_ignore_spawnbox",
default=true,
callback=function(bD)
aF=bD
end,
}

bC:toggle{
name="ignore LobbyRoom",
flag="auto_mortar_ignore_lobby_spawn",
default=true,
callback=function(bD)
aH=bD
end,
}

bC:slider{
name="ignore below",
flag="auto_mortar_ignore_spawnbox_below",
min=50,
max=1000,
default=aG,
interval=1,
callback=function(bD)
aG=bD
end,
}

local bD=false
local bE=false

local function get_bullet_remote()
local bF=d:FindFirstChild"TREKRemotes"or d:WaitForChild("TREKRemotes",5)
if not bF then
return nil
end
return bF:FindFirstChild"BulletRemote"or bF:WaitForChild("BulletRemote",5)
end

local function set_current_tool_suppression()
local bF=E and E.Character
local bG=bF and bF:FindFirstChildOfClass"Tool"
if not bG then
return
end

local bH=d:FindFirstChild"TREKModules"and d:FindFirstChild"TREKModules":FindFirstChild"GunSettings"
local bI=bH and bH:FindFirstChild(bG.Name)
if bI and bI:IsA"ModuleScript"then
local bJ,bK=pcall(require,bI)
if bJ and type(bK)=="table"then
bK.Suppression=999999
end
end
end

local function spin_enemies_fire()
local bF=get_bullet_remote()
if not bF then
return
end

set_current_tool_suppression()

local bG=c:FindFirstChild"Terrain"
if not bG then
return
end

local bH=Vector3.new(-749.0277099609375,38.20991516113281,-525.492006)
local bI=Vector3.new(-747.279052734375,38.47119140625,-523.3695068359375)
pcall(function()
bF:FireServer(bH,bI,Color3.new(0.9960784316068622,0.7411764860153198,0.20000000298023224),bG,99999)
end)
end

local function germany_fire()
local bF=get_bullet_remote()
if not bF then
return
end

local bG=b.LocalPlayer
if not bG then
return
end

local bH=bG.Character or bG.CharacterAdded:Wait()
if not bH then
return
end

local bI=bH:FindFirstChild"Head"or bH:WaitForChild("Head",5)
local bJ=bH:FindFirstChild"HumanoidRootPart"or bH:WaitForChild("HumanoidRootPart",5)
if not bI or not bJ then
return
end

local bK=bI.Position+Vector3.new(0,2.5,0)
local bL=bJ.CFrame.LookVector
local bM=bJ.CFrame.RightVector
local bN=bK+bL*2
local bO=Vector3.new(0,1,0)

local bP=bN+bM*3+bO*3
local bQ=bN-bM*3+bO*3
local bR=bN+bM*3-bO*3
local bS=bN-bM*3-bO*3

local bT=(bP+bQ)*0.5
local bU=(bR+bS)*0.5
local bV=(bP+bR)*0.5
local bW=(bQ+bS)*0.5

local function fire(bX,bY)
pcall(function()
bF:FireServer(bX,bY,Color3.new(1,0.7,0.2),5)
end)
end

fire(bP,bT)
fire(bT,bQ)
fire(bR,bU)
fire(bU,bS)
fire(bQ,bW)
fire(bW,bS)
fire(bP,bV)
fire(bV,bR)

local bX=bN
fire(bX+bO*3,bX-bO*3)
fire(bX+bM*3,bX-bM*3)
end

local bF=false
local bG=false

local function get_damager_remote()
local bH=d:FindFirstChild"TREKRemotes"
return bH and bH:FindFirstChild"DamagerRemote"
end

local function selfgod_fire()
local bH=get_damager_remote()
if not bH then
return
end

local bI=E and E.Character
if not bI then
return
end

local bJ
for bK,bL in ipairs(bI:GetChildren())do
if bL:IsA"Tool"and(bL.Name=="CLUB"or bL.Name=="SABRE")then
bJ=bL:FindFirstChild"Gun"
if bJ then
break
end
end
end

if not bJ then
return
end

local bK=bI:FindFirstChild"Right Arm"
if not bK then
return
end

local bL=Vector3.new(102.76392364501953,34.88430404663086,868.3345947265625)
local bM=0/0
pcall(function()
bH:FireServer(bJ,bL,bI,bM,bK,"Melee")
end)
end

local function worldpeace_fire()
local bH=get_damager_remote()
if not bH then
return
end

local bI=E and E.Character
if not bI then
return
end

local bJ=bI:FindFirstChild"CLUB"and bI.CLUB:FindFirstChild"Gun"
if not bJ then
return
end

local bK=Vector3.new(102.76392364501953,34.88430404663086,868.3345947265625)

for bL,bM in ipairs(b:GetPlayers())do
local bN=bM.Character
if bN and bN~=bI then
local bO=bN:FindFirstChild"Right Arm"
if bO then
pcall(function()
bH:FireServer(bJ,bK,bN,0/0,bO,"Melee")
end)
end
end
end
end

local bH
local bI=false

local function stop_animation()
if bH then
pcall(function()
bH:Stop(0)
end)
bH=nil
end
bI=false
end

local function play_animation(bJ)
stop_animation()
if not bJ then
return
end

local bK=E and E.Character
local bL=bK and bK:FindFirstChild"Humanoid"
if not bL then
return
end

local bM=bL:FindFirstChild"Animator"or Instance.new("Animator",bL)
local bN=Instance.new"Animation"
bN.AnimationId="rbxassetid://"..tostring(bJ)

local bO,bP=pcall(function()
return bM:LoadAnimation(bN)
end)
if not bO or not bP then
return
end

bP.Priority=Enum.AnimationPriority.Action
bP:Play(0)
bH=bP
bI=true
end

task.spawn(function()
while true do
if bI and bH then
local bJ=E and E.Character
local bK=bJ and bJ:FindFirstChild"Humanoid"
local bL=bK and bK:FindFirstChild"Animator"
if bL then
for bM,bN in ipairs(bL:GetPlayingAnimationTracks())do
if bN~=bH then
pcall(function()
bN:Stop(0)
end)
end
end
end

if not bH.IsPlaying then
pcall(function()
bH:Play(0)
end)
end
end

if bD then
spin_enemies_fire()
end
if bE then
germany_fire()
end
if bF then
selfgod_fire()
end
if bG then
worldpeace_fire()
end
task.wait(2)
end
end)

bB:toggle{
name="spin enemys",
flag="exploits_spin_enemys",
default=false,
callback=function(bJ)
bD=bJ
end,
}

bB:toggle{
name="germany(detected)",
flag="exploits_germany",
default=false,
callback=function(bJ)
bE=bJ
if bJ then
af:create_notification{name="germany enabled"}
end
end,
}

bB:dropdown{
name="anim",
flag="exploits_anim",
items={"none","point","wave","sit"},
default="none",
callback=function(bJ)
if bJ=="none"then
stop_animation()
return false
end

local bK={
point=128853357,
wave=128777973,
sit=178130996,
}

local bL=bK[bJ]
if bL then
play_animation(bL)
return true
end

return false
end,
}

bB:toggle{
name="godmode",
flag="exploits_godmode",
default=false,
callback=function(bJ)
bF=bJ
if bJ then
af:create_notification{name="hold out melee"}
end
end,
}

bB:toggle{
name="world peace",
flag="exploits_world_peace",
default=false,
callback=function(bJ)
bG=bJ
if bJ then
af:create_notification{name="hold out melee"}
end
end,
}

end




local ak=library:window{
name="priv9.net | centaura [lilscripty]",
}



do
if not library._keybinds then library._keybinds={}end

local al=library:create("Frame",{
Parent=library.gui;
AnchorPoint=l(1,0);
Position=n(1,-12,0,0);
BackgroundTransparency=1;
Size=n(0,220,0,0);
BorderSizePixel=0;
})

local am=library:create("Frame",{
Parent=al;
BackgroundTransparency=1;
Size=n(1,0,1,0);
BorderSizePixel=0;
})

library:create("UIListLayout",{
Parent=am;
VerticalAlignment=Enum.VerticalAlignment.Top;
Padding=o(0,3);
SortOrder=Enum.SortOrder.LayoutOrder;
HorizontalAlignment=Enum.HorizontalAlignment.Right;
});

library:connection(h.RenderStepped,function()
if library.watermark_outline and library.watermark_outline.AbsolutePosition then
al.Position=n(1,-12,0,library.watermark_outline.AbsolutePosition.Y)
end
end)

local an={}

library:connection(h.RenderStepped,function()
if not library or not library._keybinds then return end

for ao,ar in pairs(library._keybinds)do
if ar and ar.active then
if not an[ao]then
local at=library:create("TextLabel",{
Parent=am;
FontFace=ad.ProggyTiny;
TextColor3=w(255,255,255);
BackgroundTransparency=1;
Text=ar.name or"";
Size=n(1,0,0,12);
TextXAlignment=Enum.TextXAlignment.Right;
TextYAlignment=Enum.TextYAlignment.Top;
BorderSizePixel=0;
TextSize=9;
})
an[ao]=at
else
an[ao].Text=ar.name or""
end
else
if an[ao]then
pcall(function()an[ao]:Destroy()end)
an[ao]=nil
end
end
end

for ao,ar in pairs(an)do
if not library._keybinds[ao]or not library._keybinds[ao].active then
pcall(function()ar:Destroy()end)
an[ao]=nil
end
end
end)
end


local al=ak:tab{name="aimbot"}
local am=al:column{}
local an=am:section{name="aimbot",auto_fill=false,}
local ao=am:section{name="target selection",auto_fill=true,size=0.61}
an:toggle{name="enabled",flag="aim_enabled"}
an:keybind{name="aim key",flag="aim_key"}
an:toggle{name="silent",flag="aim_silent"}
an:slider{name="smooth",flag="aim_smooth",min=0,max=20,default=0,interval=0.1,suffix=""}
ao:toggle{name="target team",flag="aim_target_team"}
ao:dropdown{name="hitbox",flag="distance_priority",items={"head","chest"},default="head"}
ao:slider{name="fov",flag="fov",min=0,max=360,default=40,interval=1,suffix=""}
ao:slider{name="max distance",flag="aim_max_distance",min=0,max=2000,default=0,interval=1,suffix=""}

local function get_root_part(ar)
return ar:FindFirstChild"HumanoidRootPart"
or ar:FindFirstChild"UpperTorso"
or ar:FindFirstChild"Torso"
end

local function get_aim_hitpart(ar,at)
if at=="head"then
return ar:FindFirstChild"Head"
end

return ar:FindFirstChild"UpperTorso"or get_root_part(ar)
end

local ar
local at=0
local au=0.1

local function safeCheckCaller()
return checkcaller and checkcaller()or false
end

local function get_direction(av,aw)
return(aw-av).Unit*1000
end

local function find_best_aim_target()
if not aa.aim_enabled then
return nil
end

local av=aa.aim_key
if type(av)~="table"or not av.active then
return nil
end

local aw=aa.aim_target_team
local ax=tonumber(aa.fov)or 40
local ay=tonumber(aa.aim_max_distance)or 0
local az=aa.distance_priority or"head"

local aA=Vector2.new(D.ViewportSize.X/2,D.ViewportSize.Y/2)
local aB
local aC=math.huge

for aD,aE in pairs(b:GetPlayers())do
if aE~=E and aE.Character and aE.Character.Parent then
local aF=aE.Character:FindFirstChildOfClass"Humanoid"
local aG=get_root_part(aE.Character)
if aF and aF.Health>0 and aG then
local aH=E.Team and aE.Team and E.Team==aE.Team
local aI=aw or(not aH)
if aI then
local aJ=get_aim_hitpart(aE.Character,az)
if aJ then
local aK=aJ.Position
local aL=(aK-D.CFrame.Position).Magnitude
if ay<=0 or aL<=ay then local
aM=D:WorldToViewportPoint(aK)
if aM.Z>0 then
local aN=Vector2.new(aM.X,aM.Y)
local aO=(aN-aA).Magnitude
if aO<=ax and aO<aC then
aC=aO
aB=aJ
end
end
end
end
end
end
end
end

return aB
end

local function get_silent_target(av)
if not aa.aim_enabled or not aa.aim_silent then
ar=nil
return nil
end

at=at+av
if at>=au then
at=0
ar=find_best_aim_target()
end

return ar
end

local av
av=hookmetamethod(game,"__namecall",newcclosure(function(...)
local aw=getnamecallmethod()
local ax=...
if aw=="FindPartOnRayWithIgnoreList"and ax==c and not safeCheckCaller()and aa.aim_enabled and aa.aim_silent then
local ay={...}
if#ay>=3 and typeof(ay[2])=="Ray"and typeof(ay[3])=="table"then
local az=ar
if az and az.Parent then
local aA=ay[2]
local aB=aA.Origin
local aC=get_direction(aB,az.Position)
ay[2]=Ray.new(aB,aC)
return av(unpack(ay))
end
end
end
return av(...)
end))

library:connection(h.RenderStepped,function(aw)
if not aa.aim_enabled then
ar=nil
return
end

get_silent_target(aw)
if aa.aim_silent then
return
end

local ax=find_best_aim_target()
if not ax then
return
end

local ay=D.CFrame
local az=CFrame.lookAt(ay.Position,ax.Position)
local aA=tonumber(aa.aim_smooth)or 0
local aB=1/(1+aA)

if aA<=0 then
D.CFrame=az
else
D.CFrame=ay:Lerp(az,aB)
end
end)

local aw=al:column{}
local ax=aw:section{name="weapon modifications",auto_fill=false}
local ay=aw:section{name="auto melee",auto_fill=true,size=0.264}

local az=false
local aA=5

ay:toggle{
name="enabled",
flag="auto_melee_enabled",
default=false,
callback=function(aB)
az=aB
end,
}
ay:slider{
name="range",
flag="auto_melee_range",
min=1,
max=100,
default=5,
interval=1,
suffix=" studs",
callback=function(aB)
aA=aB
end,
}

local aB=d:FindFirstChild"TREKRemotes"and d:FindFirstChild"TREKRemotes":FindFirstChild"DamagerRemote"
local aC=Vector3.new(-282.790283203125,29.02361297607422,121.29704284667969)
local aD="Melee"
local aE=100

local function get_auto_melee_object(aF)
if not aF then
return nil
end

for aG,aH in ipairs(aF:GetChildren())do
if aH:IsA"Tool"and(aH.Name=="CLUB"or aH.Name=="SABRE"or aH.Name=="HATCHET")then
local aI=aH:FindFirstChild"Gun"
if aI then
return aI
end
end
end

return nil
end

local function attack_auto_melee_target(aF,aG)
if not aF or not aG or not aG.Parent then
return false
end

local aH=aG:FindFirstChild"Right Arm"
if not aH then
return false
end

if not aB then
return false
end

local aI={
aF,
aC,
aG,
aE,
aH,
aD,
}

pcall(function()
aB:FireServer(unpack(aI))
end)

return true
end

task.spawn(function()
while true do
if az then
local aF=b.LocalPlayer
local aG=aF and aF.Character
if aG then
local aH=get_auto_melee_object(aG)
if aH then
local aI=aG:FindFirstChild"HumanoidRootPart"or aG.PrimaryPart
if aI then
local aJ=aI.Position

for aK,aL in ipairs(b:GetPlayers())do
if aL~=aF and aL.Character and aL.Character.Parent then
local aM=aL.Character:FindFirstChild"HumanoidRootPart"or aL.Character.PrimaryPart
if aM then
local aN=(aM.Position-aJ).Magnitude
if aN<=aA then
attack_auto_melee_target(aH,aL.Character)
end
end
end
end
end
end
end
end

task.wait(0.2)
end
end)

local aF={
recoil_multiplier=1,
instant_reload=false,
auto_mode="Auto",
firerate_enabled=false,
mag_size_enabled=false,
spread_multiplier=1,
teamkill=false,
tracer_color_enabled=false,
tracer_color=Color3.fromRGB(255,0,0),
suppression_enabled=false,
penetration_enabled=false,
}
local aG={}

local function get_gun_settings_modules()
local aH=d:FindFirstChild"TREKModules"
if not aH then
return{}
end

local aI=aH:FindFirstChild"GunSettings"
if not aI then
return{}
end

local aJ={}
for aK,aL in ipairs(aI:GetChildren())do
if aL:IsA"ModuleScript"then
V(aJ,aL)
end
end

return aJ
end

local function apply_weapon_mods()
for aH,aI in ipairs(get_gun_settings_modules())do
local aJ,aK=pcall(require,aI)
if not aJ or type(aK)~="table"then
continue
end

if not aG[aI.Name]then
aG[aI.Name]={
Recoil=aK.Recoil,
ReloadSpeed=aK.ReloadSpeed,
GunType=aK.GunType,
firerate=aK.firerate,
AmmoCount=aK.AmmoCount,
crouchSpread=aK.crouchSpread,
spread=aK.spread,
teamkill=aK.teamkill,
Suppression=aK.Suppression,
Penetration=aK.Penetration,
customColor=aK.customColor,
}
end

local aL=aG[aI.Name]

aK.Recoil=(aL.Recoil or 0)*aF.recoil_multiplier
aK.ReloadSpeed=aF.instant_reload and 0 or aL.ReloadSpeed
aK.GunType=aF.auto_mode or aL.GunType
aK.firerate=aF.firerate_enabled and((aL.firerate or aK.firerate or 60)*9999)or aL.firerate
aK.AmmoCount=aF.mag_size_enabled and 99999 or aL.AmmoCount
aK.crouchSpread=(aL.crouchSpread or 0)*aF.spread_multiplier
aK.spread=(aL.spread or 0)*aF.spread_multiplier
aK.teamkill=aF.teamkill or aL.teamkill
aK.Suppression=aF.suppression_enabled and 2 or aL.Suppression
aK.Penetration=aF.penetration_enabled and 99999 or aL.Penetration
aK.customColor=aF.tracer_color_enabled and aF.tracer_color or aL.customColor
end
end

ax:slider{
name="recoil multiplier",
flag="weapon_mods_recoil_multiplier",
min=0,
max=1,
default=1,
interval=0.01,
suffix="",
callback=function(aH)
aF.recoil_multiplier=aH
apply_weapon_mods()
end,
}
ax:slider{
name="spread multiplier",
flag="weapon_mods_spread_multiplier",
min=0,
max=1,
default=1,
interval=0.01,
suffix="",
callback=function(aH)
aF.spread_multiplier=aH
apply_weapon_mods()
end,
}
ax:dropdown{
name="fire mode",
flag="weapon_mods_auto_mode",
items={"Auto","Semi"},
default="Auto",
callback=function(aH)
aF.auto_mode=aH
apply_weapon_mods()
end,
}
ax:toggle{
name="instant reload",
flag="weapon_mods_instant_reload",
default=false,
callback=function(aH)
aF.instant_reload=aH
apply_weapon_mods()
end,
}
ax:toggle{
name="firerate",
flag="weapon_mods_firerate",
default=false,
callback=function(aH)
aF.firerate_enabled=aH
apply_weapon_mods()
end,
}
ax:toggle{
name="inf ammo",
flag="weapon_mods_inf_ammo",
default=false,
callback=function(aH)
aF.mag_size_enabled=aH
apply_weapon_mods()
end,
}
ax:toggle{
name="teamkill",
flag="weapon_mods_teamkill",
default=false,
callback=function(aH)
aF.teamkill=aH
apply_weapon_mods()
end,
}
ax:toggle{
name="enable tracer color",
flag="weapon_mods_tracer_color_enabled",
default=false,
callback=function(aH)
aF.tracer_color_enabled=aH
apply_weapon_mods()
end,
}
ax:colorpicker{
name="tracer color",
flag="weapon_mods_tracer_color",
color=aF.tracer_color,
callback=function(aH)
aF.tracer_color=aH
apply_weapon_mods()
end,
}

ax:toggle{
name="penetration",
flag="weapon_mods_penetration",
default=false,
callback=function(aH)
aF.penetration_enabled=aH
apply_weapon_mods()
end,
}


local aH=ak:tab{name="visuals"}

local aI=aH:column{}
local aJ=aH:column{}


local aK={
Enabled=true,
Boxes=false,
DisplayName=false,
Name=false,
Skeletons=false,
Healthbars=false,
HeldWeapon=false,
Targets={
Enabled=true,
Team=true,
Enemy=true,
},
Chams={
Enabled=false,
Mode="occluded",
Colors={
Outline={Color=w(255,255,255),Transparency=0},
Inside={Color=w(0,255,255),Transparency=0},
},
},
HealthNumber=false,
Colors={
Box=w(255,255,255),
DisplayName=w(0,255,255),
Name=w(255,255,255),
Skeleton=w(255,255,255),
Weapon=w(255,255,255),
HealthHigh=w(0,255,0),
HealthLow=w(255,0,0),
}
}

local aL=aI:section{name="player filter",}
aL:toggle{name="enable",flag="esp_target_enabled",default=aK.Targets.Enabled,callback=function(aM)aK.Targets.Enabled=aM end}
aL:toggle{name="team",flag="esp_target_team",default=aK.Targets.Team,callback=function(aM)aK.Targets.Team=aM end}
aL:toggle{name="enemy",flag="esp_target_enemy",default=aK.Targets.Enemy,callback=function(aM)aK.Targets.Enemy=aM end}

local aM=aI:section{name="player esp",size=0.729,auto_fill=true}
aM:toggle{name="boxes",flag="esp_boxes",default=aK.Boxes,callback=function(aN)aK.Boxes=aN end}
aM:toggle{name="display name",flag="esp_display_name",default=aK.DisplayName,callback=function(aN)aK.DisplayName=aN end}
aM:toggle{name="team",flag="esp_team",default=aK.Team,callback=function(aN)aK.Team=aN end}
aM:toggle{name="name",flag="esp_name",default=aK.Name,callback=function(aN)aK.Name=aN end}

aM:toggle{name="healthbars",flag="esp_healthbars",default=aK.Healthbars,callback=function(aN)aK.Healthbars=aN end}
aM:toggle{name="held weapon",flag="esp_held_weapon",default=aK.HeldWeapon,callback=function(aN)aK.HeldWeapon=aN end}
aM:toggle{name="health number",flag="esp_health_number",default=aK.HealthNumber,callback=function(aN)aK.HealthNumber=aN end}



local aN=aJ:section{name="highlight",size=1,auto_fill=false}
aN:toggle{name="on",flag="esp_chams_enabled",default=aK.Chams.Enabled,callback=function(aO)aK.Chams.Enabled=aO end}
aN:dropdown{name="mode",flag="esp_chams_mode",items={"occluded","ontop"},default=aK.Chams.Mode,callback=function(aO)aK.Chams.Mode=aO end}
aN:colorpicker{name="outline",flag="esp_chams_color_outline",color=aK.Chams.Colors.Outline.Color,callback=function(aO,aP)aK.Chams.Colors.Outline={Color=aO,Transparency=aP or 0}end}
aN:colorpicker{name="inside",flag="esp_chams_color_inside",color=aK.Chams.Colors.Inside.Color,callback=function(aO,aP)aK.Chams.Colors.Inside={Color=aO,Transparency=aP or 0}end}

local aO=aJ:section{name="player colors",size=0.655,auto_fill=true}
aO:colorpicker{name="box",flag="esp_color_box",color=aK.Colors.Box,callback=function(aP)aK.Colors.Box=aP end}
aO:colorpicker{name="display name",flag="esp_color_display_name",color=aK.Colors.DisplayName,callback=function(aP)aK.Colors.DisplayName=aP end}
aO:colorpicker{name="name",flag="esp_color_name",color=aK.Colors.Name,callback=function(aP)aK.Colors.Name=aP end}
aO:colorpicker{name="held weapon",flag="esp_color_held_weapon",color=aK.Colors.Weapon,callback=function(aP)aK.Colors.Weapon=aP end}
aO:colorpicker{name="health high",flag="esp_color_health_high",color=aK.Colors.HealthHigh,callback=function(aP)aK.Colors.HealthHigh=aP end}
aO:colorpicker{name="health low",flag="esp_color_health_low",color=aK.Colors.HealthLow,callback=function(aP)aK.Colors.HealthLow=aP end}


local aP=c
local aQ=h
local aR=b
local aS=aP.CurrentCamera
local aT=(gethui and gethui())or j

if getgenv().priv9_esp_controller and getgenv().priv9_esp_controller.unload then
pcall(getgenv().priv9_esp_controller.unload)
end

local aU={
{"Head","UpperTorso"},
{"UpperTorso","LowerTorso"},
{"UpperTorso","LeftUpperArm"},
{"UpperTorso","RightUpperArm"},
{"LeftUpperArm","LeftLowerArm"},
{"RightUpperArm","RightLowerArm"},
{"LowerTorso","LeftUpperLeg"},
{"LowerTorso","RightUpperLeg"},
{"LeftUpperLeg","LeftLowerLeg"},
{"RightUpperLeg","RightLowerLeg"},
}

local aV={
objects={},
connections={},
}

aV.gui=Instance.new"ScreenGui"
aV.gui.Name="\0"
aV.gui.IgnoreGuiInset=true
aV.gui.ResetOnSpawn=false
aV.gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
aV.gui.DisplayOrder=0
aV.gui.Parent=aT

local function set_visible(aW,aX,aY)
if aW._visible==aX and aW._menu_open==aY then
return
end

aW._visible=aX
aW._menu_open=aY

aW.holder.Visible=aX
local aZ=aX and aK.Boxes
for a_,a0 in aW.box_segments do
a0.Visible=aZ
end
aW.health_holder.Visible=aX and aK.Healthbars
aW.health_text.Visible=aX and aK.HealthNumber
aW.weapon.Visible=aX and aK.HeldWeapon
aW.display_name.Visible=aX and aK.DisplayName
aW.name.Visible=aX and(aK.Name or aK.Team)

local a_=aX and aK.Skeletons and not aY
for a0,a1 in aW.skeleton do
a1.Visible=a_
end
end

local function is_player_valid(aW)
return aW and aW.Parent==b
end

local function create_player_esp(aW)
if aW==E or not is_player_valid(aW)or aV.objects[aW]then
return
end

local aX=Instance.new"Frame"
aX.Name="\0"
aX.BackgroundTransparency=1
aX.BorderSizePixel=0
aX.Size=n(0,0,0,0)
aX.Visible=false
aX.Parent=aV.gui

local aY=Instance.new"Frame"
aY.Name="\0"
aY.BackgroundTransparency=1
aY.BorderSizePixel=0
aY.Position=n(0,0,0,0)
aY.Size=n(1,0,1,0)
aY.Parent=aX

local aZ={}
for a_=1,4 do
local a0=Instance.new"Frame"
a0.Name="\0"
a0.BorderSizePixel=0
a0.BackgroundColor3=w(0,0,0)
a0.ZIndex=1
a0.Visible=false
a0.Parent=aY
aZ[#aZ+1]=a0

local a1=Instance.new"Frame"
a1.Name="\0"
a1.BorderSizePixel=0
a1.BackgroundColor3=aK.Colors.Box
a1.ZIndex=2
a1.Visible=false
a1.Parent=aY
aZ[#aZ+1]=a1
end

local a_=Instance.new"Frame"
a_.Name="\0"
a_.BorderSizePixel=0
a_.BackgroundColor3=w(0,0,0)
a_.BackgroundTransparency=0
a_.AnchorPoint=l(0,0)

a_.Position=n(0,-8,0,-1)
a_.Size=n(0,4,1,2)
a_.Parent=aX

local a0=Instance.new"UIStroke"
a0.Parent=a_
a0.Color=w(0,0,0)
a0.Thickness=0.1

local a1=Instance.new"Frame"
a1.Name="\0"
a1.BorderSizePixel=0
a1.BackgroundColor3=aK.Colors.HealthHigh
a1.Position=n(0,1,0,1)
a1.Size=n(1,-2,1,-2)
a1.Parent=a_

local a2=Instance.new"TextLabel"
a2.Name="\0"
a2.BackgroundTransparency=1
a2.TextStrokeTransparency=0
a2.TextXAlignment=Enum.TextXAlignment.Right
a2.AutomaticSize=Enum.AutomaticSize.None
a2.TextScaled=false
a2.FontFace=ad.ProggyTiny
a2.TextSize=9
a2.TextColor3=aK.Colors.HealthHigh

a2.Size=n(0,40,0,12)
a2.Position=n(0,-50,0,-3)
a2.AnchorPoint=l(0,0)
a2.Parent=aX

local a3=Instance.new"TextLabel"
a3.Name="\0"
a3.BackgroundTransparency=1
a3.TextStrokeTransparency=0
a3.TextXAlignment=Enum.TextXAlignment.Left
a3.AutomaticSize=Enum.AutomaticSize.Y
a3.TextScaled=false
a3.FontFace=ad.ProggyTiny
a3.TextSize=9
a3.TextColor3=aK.Colors.DisplayName
a3.Position=n(1,4,0,0)
a3.AnchorPoint=l(0,0)
a3.Parent=aX

local a4=Instance.new"TextLabel"
a4.Name="\0"
a4.BackgroundTransparency=1
a4.RichText=true
a4.TextStrokeTransparency=0
a4.TextXAlignment=Enum.TextXAlignment.Center
a4.AutomaticSize=Enum.AutomaticSize.Y
a4.TextScaled=false
a4.FontFace=ad.ProggyTiny
a4.TextSize=9
a4.TextColor3=w(255,255,255)
a4.Position=n(0.5,0,0,-5)
a4.AnchorPoint=l(0.5,1)
a4.Parent=aX

local a5=Instance.new"TextLabel"
a5.Name="\0"
a5.BackgroundTransparency=1
a5.TextStrokeTransparency=0
a5.TextXAlignment=Enum.TextXAlignment.Center
a5.AutomaticSize=Enum.AutomaticSize.Y
a5.TextScaled=false
a5.FontFace=ad.ProggyTiny
a5.TextSize=9
a5.TextColor3=aK.Colors.Weapon
a5.Position=n(0.5,0,1,2)
a5.AnchorPoint=l(0.5,0)
a5.Parent=aX

local a6={}
for a7=1,#aU do
local a8=Drawing.new"Line"
a8.Thickness=1
a8.Color=aK.Colors.Skeleton
a8.Visible=false
a6[a7]=a8
end

local a7=Instance.new"Highlight"
a7.Name="\0"
a7.Parent=aP
a7.Adornee=nil
a7.Enabled=false
a7.FillColor=aK.Chams.Colors.Inside.Color
a7.FillTransparency=aK.Chams.Colors.Inside.Transparency or 0
a7.OutlineColor=aK.Chams.Colors.Outline.Color
a7.OutlineTransparency=aK.Chams.Colors.Outline.Transparency or 0
a7.DepthMode=aK.Chams.Mode=="ontop"and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded

aV.objects[aW]={
holder=aX,
box_handler=aY,
box_segments=aZ,
highlight=a7,
health_holder=a_,
health_fill=a1,
health_text=a2,
display_name=a3,
name=a4,
weapon=a5,
skeleton=a6,
}
end

local function remove_player_esp(aW)
local aX=aV.objects[aW]
if not aX then
return
end

for aY,aZ in aX.skeleton do
aZ:Remove()
end

if aX.highlight then
pcall(function()aX.highlight:Destroy()end)
end

aX.holder:Destroy()
aV.objects[aW]=nil
end

local function update_player_esp(aW,aX)
local aY=aK
if not aY.Targets.Enabled then
set_visible(aX,false)
return
end

local aZ=aW.Character
if not aZ then
set_visible(aX,false)
return
end

local a_=aZ:FindFirstChildOfClass"Humanoid"
local a0=get_root_part(aZ)
if not(a_ and a0)or a_.Health<=0 then
set_visible(aX,false)
return
end

local a1=aW.Team==E.Team
if(a1 and not aY.Targets.Team)or(not a1 and not aY.Targets.Enemy)then
set_visible(aX,false)
return
end

local a2=aS
if not a2 then
set_visible(aX,false)
return
end

local a3=a2.CFrame.UpVector
local a4=a0.Position+(a0.CFrame.UpVector*1.8)+a3
local a5=a0.Position-(a0.CFrame.UpVector*2.5)-a3

local a6,a7=a2:WorldToViewportPoint(a4)
local a8,a9=a2:WorldToViewportPoint(a5)
if not(a7 and a9 and a6.Z>0 and a8.Z>0)then
set_visible(aX,false)
return
end

local ba=l(a6.X,a6.Y)
local bb=l(a8.X,a8.Y)

local bc=H(I(K(ba.X-bb.X)),3)
local bd=H(I(H(K(bb.Y-ba.Y),bc/2)),3)
local be=H(I(bd/1.5),bc)
local bf=I((ba.X+bb.X)*0.5-be*0.5)
local bg=I(J(ba.Y,bb.Y))

aX.holder.Position=u(bf,bg)
aX.holder.Size=u(be,bd)

local bh=aX.box_segments
local bi=aY.Colors.Box

bh[1].Position=u(0,0)
bh[1].Size=u(be,1)

bh[2].BackgroundColor3=bi
bh[2].Position=u(0,0)
bh[2].Size=u(be,1)

bh[3].Position=u(0,bd-1)
bh[3].Size=u(be,1)

bh[4].BackgroundColor3=bi
bh[4].Position=u(0,bd-1)
bh[4].Size=u(be,1)

bh[5].Position=u(0,0)
bh[5].Size=u(1,bd)

bh[6].BackgroundColor3=bi
bh[6].Position=u(0,0)
bh[6].Size=u(1,bd)

bh[7].Position=u(be-1,0)
bh[7].Size=u(1,bd)

bh[8].BackgroundColor3=bi
bh[8].Position=u(be-1,0)
bh[8].Size=u(1,bd)

local bj=aX.display_name
local bk=aX.name
local bl=aX.weapon

bj.TextColor3=aY.Colors.DisplayName
bk.TextColor3=w(255,255,255)
bl.TextColor3=aY.Colors.Weapon

bj.Text=aW.DisplayName

local bm=""
if aY.Team then
local bn=aW.Team and aW.Team.Name or""
local bo=(aW.Team and aW.Team.TeamColor.Color)or w(255,255,255)
local bp=string.format("%02X%02X%02X",I(bo.R*255),I(bo.G*255),I(bo.B*255))
bm=string.format("<font color='#%s'>%s</font>",bp,bn)
end

local bn=aY.Name and aW.Name or nil
local bo=string.format("%02X%02X%02X",I(aY.Colors.Name.R*255),I(aY.Colors.Name.G*255),I(aY.Colors.Name.B*255))

if bm~=""and bn then
bk.Text=bm..string.format("<font color='#%s'>:%s</font>",bo,bn)
elseif bm~=""then
bk.Text=bm
elseif bn then
bk.Text=string.format("<font color='#%s'>%s</font>",bo,bn)
else
bk.Text=""
end

local bp=aZ:FindFirstChildOfClass"Tool"
bl.Text=bp and bp.Name or"none"

local bq=a_.Health
local br=bq==bq

if br then
local bs=a_.MaxHealth>0 and U(bq/a_.MaxHealth,0,1)or 0
aX.health_displayed_ratio=aX.health_displayed_ratio and library.lerp(aX.health_displayed_ratio,bs,0.15)or bs

aX.health_fill.Size=n(1,-2,aX.health_displayed_ratio,-2)
aX.health_fill.Position=n(0,1,1-aX.health_displayed_ratio,1)
aX.health_fill.BackgroundColor3=aY.Colors.HealthLow:Lerp(aY.Colors.HealthHigh,bs)

local bt=H(0,I(bq))
aX.displayed_hp=aX.displayed_hp and library.lerp(aX.displayed_hp,bt,0.15)or bt
aX.health_text.Text=tostring(I(aX.displayed_hp+0.5))
aX.health_text.TextColor3=aY.Colors.HealthLow:Lerp(aY.Colors.HealthHigh,bs)
aX.health_holder.Visible=aK.Healthbars
aX.health_text.Visible=aK.HealthNumber
else
aX.health_holder.Visible=false
aX.health_text.Visible=false
end

local bs=aY.Skeletons and not(ak and ak.main_outline and ak.main_outline.Visible)
for bt,bu in ipairs(aU)do
local bv=aX.skeleton[bt]
local bw=aZ:FindFirstChild(bu[1])
local bx=aZ:FindFirstChild(bu[2])

if bs and bw and bx then
local by,bz=a2:WorldToViewportPoint(bw.Position)
local bA,bB=a2:WorldToViewportPoint(bx.Position)

if bz and bB and by.Z>0 and bA.Z>0 then
bv.Visible=true
bv.Color=aY.Colors.Skeleton
bv.From=l(by.X,by.Y)
bv.To=l(bA.X,bA.Y)
else
bv.Visible=false
end
else
bv.Visible=false
end
end

if aX.highlight then
local bt=aX.highlight
local bu=aY.Chams
if bt.Adornee~=aZ then
bt.Adornee=aZ
end
bt.Enabled=bu.Enabled
bt.FillColor=bu.Colors.Inside.Color
bt.FillTransparency=bu.Colors.Inside.Transparency or 0
bt.OutlineColor=bu.Colors.Outline.Color
bt.OutlineTransparency=bu.Colors.Outline.Transparency or 0
bt.DepthMode=bu.Mode=="ontop"and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
end

if not aX.esp_started then
aX.esp_started=true
print("ESP started for player: "..aW.Name)
end

set_visible(aX,true,menu_open)
end

for aW,aX in aR:GetPlayers()do
create_player_esp(aX)
end

aV.connections[#aV.connections+1]=aR.PlayerAdded:Connect(function(aW)
create_player_esp(aW)
end)

aV.connections[#aV.connections+1]=aR.PlayerRemoving:Connect(function(aW)
remove_player_esp(aW)
end)

aV.connections[#aV.connections+1]=aQ.RenderStepped:Connect(function()
aS=aP.CurrentCamera
local aW=ak and ak.main_outline and ak.main_outline.Visible
local aX=aK.Targets.Enabled
for aY,aZ in next,aV.objects do
if not is_player_valid(aY)then
remove_player_esp(aY)
elseif aX then
update_player_esp(aY,aZ,aW)
else
set_visible(aZ,false,aW)
end
end
end)

function aV.unload()
for aW,aX in aV.connections do
aX:Disconnect()
end

for aW in aV.objects do
remove_player_esp(aW)
end

if aV.gui then
aV.gui:Destroy()
end
end

getgenv().priv9_esp_controller=aV
af:create_notification{name="might lag for a sec, loading esp"}
library:init_config(ak)