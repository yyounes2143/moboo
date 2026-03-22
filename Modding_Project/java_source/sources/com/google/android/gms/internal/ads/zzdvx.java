package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdvx implements zzgcu {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdvz zzb;

    public zzdvx(zzdvz zzdvzVar, String str) {
        this.zza = str;
        this.zzb = zzdvzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdvn zzdvnVar;
        ((zzduq) obj).zze();
        zzdvnVar = this.zzb.zzd;
        zzdvnVar.zzk(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
