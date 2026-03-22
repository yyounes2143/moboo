package com.google.android.gms.internal.ads;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmy implements zzgcu {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcmz zzb;

    public zzcmy(zzcmz zzcmzVar, String str) {
        this.zza = str;
        this.zzb = zzcmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfdb zzfdbVar;
        zzfjn zzfjnVar;
        zzfcg zzfcgVar;
        zzfbu zzfbuVar;
        List zzw;
        String str = this.zza;
        zzcmz zzcmzVar = this.zzb;
        zzfdbVar = zzcmzVar.zzh;
        zzfjnVar = zzcmzVar.zzg;
        zzfcgVar = zzcmzVar.zze;
        zzfbuVar = zzcmzVar.zzf;
        zzw = zzcmzVar.zzw();
        zzfdbVar.zza(zzfjnVar.zze(zzfcgVar, zzfbuVar, false, str, null, zzw), null);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfdb zzfdbVar;
        zzfjn zzfjnVar;
        zzfcg zzfcgVar;
        zzfbu zzfbuVar;
        List zzw;
        zzcyd zzcydVar;
        zzcmz zzcmzVar = this.zzb;
        String str = this.zza;
        String str2 = (String) obj;
        zzfdbVar = zzcmzVar.zzh;
        zzfjnVar = zzcmzVar.zzg;
        zzfcgVar = zzcmzVar.zze;
        zzfbuVar = zzcmzVar.zzf;
        zzw = zzcmzVar.zzw();
        List zze = zzfjnVar.zze(zzfcgVar, zzfbuVar, false, str, str2, zzw);
        zzcydVar = zzcmzVar.zzn;
        zzfdbVar.zza(zze, zzcydVar);
    }
}
