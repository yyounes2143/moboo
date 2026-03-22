package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcaw implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzcba zzc;

    public zzcaw(zzcba zzcbaVar, int i, int i2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzcbaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbb zzcbbVar;
        zzcbb zzcbbVar2;
        zzcba zzcbaVar = this.zzc;
        zzcbbVar = zzcbaVar.zzr;
        if (zzcbbVar != null) {
            int i = this.zza;
            int i2 = this.zzb;
            zzcbbVar2 = zzcbaVar.zzr;
            zzcbbVar2.zzj(i, i2);
        }
    }
}
