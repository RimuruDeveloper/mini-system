#include <a_samp>


new Text:select_skin_TD[6],
	Text:select_skin_slot[8];

new SkinPage[MAX_PLAYERS];
new bool:SelectSkinOpen[MAX_PLAYERS];
new SelectSkinClick[MAX_PLAYERS];

main()
{
	print("\n----------------------------------");
	print(" Selection-Skin-TD");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	
	
	select_skin_TD[0] = TextDrawCreate(151.6666, 160.8073, "LD_SPAC:white"); // пусто
	TextDrawTextSize(select_skin_TD[0], 64.0000, 126.0000);
	TextDrawAlignment(select_skin_TD[0], 1);
	TextDrawColor(select_skin_TD[0], -1);
	TextDrawBackgroundColor(select_skin_TD[0], 255);
	TextDrawFont(select_skin_TD[0], 4);
	TextDrawSetProportional(select_skin_TD[0], 0);
	TextDrawSetShadow(select_skin_TD[0], 0);

	select_skin_TD[1] = TextDrawCreate(199.3333, 273.6370, ""); // пусто
	TextDrawTextSize(select_skin_TD[1], 11.0000, 12.0000);
	TextDrawAlignment(select_skin_TD[1], 1);
	TextDrawColor(select_skin_TD[1], -1);
	TextDrawBackgroundColor(select_skin_TD[1], -1);
	TextDrawFont(select_skin_TD[1], 5);
	TextDrawSetProportional(select_skin_TD[1], 0);
	TextDrawSetShadow(select_skin_TD[1], 0);
	TextDrawSetSelectable(select_skin_TD[1], true);
	TextDrawSetPreviewModel(select_skin_TD[1], 19133);
	TextDrawSetPreviewRot(select_skin_TD[1], 80.0000, 90.0000, 0.0000, 1.0000);
	
	
	select_skin_TD[2] = TextDrawCreate(151.6332, 277.6666, ""); // ?????
	TextDrawTextSize(select_skin_TD[2], 11.0000, 12.0000);
	TextDrawAlignment(select_skin_TD[2], 1);
	TextDrawColor(select_skin_TD[2], -1);
	TextDrawBackgroundColor(select_skin_TD[2], -1);
	TextDrawFont(select_skin_TD[2], 5);
	TextDrawSetProportional(select_skin_TD[2], 0);
	TextDrawSetShadow(select_skin_TD[2], 0);
	TextDrawSetPreviewModel(select_skin_TD[2], 19133);
	TextDrawSetPreviewRot(select_skin_TD[2], 80.0000, -90.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_TD[2], true);
	
 	select_skin_TD[3] = TextDrawCreate(173.6666, 295.6221, "LD_SPAC:white"); // ?????
	TextDrawTextSize(select_skin_TD[3], 19.0000, 13.0000);
	TextDrawAlignment(select_skin_TD[3], 1);
	TextDrawColor(select_skin_TD[3], 16711935);
	TextDrawBackgroundColor(select_skin_TD[3], 255);
	TextDrawFont(select_skin_TD[3], 4);
	TextDrawSetProportional(select_skin_TD[3], 0);
	TextDrawSetShadow(select_skin_TD[3], 0);
	TextDrawSetSelectable(select_skin_TD[3], true);

	select_skin_TD[4] = TextDrawCreate(179.0333, 299.0815, "BUY"); // ?????
	TextDrawLetterSize(select_skin_TD[4], 0.1490, 0.6334);
	TextDrawTextSize(select_skin_TD[4], -20.0000, 0.0000);
	TextDrawAlignment(select_skin_TD[4], 1);
	TextDrawColor(select_skin_TD[4], -1);
	TextDrawBackgroundColor(select_skin_TD[4], 255);
	TextDrawFont(select_skin_TD[4], 1);
	TextDrawSetProportional(select_skin_TD[4], 1);
	TextDrawSetShadow(select_skin_TD[4], 0);
	

    select_skin_slot[0] = TextDrawCreate(152.0000, 162.4666, ""); // ?????
	TextDrawTextSize(select_skin_slot[0], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[0], 1);
	TextDrawColor(select_skin_slot[0], -1);
	TextDrawBackgroundColor(select_skin_slot[0], -1);
	TextDrawFont(select_skin_slot[0], 5);
	TextDrawSetProportional(select_skin_slot[0], 0);
	TextDrawSetShadow(select_skin_slot[0], 0);
	TextDrawSetPreviewModel(select_skin_slot[0], 0);
	TextDrawSetPreviewRot(select_skin_slot[0], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[0], true);

	select_skin_slot[1] = TextDrawCreate(188.9333, 161.8666, ""); // ?????
	TextDrawTextSize(select_skin_slot[1], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[1], 1);
	TextDrawColor(select_skin_slot[1], -1);
	TextDrawBackgroundColor(select_skin_slot[1], -1);
	TextDrawFont(select_skin_slot[1], 5);
	TextDrawSetProportional(select_skin_slot[1], 0);
	TextDrawSetShadow(select_skin_slot[1], 0);
	TextDrawSetPreviewModel(select_skin_slot[1], 0);
	TextDrawSetPreviewRot(select_skin_slot[1], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[1], true);

	select_skin_slot[2] = TextDrawCreate(191.4673, 249.8334, ""); // ?????
	TextDrawTextSize(select_skin_slot[2], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[2], 1);
	TextDrawColor(select_skin_slot[2], -1);
	TextDrawBackgroundColor(select_skin_slot[2], -1);
	TextDrawFont(select_skin_slot[2], 5);
	TextDrawSetProportional(select_skin_slot[2], 0);
	TextDrawSetShadow(select_skin_slot[2], 0);
	TextDrawSetPreviewModel(select_skin_slot[2], 0);
	TextDrawSetPreviewRot(select_skin_slot[2], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[2], true);

	select_skin_slot[3] = TextDrawCreate(154.8340, 250.6631, ""); // ?????
	TextDrawTextSize(select_skin_slot[3], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[3], 1);
	TextDrawColor(select_skin_slot[3], -1);
	TextDrawBackgroundColor(select_skin_slot[3], -1);
	TextDrawFont(select_skin_slot[3], 5);
	TextDrawSetProportional(select_skin_slot[3], 0);
	TextDrawSetShadow(select_skin_slot[3], 0);
	TextDrawSetPreviewModel(select_skin_slot[3], 0);
	TextDrawSetPreviewRot(select_skin_slot[3], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[3], true);

	select_skin_slot[4] = TextDrawCreate(190.0004, 194.5222, ""); // ?????
	TextDrawTextSize(select_skin_slot[4], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[4], 1);
	TextDrawColor(select_skin_slot[4], -1);
	TextDrawBackgroundColor(select_skin_slot[4], -1);
	TextDrawFont(select_skin_slot[4], 5);
	TextDrawSetProportional(select_skin_slot[4], 0);
	TextDrawSetShadow(select_skin_slot[4], 0);
	TextDrawSetPreviewModel(select_skin_slot[4], 0);
	TextDrawSetPreviewRot(select_skin_slot[4], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[4], true);

	select_skin_slot[5] = TextDrawCreate(153.3338, 192.0333, ""); // ?????
	TextDrawTextSize(select_skin_slot[5], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[5], 1);
	TextDrawColor(select_skin_slot[5], -1);
	TextDrawBackgroundColor(select_skin_slot[5], -1);
	TextDrawFont(select_skin_slot[5], 5);
	TextDrawSetProportional(select_skin_slot[5], 0);
	TextDrawSetShadow(select_skin_slot[5], 0);
	TextDrawSetPreviewModel(select_skin_slot[5], 0);
	TextDrawSetPreviewRot(select_skin_slot[5], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[5], true);

	select_skin_slot[6] = TextDrawCreate(154.2671, 221.8851, ""); // ?????
	TextDrawTextSize(select_skin_slot[6], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[6], 1);
	TextDrawColor(select_skin_slot[6], -1);
	TextDrawBackgroundColor(select_skin_slot[6], -1);
	TextDrawFont(select_skin_slot[6], 5);
	TextDrawSetProportional(select_skin_slot[6], 0);
	TextDrawSetShadow(select_skin_slot[6], 0);
	TextDrawSetPreviewModel(select_skin_slot[6], 0);
	TextDrawSetPreviewRot(select_skin_slot[6], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[6], true);

	select_skin_slot[7] = TextDrawCreate(190.5005, 221.9556, ""); // ?????
	TextDrawTextSize(select_skin_slot[7], 23.0000, 23.0000);
	TextDrawAlignment(select_skin_slot[7], 1);
	TextDrawColor(select_skin_slot[7], -1);
	TextDrawBackgroundColor(select_skin_slot[7], -1);
	TextDrawFont(select_skin_slot[7], 5);
	TextDrawSetProportional(select_skin_slot[7], 0);
	TextDrawSetShadow(select_skin_slot[7], 0);
	TextDrawSetPreviewModel(select_skin_slot[7], 0);
	TextDrawSetPreviewRot(select_skin_slot[7], 0.0000, 0.0000, 0.0000, 1.0000);
	TextDrawSetSelectable(select_skin_slot[7], true);

	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
    SelectSkinClick[playerid] = -1;
	GivePlayerMoney(playerid, 1000000000);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

#define SKIN_COUNT_LIST_ARRAY       8
new gSkinIDBuyArray[5][SKIN_COUNT_LIST_ARRAY] = {
	{12, 24, 300, 122, 33, 22, 45, 75},
	{9, 10, 200, 12, 89, 14, 15, 76},
	{17, 156, 19, 213, 45, 221, 222, 123},
	{301, 200, 195, 28, 29, 30, 31, 134},
	{129, 108, 35, 139, 145, 38, 39, 156}
};
new gSkinPriceBuyArray[5][SKIN_COUNT_LIST_ARRAY] = {
	{25000, 24000, 22000, 21000, 5000, 9000, 21212, 4444},
	{9000, 12312, 2222, 3333, 89321, 25500, 23231, 35000},
	{36000, 37000, 38000, 39000, 40000, 45000, 48000, 49000},
	{50000, 54000, 50500, 55000, 56000, 57000, 58000, 59000},
	{62222, 63000, 64000, 65000, 66000, 67000, 68000, 69000}
};

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/select", cmdtext, true, 10) == 0)
	{
		SelectBuySkin(playerid);
		return true;
	}
	return 0;
}

