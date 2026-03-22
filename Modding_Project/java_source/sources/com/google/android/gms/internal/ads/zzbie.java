package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbie extends zzbhj {
    final /* synthetic */ zzbih zza;

    public /* synthetic */ zzbie(zzbih zzbihVar, zzbig zzbigVar) {
        this.zza = zzbihVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zze(zzbha zzbhaVar, String str) {
        com.google.android.gms.ads.formats.zzf zzfVar;
        com.google.android.gms.ads.formats.zzf zzfVar2;
        zzbhb zzf;
        zzbih zzbihVar = this.zza;
        zzfVar = zzbihVar.zzb;
        if (zzfVar != null) {
            zzfVar2 = zzbihVar.zzb;
            zzf = zzbihVar.zzf(zzbhaVar);
            zzfVar2.zzb(zzf, str);
        }
    }
}
