package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzzd {
    private final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public final void zza(Handler handler, zzze zzzeVar) {
        zzc(zzzeVar);
        this.zza.add(new zzzc(handler, zzzeVar));
    }

    public final void zzb(final int i, final long j, final long j2) {
        boolean z;
        Handler handler;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            final zzzc zzzcVar = (zzzc) it.next();
            z = zzzcVar.zzc;
            if (!z) {
                handler = zzzcVar.zza;
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzze zzzeVar;
                        zzzeVar = zzzc.this.zzb;
                        zzzeVar.zzZ(i, j, j2);
                    }
                });
            }
        }
    }

    public final void zzc(zzze zzzeVar) {
        zzze zzzeVar2;
        CopyOnWriteArrayList copyOnWriteArrayList = this.zza;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzzc zzzcVar = (zzzc) it.next();
            zzzeVar2 = zzzcVar.zzb;
            if (zzzeVar2 == zzzeVar) {
                zzzcVar.zzc();
                copyOnWriteArrayList.remove(zzzcVar);
            }
        }
    }
}
