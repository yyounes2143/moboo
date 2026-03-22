package com.mbridge.msdk.advanced.common;

import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Boolean> f8717a = new HashMap();

    public static void a(String str, boolean z) {
        f8717a.put(str, Boolean.valueOf(z));
    }

    public static void b(String str) {
        f8717a.remove(str);
    }

    public static boolean a(String str) {
        if (f8717a.containsKey(str)) {
            return f8717a.get(str).booleanValue();
        }
        return false;
    }
}
