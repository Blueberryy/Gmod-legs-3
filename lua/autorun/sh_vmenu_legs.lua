--[[ 
    GMOD LEGS 3.8.5
    @Valkyrie, @blackops7799
    
    Leg Settings
]]--

if (SERVER) then
    AddCSLuaFile( "sh_vmenu_legs.lua" )
end

if (CLIENT) then
	hook.Add( "GetVMenuTabs", "GMLTabs", function(parent, tabs) 

		local optionsmenu = vgui.Create( "DScrollPanel", parent )
		optionsmenu:SetPadding(20)
		 
		local options = vgui.Create("DLabel", optionsmenu)
		options:SetText("#gml3_settings")
		options:SetTextColor(Color(255,255,255))
		options:Dock( TOP )
		options:SetFont("coolvetica30")
		options:SizeToContents()
		
		local options = vgui.Create("DCheckBoxLabel", optionsmenu)
		options:SetText("#gml3_option")
		options:SetTextColor(Color(0,0,0))
		options:Dock( TOP )
		options:SetConVar( "cl_legs" )
		options:SizeToContents()
		 
		local options = vgui.Create("DCheckBoxLabel", optionsmenu)
		options:SetText("#gml3_option2")
		options:SetTextColor(Color(0,0,0))
		options:Dock( TOP )
		options:SetConVar( "cl_vehlegs" )
		options:SizeToContents() 
		
		local options = vgui.Create("DLabel", optionsmenu)
		options:SetText("#gml3_credits")
		options:SetTextColor(Color(255,255,255))
		options:Dock( TOP )
		options:SetFont("coolvetica30")
		options:SizeToContents()
		
		local options = vgui.Create("DLabel", optionsmenu)
		options:SetText("#gml3_credits_text")
		options:SetTextColor(Color(0,0,0))
		options:Dock( TOP )
		options:SizeToContents()
				
		local options = vgui.Create("DLabel", optionsmenu)
		options:SetText("\n Changelog (version " ..  g_LegsVer .. ")")
		options:SetTextColor(Color(255,255,255))
		options:Dock( TOP )
		options:SetFont("coolvetica30")
		options:SizeToContents()
		
		local options = vgui.Create("DLabel", optionsmenu)
		options:SetText(g_LegsLog)
		options:SetTextColor(Color(0,0,0))
		options:Dock( TOP )
		options:SizeToContents()
		
		tabs:AddSheet("Gmod Legs " .. g_LegsVer, optionsmenu, "icon16/wrench.png"   )
	end)
end