package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkq implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzdx zzb;
    final /* synthetic */ zzfkt zzc;

    public zzfkq(zzfkt zzfktVar, long j, com.google.android.gms.ads.internal.client.zzdx zzdxVar) {
        this.zza = j;
        this.zzb = zzdxVar;
        this.zzc = zzfktVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfkc zzfkcVar;
        zzfkc zzfkcVar2;
        String zzI;
        zzfkk zzfkkVar;
        zzfkt zzfktVar = this.zzc;
        zzfkcVar = zzfktVar.zzn;
        if (zzfkcVar != null) {
            long j = this.zza;
            com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.zzb;
            zzfkcVar2 = zzfktVar.zzn;
            zzI = zzfkt.zzI(zzdxVar);
            zzfkkVar = zzfktVar.zzp;
            zzfkcVar2.zzc(j, zzI, zzfkkVar);
        }
    }
}
