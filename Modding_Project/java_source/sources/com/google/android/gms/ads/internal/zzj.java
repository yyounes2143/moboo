package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfnx;
import com.google.android.gms.internal.ads.zzfoy;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzj implements zzfoy {
    final /* synthetic */ zzk zza;

    public zzj(zzk zzkVar) {
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoy
    public final void zza(int i, long j) {
        zzfnx zzfnxVar;
        zzfnxVar = this.zza.zzj;
        zzfnxVar.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfoy
    public final void zzb(int i, long j, String str) {
        zzfnx zzfnxVar;
        zzfnxVar = this.zza.zzj;
        zzfnxVar.zze(i, System.currentTimeMillis() - j, str);
    }
}
