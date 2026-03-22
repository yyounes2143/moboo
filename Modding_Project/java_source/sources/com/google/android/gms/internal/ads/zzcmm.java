package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmm implements zzgcu {
    final /* synthetic */ zzfjr zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzv zzc;
    final /* synthetic */ zzcmn zzd;

    public zzcmm(zzcmn zzcmnVar, zzfjr zzfjrVar, String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.zza = zzfjrVar;
        this.zzb = str;
        this.zzc = zzvVar;
        this.zzd = zzcmnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(final Throwable th) {
        zzgdj zzgdjVar;
        zzgdjVar = this.zzd.zzg;
        final zzfjr zzfjrVar = this.zza;
        final String str = this.zzb;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
        zzgdjVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmk
            @Override // java.lang.Runnable
            public final void run() {
                Context context;
                Context context2;
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkD)).booleanValue();
                zzcmm zzcmmVar = zzcmm.this;
                Throwable th2 = th;
                if (booleanValue) {
                    zzcmn zzcmnVar = zzcmmVar.zzd;
                    context2 = zzcmnVar.zzc;
                    zzbuk zzc = zzbui.zzc(context2);
                    zzcmnVar.zzb = zzc;
                    zzc.zzh(th2, "AttributionReporting.registerSourceAndPingClickUrl");
                } else {
                    zzcmn zzcmnVar2 = zzcmmVar.zzd;
                    context = zzcmnVar2.zzc;
                    zzbuk zza = zzbui.zza(context);
                    zzcmnVar2.zza = zza;
                    zza.zzh(th2, "AttributionReportingSampled.registerSourceAndPingClickUrl");
                }
                com.google.android.gms.ads.internal.util.client.zzv zzvVar2 = zzvVar;
                zzfjrVar.zzd(str, zzvVar2, null, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzgdj zzgdjVar;
        final zzfjr zzfjrVar = this.zza;
        final String str = (String) obj;
        zzgdjVar = this.zzd.zzg;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
        zzgdjVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcml
            @Override // java.lang.Runnable
            public final void run() {
                zzfjr.this.zzd(str, zzvVar, null, null);
            }
        });
    }
}
