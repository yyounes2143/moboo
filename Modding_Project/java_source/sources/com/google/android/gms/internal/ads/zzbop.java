package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbop implements zzcah {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzbnt zzb;

    public zzbop(zzbor zzborVar, zzcaf zzcafVar, zzbnt zzbntVar) {
        this.zza = zzcafVar;
        this.zzb = zzbntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcah
    public final void zza() {
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise rejected");
        this.zza.zzd(new zzboc("Unable to obtain a JavascriptEngine."));
        this.zzb.zzb();
    }
}
