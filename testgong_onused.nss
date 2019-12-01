#include "coreb_inc_plst"

void main()
{
    object oPC=GetLastUsedBy();
    checkHasSkin(oPC);
    PlaySound("as_cv_gongring3");
}
