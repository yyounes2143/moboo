package com.tencent.liteav.txcplayer.common;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c {
    public static LicenseChecker.d a() {
        LicenseChecker.d b = b(LicenseChecker.a.PLAYER_STANDARD);
        LiteavLog.i("VodLicenseCheck", "checkValidForPlayerStandard = ".concat(String.valueOf(b)));
        return b;
    }

    public static LicenseChecker.d b(LicenseChecker.a aVar) {
        if ((aVar == LicenseChecker.a.PLAYER_STANDARD || aVar == LicenseChecker.a.PLAYER_PREMIUM) && VodPlayerControl.nativeIsCheckCountLEThreshold()) {
            return LicenseChecker.d.OK;
        }
        LicenseChecker.d valid = LicenseChecker.getInstance().valid(aVar);
        LiteavLog.i("VodLicenseCheck", "innerValid functionType= " + aVar + " ,ret= " + valid);
        return valid;
    }

    public static boolean a(LicenseChecker.a aVar) {
        return b(aVar) == LicenseChecker.d.OK;
    }
}
