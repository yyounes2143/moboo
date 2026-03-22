package com.iab.omid.library.unity3d.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.unity3d.adsession.DeviceCategory;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static UiModeManager f8481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (context != null) {
            f8481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (UiModeManager) context.getSystemService("uimode");
        }
    }

    public static DeviceCategory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        UiModeManager uiModeManager = f8481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType != 4) {
                    return DeviceCategory.OTHER;
                }
                return DeviceCategory.CTV;
            }
            return DeviceCategory.MOBILE;
        }
        return DeviceCategory.OTHER;
    }
}
