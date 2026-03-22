package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdil {
    @Nullable
    private zzbgd zza;

    public zzdil(zzdhw zzdhwVar) {
        this.zza = zzdhwVar;
    }

    @Nullable
    public final synchronized zzbgd zza() {
        return this.zza;
    }

    public final synchronized void zzb(@Nullable zzbgd zzbgdVar) {
        this.zza = zzbgdVar;
    }
}
