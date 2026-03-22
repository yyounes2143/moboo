package com.mbridge.msdk.util;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBConfiguration;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Boolean f9712a;
    private static volatile Boolean b;

    public static boolean a() {
        boolean z;
        if (f9712a == null) {
            try {
                if (Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 2) {
                    z = true;
                } else {
                    z = false;
                }
                f9712a = Boolean.valueOf(z);
                return z;
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonUtils", "isChina", e);
                }
            }
        }
        if (f9712a == null || !f9712a.booleanValue()) {
            return false;
        }
        return true;
    }

    public static boolean b() {
        boolean z;
        if (b == null) {
            try {
                if (Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                b = Boolean.valueOf(z);
                return z;
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonUtils", "isOversea", e);
                }
            }
        }
        if (b == null || !b.booleanValue()) {
            return false;
        }
        return true;
    }
}
