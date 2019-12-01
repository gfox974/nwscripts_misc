// For ingame testing purposes only

#include "coreb_inc_plst"

void main()
{
    object oPC=GetLastUsedBy();
    object curSkin = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);

    checkHasSkin(oPC);
    PlaySound("as_cv_gongring3");

    struct PCState sINFOS = GetAllData(curSkin, oPC);
    SendMessageToPC(oPC,sINFOS.name);
    SendMessageToPC(oPC,sINFOS.key);
    SendMessageToPC(oPC,"level:" + IntToString(sINFOS.level));
    SendMessageToPC(oPC,"survival flag:" + IntToString(sINFOS.isActivated));
    SendMessageToPC(oPC,"hunger gauge:" + FloatToString(sINFOS.hungerLevel));
    SendMessageToPC(oPC,"thirst gauge:" + FloatToString(sINFOS.thirstLevel));
    SendMessageToPC(oPC,"exhaustion gauge:" + FloatToString(sINFOS.exhaustLevel));
}
