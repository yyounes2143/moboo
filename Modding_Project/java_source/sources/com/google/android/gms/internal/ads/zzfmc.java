package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmc {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfmc zza = new zzfmc();
    private Context zzb;

    private zzfmc() {
    }

    public static zzfmc zzb() {
        return zza;
    }

    public final Context zza() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zzb = context2;
    }
}
