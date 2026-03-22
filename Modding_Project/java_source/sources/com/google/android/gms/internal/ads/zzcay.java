package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcay implements Runnable {
    final /* synthetic */ zzcba zza;

    public zzcay(zzcba zzcbaVar) {
        this.zza = zzcbaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbb zzcbbVar;
        boolean z;
        zzcbb zzcbbVar2;
        zzcbb zzcbbVar3;
        zzcba zzcbaVar = this.zza;
        zzcbbVar = zzcbaVar.zzr;
        if (zzcbbVar != null) {
            z = zzcbaVar.zzs;
            if (!z) {
                zzcbbVar3 = zzcbaVar.zzr;
                zzcbbVar3.zzg();
                zzcbaVar.zzs = true;
            }
            zzcbbVar2 = zzcbaVar.zzr;
            zzcbbVar2.zze();
        }
    }
}
