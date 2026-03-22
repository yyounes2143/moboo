package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdfx implements com.google.android.gms.ads.internal.overlay.zzr {
    private final zzcxz zza;
    private final zzddk zzb;

    public zzdfx(zzcxz zzcxzVar, zzddk zzddkVar) {
        this.zza = zzcxzVar;
        this.zzb = zzddkVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdH() {
        this.zza.zzdH();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
        this.zza.zzdk();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
        this.zza.zzds();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        this.zza.zzdt();
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        this.zza.zzdv();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(int i) {
        this.zza.zzdw(i);
        this.zzb.zza();
    }
}
