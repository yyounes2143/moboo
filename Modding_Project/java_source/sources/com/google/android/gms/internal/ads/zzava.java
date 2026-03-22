package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzava implements zzfoy {
    final /* synthetic */ zzfnx zza;

    public zzava(zzfnx zzfnxVar) {
        this.zza = zzfnxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoy
    public final void zza(int i, long j) {
        this.zza.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfoy
    public final void zzb(int i, long j, String str) {
        this.zza.zze(i, System.currentTimeMillis() - j, str);
    }
}
