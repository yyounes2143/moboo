package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfma {
    private final zzfno zza;
    private final String zzb;
    private final zzfli zzc;
    private final String zzd = "Ad overlay";

    public zzfma(View view, zzfli zzfliVar, @Nullable String str) {
        this.zza = new zzfno(view);
        this.zzb = view.getClass().getCanonicalName();
        this.zzc = zzfliVar;
    }

    public final zzfli zza() {
        return this.zzc;
    }

    public final zzfno zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zzb;
    }
}
