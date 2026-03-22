package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeix implements com.google.android.gms.ads.internal.zzg {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzfcg zzb;
    final /* synthetic */ zzfbu zzc;
    final /* synthetic */ zzejd zzd;
    final /* synthetic */ zzeiy zze;

    public zzeix(zzeiy zzeiyVar, zzcaf zzcafVar, zzfcg zzfcgVar, zzfbu zzfbuVar, zzejd zzejdVar) {
        this.zza = zzcafVar;
        this.zzb = zzfcgVar;
        this.zzc = zzfbuVar;
        this.zzd = zzejdVar;
        this.zze = zzeiyVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zza(View view) {
        zzejh zzejhVar;
        zzejd zzejdVar = this.zzd;
        zzejhVar = this.zze.zzd;
        this.zza.zzc(zzejhVar.zza(this.zzb, this.zzc, view, zzejdVar));
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
    }
}
