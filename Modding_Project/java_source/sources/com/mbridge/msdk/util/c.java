package com.mbridge.msdk.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.GoogleApiAvailability;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9713a = false;
    public static String b = "";

    public static void a() {
        if (c()) {
            try {
                GoogleApiAvailability.getInstance().getApkVersion(com.mbridge.msdk.foundation.controller.c.m().d());
                GoogleApiAvailability.getInstance().verifyGooglePlayServicesIsAvailable(com.mbridge.msdk.foundation.controller.c.m().d(), 11925000);
                try {
                    String b2 = b();
                    boolean isEmpty = TextUtils.isEmpty(b2);
                    f9713a = !isEmpty;
                    if (!isEmpty) {
                        b = b2;
                    }
                } catch (Throwable th) {
                    o0.b("CronetEnvCheckUtil", th.getMessage());
                }
            } catch (Throwable th2) {
                o0.b("CronetEnvCheckUtil", th2.getMessage());
                f9713a = false;
            }
        }
    }

    private static String b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pair.create(1, "org.chromium.net.impl.JavaCronetProvider"));
        arrayList.add(Pair.create(2, "org.chromium.net.impl.NativeCronetProvider"));
        arrayList.add(Pair.create(3, "com.google.android.gms.net.PlayServicesCronetProvider"));
        arrayList.add(Pair.create(4, "com.google.android.gms.net.GmsCoreCronetProvider"));
        try {
            StringBuilder sb = new StringBuilder();
            ClassLoader classLoader = com.mbridge.msdk.foundation.controller.c.m().d().getClassLoader();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Pair pair = (Pair) obj;
                if (!TextUtils.isEmpty(classLoader.loadClass((String) pair.second).getConstructor(Context.class).newInstance(com.mbridge.msdk.foundation.controller.c.m().d()).getClass().getName())) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(pair.first);
                }
            }
            return sb.toString();
        } catch (Throwable th) {
            o0.b("CronetEnvCheckUtil", th.getMessage());
            return "";
        }
    }

    public static boolean c() {
        return q0.a().a("cronet_env_check", false);
    }
}
