package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeuc implements zzetu {
    private final int zza;
    private final int zzb;

    public zzeuc(int i, int i2) {
        this.zza = i;
        this.zzb = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i;
        Bundle bundle = ((zzcuv) obj).zza;
        int i2 = this.zza;
        if (i2 != -1 && (i = this.zzb) != -1) {
            bundle.putInt("sessions_without_flags", i2);
            bundle.putInt("crashes_without_flags", i);
            int i3 = com.google.android.gms.ads.internal.client.zzbb.zza;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze()) {
                bundle.putBoolean("did_reset", true);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
