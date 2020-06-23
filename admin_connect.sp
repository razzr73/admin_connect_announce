#include <sourcemod>
#define PLUGIN_VERSION "0.0.3"

public Plugin:myinfo = 
{
	name = "AdminConnectmsg",
	author = "R-Hehl",
	description = "Edited by Razzr",
	version = PLUGIN_VERSION,
	url = "http://www.compactaim.de/"
};

public OnClientPostAdminCheck(client) 
{
	new AdminId:playerAdmin = GetUserAdmin(client);
	if (GetAdminFlag(playerAdmin, AdminFlag:1, AdmAccessMode:1) || IsFakeClient(client))
	{
		if (!IsFakeClient(client))
		{
			if (GetAdminFlag(playerAdmin, Admin_Root, Access_Effective))
			{
				ServerCommand("sm_hsay !!..::OwNeR iS HeRe::..!!");
				ServerCommand("sm_tsay green !!--=== OWNeR iS HeRe ===--!!");
			}
			else if (GetAdminFlag(playerAdmin, Admin_Custom2, Access_Effective))
				{
				ServerCommand("sm_hsay !!..::Elder iS HeRe::..!!");
				ServerCommand("sm_tsay cyan !!--=== Elder iS HeRe ===--!!");
				}
				else if (GetAdminFlag(playerAdmin, Admin_Custom3, Access_Effective))
				{
				ServerCommand("sm_hsay !!..::SuperAdmin iS HeRe::..!!");
				ServerCommand("sm_tsay pink !!--=== SuperAdmin iS HeRe ===--!!");
				}
				else
				{
				ServerCommand("sm_hsay !!..::Admin iS HeRe::..!!");
				ServerCommand("sm_tsay cyan !!--=== Admin iS HeRe ===--!!");
				}
			
		}
	}
}
