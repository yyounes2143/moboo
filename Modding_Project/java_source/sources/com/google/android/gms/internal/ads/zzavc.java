package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzavc implements Runnable {
    final /* synthetic */ zzavd zza;

    public zzavc(zzavd zzavdVar) {
        this.zza = zzavdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        zzfnx zzfnxVar;
        Object obj2;
        zzavd zzavdVar = this.zza;
        obj = zzavdVar.zzo;
        synchronized (obj) {
            z = zzavdVar.zzp;
            if (!z) {
                zzavdVar.zzp = true;
                try {
                    zzavd.zzj(zzavdVar);
                } catch (Exception e) {
                    zzfnxVar = this.zza.zzh;
                    zzfnxVar.zzc(2023, -1L, e);
                }
                zzavd zzavdVar2 = this.zza;
                obj2 = zzavdVar2.zzo;
                synchronized (obj2) {
                    zzavdVar2.zzp = false;
                }
            }
        }
    }
}
