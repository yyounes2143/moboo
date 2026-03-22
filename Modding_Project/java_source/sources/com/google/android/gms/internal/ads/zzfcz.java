package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfcz implements zzgcu {
    final /* synthetic */ zzcfb zza;
    final /* synthetic */ zzcmn zzb;
    final /* synthetic */ zzfjr zzc;
    final /* synthetic */ zzebt zzd;

    public zzfcz(zzcfb zzcfbVar, zzcmn zzcmnVar, zzfjr zzfjrVar, zzebt zzebtVar) {
        this.zza = zzcfbVar;
        this.zzb = zzcmnVar;
        this.zzc = zzfjrVar;
        this.zzd = zzebtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z;
        zzcmn zzcmnVar;
        String str = (String) obj;
        zzcfb zzcfbVar = this.zza;
        zzfbu zzD = zzcfbVar.zzD();
        if (zzD != null && !zzD.zzai) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = zzD.zzax;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkp)).booleanValue() && (zzcmnVar = this.zzb) != null && zzcmn.zzj(str)) {
                zzcmnVar.zzi(str, this.zzc, com.google.android.gms.ads.internal.client.zzbb.zze(), zzvVar);
                return;
            } else {
                this.zzc.zzd(str, zzvVar, null, null);
                return;
            }
        }
        zzfbx zzR = zzcfbVar.zzR();
        if (zzR == null) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingClickGmsgHandler");
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        boolean zzA = com.google.android.gms.ads.internal.zzv.zzp().zzA(zzcfbVar.getContext());
        int i = 1;
        boolean z2 = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgu)).booleanValue() && zzD != null && zzD.zzS) {
            z = true;
        } else {
            z = false;
        }
        if (zzD != null && zzD.zzad != null) {
            z2 = true;
        }
        if (zzA || z || z2) {
            i = 2;
        }
        this.zzd.zzd(new zzebv(currentTimeMillis, zzR.zzb, str, i));
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
