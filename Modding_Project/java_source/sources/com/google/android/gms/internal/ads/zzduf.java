package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzduf implements zzgcu {
    final /* synthetic */ zzduh zza;

    public zzduf(zzduh zzduhVar) {
        this.zza = zzduhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        long j;
        zzcaf zzcafVar;
        synchronized (this) {
            zzduh zzduhVar = this.zza;
            zzduhVar.zzc = true;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
            j = zzduhVar.zzd;
            zzduhVar.zzv("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzcafVar = zzduhVar.zze;
            zzcafVar.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        long j;
        Executor executor;
        final String str = (String) obj;
        synchronized (this) {
            zzduh zzduhVar = this.zza;
            zzduhVar.zzc = true;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
            j = zzduhVar.zzd;
            zzduhVar.zzv("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j));
            executor = zzduhVar.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdue
                @Override // java.lang.Runnable
                public final void run() {
                    zzduh.zzo(zzduf.this.zza, str);
                }
            });
        }
    }
}
