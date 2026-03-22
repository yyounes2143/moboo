package com.google.android.gms.internal.engage;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzq {
    public static Context zza(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }
}
