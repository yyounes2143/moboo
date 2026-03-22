package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgm implements zzgf {
    private final Context zza;
    private final zzgf zzb;

    public zzgm(Context context) {
        zzgo zzgoVar = new zzgo();
        this.zza = context.getApplicationContext();
        this.zzb = zzgoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final /* bridge */ /* synthetic */ zzgg zza() {
        return new zzgn(this.zza, this.zzb.zza());
    }
}
