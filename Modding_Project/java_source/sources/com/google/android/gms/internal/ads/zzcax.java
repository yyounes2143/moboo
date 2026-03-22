package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcax implements Runnable {
    final /* synthetic */ zzcba zza;

    public zzcax(zzcba zzcbaVar) {
        this.zza = zzcbaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbb zzcbbVar;
        zzcbb zzcbbVar2;
        zzcbb zzcbbVar3;
        zzcba zzcbaVar = this.zza;
        zzcbbVar = zzcbaVar.zzr;
        if (zzcbbVar != null) {
            zzcbbVar2 = zzcbaVar.zzr;
            zzcbbVar2.zzd();
            zzcbbVar3 = zzcbaVar.zzr;
            zzcbbVar3.zzi();
        }
    }
}
