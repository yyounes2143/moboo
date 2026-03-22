package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbya {
    private final Clock zza;
    private final zzbxy zzb;

    public zzbya(Clock clock, zzbxy zzbxyVar) {
        this.zza = clock;
        this.zzb = zzbxyVar;
    }

    public static zzbya zza(Context context) {
        return zzbyk.zzb(context).zza();
    }

    public final void zzb(int i, long j) {
        this.zzb.zza(i, j);
    }

    public final void zzc(com.google.android.gms.ads.internal.client.zzfr zzfrVar) {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }

    public final void zzd() {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }
}
