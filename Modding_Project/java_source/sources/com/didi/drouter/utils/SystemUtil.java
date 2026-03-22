package com.didi.drouter.utils;

import android.app.Application;
import androidx.annotation.RestrictTo;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class SystemUtil {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Application f5843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Application application) {
        if (application != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(application);
            f5843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = application;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Application application) {
        boolean z;
        if (f5843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return;
        }
        try {
            if ((application.getApplicationInfo().flags & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            f5842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        } catch (Exception unused) {
        }
    }

    public static Application Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
