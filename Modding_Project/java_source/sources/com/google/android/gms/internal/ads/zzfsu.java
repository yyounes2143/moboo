package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfsu {
    @SuppressLint({"RestrictedApi"})
    public static zzfst zza(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return new zzfsv(new zzftl(context));
    }
}
