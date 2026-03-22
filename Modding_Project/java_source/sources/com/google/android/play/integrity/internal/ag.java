package com.google.android.play.integrity.internal;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class ag {
    public static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }
}
