package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbxy {
    private final com.google.android.gms.ads.internal.util.zzg zza;

    public zzbxy(Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbyj zzbyjVar) {
        this.zza = zzgVar;
    }

    public final void zza(int i, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaH)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzg zzgVar = this.zza;
        if (j - zzgVar.zzf() < 0) {
            com.google.android.gms.ads.internal.util.zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaI)).booleanValue()) {
            zzgVar.zzH(-1);
            zzgVar.zzI(j);
            return;
        }
        zzgVar.zzH(i);
        zzgVar.zzI(j);
    }
}
