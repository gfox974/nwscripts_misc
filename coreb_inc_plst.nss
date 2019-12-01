/*
//::///////////////////////////////////////////////
//:: functions lib used for the player states part
//:: coreb_inc_plst
//:: Created By: J.nosmas
//:: Created On: Dec 01st, 2019
//:: Last Update: Dec 01st, 2019
//:://////////////////////////////////////////////
*/

// Consts
string sTag = "x3_it_pchide";
float maxSurvivalCount = 1.00;

// Structures
// Local var storage def
struct PCState
{
    string name;
    string key;
    int level;
    int isActivated;
    float hungerLevel;
    float thirstLevel;
    float exhaustLevel;
};
// Local var storage methods
struct PCState GetAllData(object oPC, object curSkin)
{
    if (GetTag(curSkin) == sTag) {
        SendMessageToPC(oPC,"debug skin ok: getdata works");
    } else {
        SendMessageToPC(oPC,"debug skin nok: getdata works");
    }
    struct PCState returnValues;
        returnValues.name = GetName(oPC);
        returnValues.key = GetPCPublicCDKey(oPC);
        returnValues.level = GetHitDice(oPC);
        returnValues.isActivated = GetLocalInt(curSkin,"isActivated");
        returnValues.hungerLevel = GetLocalFloat(curSkin,"hungerLevel");
        returnValues.thirstLevel = GetLocalFloat(curSkin,"thirstLevel");
        returnValues.exhaustLevel = GetLocalFloat(curSkin,"exhaustLevel");
        return returnValues;
}

// Functions
// creature skin slot verification
void checkHasSkin(object oPC) {
    object curSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
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
