local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/179treehouse/store/main/priv9/Library.lua"))()

local window = library:window({
    name = "priv9.net | rust [external]",
})

local rage = window:tab({name = "aimbot"})
local aimbot_left = rage:column({})
local section_aim = aimbot_left:section({name = "aimbot", auto_fill = false, size = 0.3})
local section_target = aimbot_left:section({name = "target selection", auto_fill = true, size = 0.7})

section_aim:toggle({name = "enabled", flag = "aimbot_enabled", default = false})
section_aim:keybind({name = "aim key", flag = "aim_key", key = Enum.UserInputType.MouseButton2, mode = "Hold", visualize_toggle = "aimbot_enabled"})
section_aim:toggle({name = "silent", flag = "aimbot_silent", default = false})
section_aim:slider({name = "smooth", flag = "aimbot_smooth", min = 0, max = 10, default = 1, interval = 0.1, suffix = ""})

section_target:toggle({name = "target team", flag = "aimbot_target_team", default = false})
section_target:dropdown({name = "hitbox", flag = "aimbot_hitbox", items = {"head", "body"}, default = "body"})
section_target:slider({name = "fov", flag = "aimbot_fov", min = 0, max = 360, default = 40, interval = 1, suffix = ""})
section_target:slider({name = "max distance", flag = "aimbot_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})

local aimbot_right = rage:column({})
local section_weapon = aimbot_right:section({name = "weapon modifications"})
section_weapon:slider({name = "recoil multiplier", min = 0, max = 1, default = 1, interval = 0.01, suffix = ""})
section_weapon:toggle({name = "no spread", flag = "no_spread", default = false})

local section_other = aimbot_right:section({name = "other", auto_fill = true})

local visuals_tab = window:tab({name = "visuals"})
local visuals_left = visuals_tab:column({})
local visuals_center = visuals_tab:column({})
local visuals_right = visuals_tab:column({})

local selection_section = visuals_left:section({name = "selection", size = 1, default = true})
local selection_inner = library:create_visuals_selection(selection_section)
library:apply_theme(selection_section.frame, tostring(selection_section.count), "BackgroundColor3")

local visuals_pages = {}
local pages = {
    {id = "player", label = "player", center_label = "filters (player)", right_label = "options (player)"},
    {id = "scientist", label = "scientist", center_label = "scientist section 1", right_label = "scientist section 2"},
    {id = "lootable", label = "lootable", center_label = "lootable section 1", right_label = "lootable section 2"},
    {id = "dropped items", label = "dropped items", center_label = "dropped items section 1", right_label = "dropped items section 2"},
    {id = "deployable", label = "deployable", center_label = "deployable section 1", right_label = "deployable section 2"},
    {id = "objectives", label = "objectives", center_label = "objectives section 1", right_label = "objectives section 2"},
    {id = "misc", label = "misc", center_label = "misc section 1", right_label = "misc section 2"},
}

for _, page in next, pages do
    local page_data = library:create_visuals_page(visuals_center, visuals_right, page)
    local page_entry = library:register_visuals_page(page.id, page.label, page_data.center, page_data.right)
    visuals_pages[page.id] = page_entry
end

do
    local p = visuals_pages["player"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "player_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "player_enabled", default = true})
        c:toggle({name = "teammates", flag = "player_teammates", default = false})
        c:toggle({name = "sleepers", flag = "player_sleepers", default = false})
        c:toggle({name = "downed", flag = "player_downed", default = true})

        r:toggle({name = "box", flag = "player_box", default = true})
        r:toggle({name = "skeleton", flag = "player_skeleton", default = true})
        r:colorpicker({name = "box/skel color", flag = "player_box_color", color = Color3.fromRGB(255, 255, 255)})
        r:toggle({name = "health bar", flag = "player_health", default = true})
        r:toggle({name = "name", flag = "player_name", default = true})
        r:colorpicker({name = "text color", flag = "player_text_color", color = Color3.fromRGB(255, 255, 255)})
        r:toggle({name = "weapon", flag = "player_weapon", default = false})
        r:toggle({name = "distance", flag = "player_distance", default = false})
        r:toggle({name = "flags", flag = "player_flags", default = false})
        r:toggle({name = "belt", flag = "player_belt", default = false})
        r:toggle({name = "offscreen arrow", flag = "player_offscreen", default = false})
        r:colorpicker({name = "offscreen color", flag = "player_offscreen_color", color = Color3.fromRGB(255, 255, 255)})
        r:dropdown({name = "model", flag = "player_model", items = {"off", "flat", "shaded"}, default = "off"})
    end
end

do
    local p = visuals_pages["scientist"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "scientist_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "scientist_enabled", default = false})
        c:toggle({name = "visible check", flag = "scientist_vischeck", default = false})

        r:toggle({name = "box", flag = "scientist_box", default = false})
        r:toggle({name = "name", flag = "scientist_name", default = false})
        r:toggle({name = "health bar", flag = "scientist_health", default = false})
    end
end

do
    local p = visuals_pages["lootable"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "lootable_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "lootable_enabled", default = false})

        r:toggle({name = "name", flag = "lootable_name", default = false})
        r:toggle({name = "distance", flag = "lootable_distance", default = false})
    end
end

do
    local p = visuals_pages["dropped items"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "dropped_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "dropped_enabled", default = false})

        r:toggle({name = "name", flag = "dropped_name", default = false})
        r:toggle({name = "distance", flag = "dropped_distance", default = false})
    end
end

do
    local p = visuals_pages["deployable"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "deployable_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "deployable_enabled", default = false})

        r:toggle({name = "name", flag = "deployable_name", default = false})
        r:toggle({name = "distance", flag = "deployable_distance", default = false})
    end
end

do
    local p = visuals_pages["objectives"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:slider({name = "max distance", flag = "objectives_max_distance", min = 0, max = 5000, default = 0, interval = 1, suffix = ""})
        c:toggle({name = "enabled", flag = "objectives_enabled", default = false})

        r:toggle({name = "name", flag = "objectives_name", default = false})
        r:toggle({name = "distance", flag = "objectives_distance", default = false})
    end
end

do
    local p = visuals_pages["misc"]
    if p and p.center and p.right then
        local c = p.center
        local r = p.right

        c:dropdown({name = "font", flag = "esp_font", items = {"Tahoma", "ProggyClean", "SmallestPixel"}, default = "Tahoma"})
        c:slider({name = "text size", flag = "esp_text_size", min = 10, max = 18, default = 13, interval = 1, suffix = ""})

        r:toggle({name = "fade esp", flag = "esp_fade_enabled", default = true, folding = true})
        r:slider({name = "duration", flag = "esp_fade_duration", min = 1, max = 5, default = 1, interval = 1, suffix = "s"})
        r:toggle({name = "keybinds draggable", flag = "keybind_draggable", default = false})
    end
end

local misc_tab = window:tab({name = "misc"})
local misc_left = misc_tab:column({})
local misc_center = misc_tab:column({})
local misc_right = misc_tab:column({})

local section_misc = misc_left:section({name = "misc", size = 1, default = true})
section_misc:toggle({name = "fullbright", flag = "fullbright", default = false})
section_misc:toggle({name = "freecam", flag = "freecam", default = false})
section_misc:dropdown({name = "fov circle", flag = "fov_circle", items = {"off", "circle"}, default = "off"})
section_misc:colorpicker({name = "fov color", flag = "fov_color", color = Color3.fromRGB(75, 136, 174)})
section_misc:colorpicker({name = "fov gradient", flag = "fov_gradient", color = Color3.fromRGB(30, 100, 83)})
section_misc:colorpicker({name = "text outlines", flag = "text_outlines_color", color = Color3.fromRGB(75, 136, 174)})

local section_move = misc_left:section({name = "movement", size = 1, default = true, auto_fill = true})
section_move:dropdown({name = "spiderman", flag = "spiderman", items = {"none", "v1", "v2"}, default = "none"})

local section_radar = misc_center:section({name = "radar", size = 1, default = true})
section_radar:toggle({name = "enabled", flag = "radar_enabled", default = false})
section_radar:slider({name = "range", flag = "radar_range", min = 50, max = 1000, default = 200, interval = 10, suffix = ""})
section_radar:toggle({name = "players", flag = "radar_players", default = false})
section_radar:toggle({name = "scientists", flag = "radar_scientists", default = false})
section_radar:toggle({name = "loot", flag = "radar_loot", default = false})

local section_fov = misc_center:section({name = "fov changer", size = 1, auto_fill = true})
section_fov:toggle({name = "enabled", flag = "fov_changer_enabled", default = false})
section_fov:slider({name = "amount", flag = "fov_changer_amount", min = 60, max = 120, default = 90, interval = 1, suffix = ""})
section_fov:keybind({name = "zoom key", flag = "zoom_key", key = Enum.KeyCode.Unknown, mode = "Hold"})
section_fov:slider({name = "zoom amount", flag = "zoom_amount", min = 10, max = 100, default = 60, interval = 1, suffix = ""})

local section_config = misc_right:section({name = "config", size = 1, default = true})
section_config:keybind({name = "menu key", flag = "menu_key", key = Enum.KeyCode.Insert, mode = "toggle", force_toggle = true, ignore = true})
section_config:dropdown({name = "config", flag = "config_name_list", items = {"alpha", "default"}, default = "alpha"})
section_config:button({name = "save config", callback = function() end})
section_config:button({name = "load config", callback = function() end})
section_config:button({name = "open config folder", callback = function() end})
section_config:toggle({name = "low preformance", flag = "low_performance", default = false})

local section_theme = misc_right:section({name = "theme", size = 1, default = true})

local custom_picker_1, custom_picker_2, custom_picker_3, secret_watermark

section_theme:dropdown({
    name = "theme",
    flag = "theme",
    items = {"morytania", "ancient", "new", "dark", "custom", "secret"},
    whitelist = {"morytania", "ancient", "new", "dark", "custom", "secret"},
    default = "morytania",
    callback = function(value)
        if custom_picker_1 then
            custom_picker_1.frame.Visible = value == "custom"
            custom_picker_2.frame.Visible = value == "custom"
            custom_picker_3.frame.Visible = value == "custom"
            if secret_watermark then
                secret_watermark.frame.Visible = value == "secret"
            end

            if value == "custom" then
                custom_picker_1.set(library.themes.preset["1"])
                custom_picker_2.set(library.themes.preset["2"])
                custom_picker_3.set(library.themes.preset["3"])
            end
        end

        library:set_theme(value)
    end,
})

custom_picker_1 = section_theme:colorpicker({
    name = "1",
    flag = "custom_1",
    color = library.themes.preset["1"],
    callback = function(color)
        library:update_theme("1", color)
        library:refresh_theme_gradient()
    end,
})
custom_picker_2 = section_theme:colorpicker({
    name = "2",
    flag = "custom_2",
    color = library.themes.preset["2"],
    callback = function(color)
        library:update_theme("2", color)
        library:refresh_theme_gradient()
    end,
})
custom_picker_3 = section_theme:colorpicker({
    name = "3",
    flag = "custom_3",
    color = library.themes.preset["3"],
    callback = function(color)
        library:update_theme("3", color)
        library:refresh_theme_gradient()
    end,
})

secret_watermark = section_theme:dropdown({
    name = "watermark",
    flag = "secret_watermark",
    items = {"name", "date", "fps", "ping", "memory", "draggable"},
    multi = true,
    default = {"name", "date", "fps"},
    callback = function(selected)
        if type(selected) == "table" and not table.find(selected, "draggable") and library.watermark_outline then
            library.watermark_outline.Position = UDim2.new(0, 18, 0, 0)
        end
    end,
})

custom_picker_1.frame.Visible = false
custom_picker_2.frame.Visible = false
custom_picker_3.frame.Visible = false
secret_watermark.frame.Visible = false

local section_overlay = misc_right:section({name = "overlay", size = 1, default = true, auto_fill = true})
section_overlay:toggle({name = "vsync", flag = "vsync", default = false})
section_overlay:slider({name = "unsynced delay", flag = "unsynced_delay", min = 1, max = 10, default = 2, interval = 1, suffix = ""})

library:set_visuals_page("player")
window.toggle_menu(true)
