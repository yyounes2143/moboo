package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcby implements Runnable {
    private final zzcbk zza;
    private boolean zzb = false;

    public zzcby(zzcbk zzcbkVar) {
        this.zza = zzcbkVar;
    }

    private final void zzc() {
        zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzfrlVar.removeCallbacks(this);
        zzfrlVar.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzb) {
            this.zza.zzt();
            zzc();
        }
    }

    public final void zza() {
        this.zzb = true;
        this.zza.zzt();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
