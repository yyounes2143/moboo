package com.google.android.gms.internal.engage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzi extends zze {
    final /* synthetic */ zzo zza;

    public zzi(zzo zzoVar) {
        Objects.requireNonNull(zzoVar);
        this.zza = zzoVar;
    }

    @Override // com.google.android.gms.internal.engage.zze
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        zzd zzdVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        zzd zzdVar2;
        zzo zzoVar = this.zza;
        obj = zzoVar.zzg;
        synchronized (obj) {
            try {
                atomicInteger = zzoVar.zzl;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = zzoVar.zzl;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        zzdVar2 = zzoVar.zzc;
                        zzdVar2.zzc("Leaving the connection open for other ongoing calls.", new Object[0]);
                        return;
                    }
                }
                iInterface = zzoVar.zzn;
                if (iInterface != null) {
                    zzdVar = zzoVar.zzc;
                    zzdVar.zzc("Unbind from service.", new Object[0]);
                    context = zzoVar.zzb;
                    serviceConnection = zzoVar.zzm;
                    context.unbindService(serviceConnection);
                    zzoVar.zzh = false;
                    zzoVar.zzn = null;
                    zzoVar.zzm = null;
                }
                zzoVar.zzw();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
