package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdlv implements zzgcu {
    final /* synthetic */ zzcaf zza;

    public zzdlv(zzdlw zzdlwVar, zzcaf zzcafVar) {
        this.zza = zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to load media data due to video view load failure.");
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcfb zzcfbVar = (zzcfb) obj;
        if (zzcfbVar != null) {
            zzcfbVar.zzag("/video", new zzccu(new zzdlu(this.zza)));
            zzcfbVar.zzaa();
            return;
        }
        this.zza.zzd(new zzegy(1, "Missing webview from video view future."));
    }
}
