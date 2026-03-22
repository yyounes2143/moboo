package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzboo implements zzcaj {
    final /* synthetic */ zzbnt zza;
    final /* synthetic */ Object zzb;
    final /* synthetic */ zzcaf zzc;
    final /* synthetic */ zzbor zzd;

    public zzboo(zzbor zzborVar, zzbnt zzbntVar, Object obj, zzcaf zzcafVar) {
        this.zza = zzbntVar;
        this.zzb = obj;
        this.zzc = zzcafVar;
        this.zzd = zzborVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaj
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise fulfilled");
        Object obj2 = this.zzb;
        zzcaf zzcafVar = this.zzc;
        zzbor.zzd(this.zzd, this.zza, (zzboa) obj, obj2, zzcafVar);
    }
}
