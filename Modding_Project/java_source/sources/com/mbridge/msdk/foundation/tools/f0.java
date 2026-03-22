package com.mbridge.msdk.foundation.tools;

import android.net.ConnectivityManager;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static ConnectivityManager f9101a;

    public static synchronized ConnectivityManager a() {
        ConnectivityManager connectivityManager;
        synchronized (f0.class) {
            try {
                if (f9101a == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    f9101a = (ConnectivityManager) com.mbridge.msdk.foundation.controller.c.m().d().getSystemService("connectivity");
                }
            } catch (Exception e) {
                o0.b("NetManager", e.getMessage());
            }
            connectivityManager = f9101a;
        }
        return connectivityManager;
    }
}
