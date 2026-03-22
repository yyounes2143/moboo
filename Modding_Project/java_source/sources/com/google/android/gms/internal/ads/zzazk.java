package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzazk {
    @VisibleForTesting
    int zza;
    private final Object zzb = new Object();
    private final List zzc = new LinkedList();

    public final void zza(zzazj zzazjVar) {
        synchronized (this.zzb) {
            try {
                List list = this.zzc;
                if (list.size() >= 10) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Queue is full, current size = " + list.size());
                    list.remove(0);
                }
                int i2 = this.zza;
                this.zza = i2 + 1;
                zzazjVar.zzg(i2);
                zzazjVar.zzk();
                list.add(zzazjVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(zzazj zzazjVar) {
        synchronized (this.zzb) {
            try {
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    zzazj zzazjVar2 = (zzazj) it.next();
                    if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzK()) {
                        if (!zzazjVar.equals(zzazjVar2) && zzazjVar2.zzc().equals(zzazjVar.zzc())) {
                            it.remove();
                            return true;
                        }
                    } else if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzL() && !zzazjVar.equals(zzazjVar2) && zzazjVar2.zzd().equals(zzazjVar.zzd())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(zzazj zzazjVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc.contains(zzazjVar)) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
