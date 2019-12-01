/*
//::///////////////////////////////////////////////
//:: functions lib used for the player states part
//:: coreb_inc_plst
//:: Created By: J.nosmas
//:: Created On: Dec 01st, 2019
//:: Last Update: Dec 01st, 2019
//:://////////////////////////////////////////////
*/

// creature skin slot verification
void checkHasSkin(object oPC) {
    string sTag = "player_state";
    object curSkin = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
    if (GetTag(curSkin) == sTag) {
        FloatingTextStringOnCreature("Debug: skin ok", oPC, FALSE);
    } else {
        FloatingTextStringOnCreature("Debug: skin Nok", oPC, FALSE);
        object newSkin = CreateItemOnObject(sTag, oPC, 1);
        DelayCommand(0.5, AssignCommand(oPC, ActionEquipItem(newSkin, INVENTORY_SLOT_CHEST)));
    }
}

/*
void main()
{

}*/