stock SelectBuySkin(playerid)
{
	if(SelectSkinOpen[playerid]) return false;
    SkinPage[playerid] = 1;
	for(new i; i < sizeof(select_skin_TD); i++) TextDrawShowForPlayer(playerid, select_skin_TD[i]);
	for(new i; i < SKIN_COUNT_LIST_ARRAY; i++) TextDrawSetPreviewModel(select_skin_slot[i], gSkinIDBuyArray[SkinPage[playerid] - 1][i]);
	for(new i; i < sizeof(select_skin_slot); i++) TextDrawShowForPlayer(playerid, select_skin_slot[i]);
	
	SelectSkinOpen[playerid] = true;
	
	SelectTextDraw(playerid, -16776961);
	return true;
}

stock SelectBuySkinClose(playerid)
{
    if(!SelectSkinOpen[playerid]) return false;
	SelectSkinOpen[playerid] = false;
    SkinPage[playerid] = -1;
    SelectSkinClick[playerid] = -1;
    for(new i; i < sizeof(select_skin_TD); i++) TextDrawHideForPlayer(playerid, select_skin_TD[i]);
	for(new i; i < sizeof(select_skin_slot); i++) TextDrawHideForPlayer(playerid, select_skin_slot[i]);
	CancelSelectTextDraw(playerid);
	return true;
}

