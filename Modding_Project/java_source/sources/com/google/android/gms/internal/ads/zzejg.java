package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzejg implements com.google.android.gms.ads.internal.zzg {
    final /* synthetic */ zzdex zza;

    public zzejg(zzejh zzejhVar, zzdex zzdexVar) {
        this.zza = zzdexVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
        this.zza.zzb().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
        zzdex zzdexVar = this.zza;
        zzdexVar.zzc().zza();
        zzdexVar.zzf().zza();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zza(View view) {
    }
}
