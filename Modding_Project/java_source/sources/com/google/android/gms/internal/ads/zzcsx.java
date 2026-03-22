package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcsx implements com.google.android.gms.ads.internal.client.zza {
    private final zzctb zza;
    private final zzfcp zzb;

    public zzcsx(zzctb zzctbVar, zzfcp zzfcpVar) {
        this.zza = zzctbVar;
        this.zzb = zzfcpVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.zza.zzc(this.zzb.zzf);
    }
}
