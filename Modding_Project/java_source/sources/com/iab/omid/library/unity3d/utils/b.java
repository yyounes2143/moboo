package com.iab.omid.library.unity3d.utils;

import android.os.Build;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class b {
    public static JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "deviceType", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "osVersion", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "os", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return jSONObject;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "Android";
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }
}