stock SkinBuyListTransition(playerid, bool:where)
{
    if(!SelectSkinOpen[playerid]) return false;
	if(where)   // Вперёд
	{
		if(SkinPage[playerid] >= sizeof(gSkinIDBuyArray)) return false;
		SkinPage[playerid] += 1;
		UpdateSelectSkinSlot(playerid);
	}
	else        // Назад
	{
	    if(SkinPage[playerid] == 1) return false;
	    SkinPage[playerid] -= 1;
	    UpdateSelectSkinSlot(playerid);
	}
	return true;
}

stock UpdateSelectSkinSlot(playerid)
{
    if(!SelectSkinOpen[playerid]) return false;
    for(new i; i < SKIN_COUNT_LIST_ARRAY; i++)
	{
		TextDrawSetPreviewModel(select_skin_slot[i], gSkinIDBuyArray[SkinPage[playerid] - 1][i]);
		
		if(SelectSkinClick[playerid] == i)
		{
			UpdateBGSelectSkinSlot(playerid, i, false);
			SelectSkinClick[playerid] = -1;
		}
		TextDrawShowForPlayer(playerid, select_skin_slot[i]);
	}
	return true;
}
stock UpdateBGSelectSkinSlot(playerid, slot, bool:where)
{
    if(!SelectSkinOpen[playerid]) return false;
	if(where) TextDrawBackgroundColor(select_skin_slot[slot], -16776961);
	else TextDrawBackgroundColor(select_skin_slot[slot], -1);
	TextDrawShowForPlayer(playerid, select_skin_slot[slot]);
	return true;
}
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	if(clickedid == Text:INVALID_TEXT_DRAW)
	{
		if(SelectSkinOpen[playerid])
		{
		    SendClientMessage(playerid, -1, "Close");
			SelectBuySkinClose(playerid);
   		}
	    return true;
	}
	if(SelectSkinOpen[playerid])
	{
	 	if(clickedid == select_skin_TD[2])
		{
			SendClientMessage(playerid, -1, "Back");
			SkinBuyListTransition(playerid, false); // Back
		}
		else if(clickedid == select_skin_TD[1])
		{
		    SendClientMessage(playerid, -1, "Next");
			SkinBuyListTransition(playerid, true); // Next
		}

		for(new i; i < sizeof(select_skin_slot); i++)
		{
			if(clickedid == select_skin_slot[i])
			{
			    if(SelectSkinClick[playerid] != -1)
			    {
			        if(SelectSkinClick[playerid] == i) return SendClientMessage(playerid, -1, "Вы уже выбрали этот скин!");
					UpdateBGSelectSkinSlot(playerid, SelectSkinClick[playerid], false);
			        SelectSkinClick[playerid] = i;
			        UpdateBGSelectSkinSlot(playerid, i, true);
			    }
			    else
				{
				    SelectSkinClick[playerid] = i;
				    UpdateBGSelectSkinSlot(playerid, i, true);
				}
			}
		}
		if(clickedid == select_skin_TD[3]) // Buy
		{

		    if(SelectSkinClick[playerid] == -1) return SendClientMessage(playerid, -1, "Вы ничего не выбрали!");
			new priceskin = gSkinPriceBuyArray[SkinPage[playerid] - 1][SelectSkinClick[playerid]];
			if(GetPlayerMoney(playerid) < priceskin) return SendClientMessage(playerid, -1, "У вас нехватает денег!");
			GivePlayerMoney(playerid, priceskin);
			SetPlayerSkin(playerid, gSkinIDBuyArray[SkinPage[playerid] - 1][SelectSkinClick[playerid]]);
			
			new str[30 - 2 + 10];
			format(str, sizeof(str), "С покупкой! С вас списано: %d$", priceskin);
			SendClientMessage(playerid, -1, str);
			SelectBuySkinClose(playerid);
		}
	}
	return true;
}
