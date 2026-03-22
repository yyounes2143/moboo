package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcrk implements zzgcu {
    final /* synthetic */ zzgcu zza;
    final /* synthetic */ zzcrm zzb;

    public zzcrk(zzcrm zzcrmVar, zzgcu zzgcuVar) {
        this.zza = zzgcuVar;
        this.zzb = zzcrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        this.zza.zza(th);
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrg
            @Override // java.lang.Runnable
            public final void run() {
                zzcrm.this.zzd = false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcrm.zzc(this.zzb, ((zzcrf) obj).zza, this.zza);
    }
}
