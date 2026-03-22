package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeic extends zzbwh {
    final /* synthetic */ zzcxz zza;
    final /* synthetic */ zzcvr zzb;
    final /* synthetic */ zzcxa zzc;
    final /* synthetic */ zzdeh zzd;

    public zzeic(zzeid zzeidVar, zzcxz zzcxzVar, zzcvr zzcvrVar, zzcxa zzcxaVar, zzdeh zzdehVar) {
        this.zza = zzcxzVar;
        this.zzb = zzcvrVar;
        this.zzc = zzcxaVar;
        this.zzd = zzdehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zze(IObjectWrapper iObjectWrapper) {
        this.zzb.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.zza.zzdw(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zza.zzdt();
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzm(IObjectWrapper iObjectWrapper, zzbwj zzbwjVar) {
        this.zzd.zza(zzbwjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.zzd.zza(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzo(IObjectWrapper iObjectWrapper) {
        this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzp(IObjectWrapper iObjectWrapper) {
        this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzi(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
    }
}
