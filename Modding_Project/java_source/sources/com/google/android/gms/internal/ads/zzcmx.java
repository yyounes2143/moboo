package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcmx implements zzgcu {
    final /* synthetic */ zzcmz zza;

    public zzcmx(zzcmz zzcmzVar) {
        this.zza = zzcmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfdb zzfdbVar;
        zzfjn zzfjnVar;
        zzfcg zzfcgVar;
        zzfbu zzfbuVar;
        zzfbu zzfbuVar2;
        Context context;
        zzcmz zzcmzVar = this.zza;
        String str = (String) obj;
        zzfdbVar = zzcmzVar.zzh;
        zzfjnVar = zzcmzVar.zzg;
        zzfcgVar = zzcmzVar.zze;
        zzfbuVar = zzcmzVar.zzf;
        zzfbuVar2 = zzcmzVar.zzf;
        List zze = zzfjnVar.zze(zzfcgVar, zzfbuVar, false, "", str, zzfbuVar2.zzc);
        zzbzn zzp = com.google.android.gms.ads.internal.zzv.zzp();
        context = zzcmzVar.zza;
        boolean zzA = zzp.zzA(context);
        int i = 1;
        if (true == zzA) {
            i = 2;
        }
        zzfdbVar.zzc(zze, i);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
