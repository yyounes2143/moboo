package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfjq implements zzgcu {
    final /* synthetic */ zzfhc zza;
    final /* synthetic */ zzfhn zzb;
    final /* synthetic */ zzcyd zzc;
    final /* synthetic */ zzfjr zzd;

    public zzfjq(zzfjr zzfjrVar, zzfhc zzfhcVar, zzfhn zzfhnVar, zzcyd zzcydVar) {
        this.zza = zzfhcVar;
        this.zzb = zzfhnVar;
        this.zzc = zzcydVar;
        this.zzd = zzfjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(@NonNull Throwable th) {
        zzfhq zzfhqVar;
        zzfhc zzfhcVar = this.zza;
        if (zzfhcVar == null) {
            return;
        }
        zzfhcVar.zzg(false);
        zzfhn zzfhnVar = this.zzb;
        if (zzfhnVar == null) {
            zzfhqVar = this.zzd.zzf;
            zzfhqVar.zzc(zzfhcVar.zzm());
            return;
        }
        zzfhnVar.zza(zzfhcVar);
        zzfhnVar.zzh();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e8  */
    @Override // com.google.android.gms.internal.ads.zzgcu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzb(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjq.zzb(java.lang.Object):void");
    }
}
