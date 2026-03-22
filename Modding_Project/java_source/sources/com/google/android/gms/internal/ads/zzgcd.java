package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgbm;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.logging.Level;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
abstract class zzgcd extends zzgbm.zzf {
    private static final zzgbz zzbg;
    private static final zzgdh zzbh = new zzgdh(zzgcd.class);
    volatile int remainingField;
    volatile Set<Throwable> seenExceptionsField = null;

    static {
        Throwable th;
        zzgbz zzgcbVar;
        try {
            zzgcbVar = new zzgca(null);
            th = null;
        } catch (Throwable th2) {
            th = th2;
            zzgcbVar = new zzgcb(null);
        }
        zzbg = zzgcbVar;
        if (th != null) {
            zzbh.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public zzgcd(int i) {
        this.remainingField = i;
    }

    public final int zzB() {
        return zzbg.zza(this);
    }

    public final Set zzC() {
        Set<Throwable> set = this.seenExceptionsField;
        if (set == null) {
            Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zzw(newSetFromMap);
            zzbg.zzb(this, null, newSetFromMap);
            Set<Throwable> set2 = this.seenExceptionsField;
            Objects.requireNonNull(set2);
            return set2;
        }
        return set;
    }

    public abstract void zzw(Set set);
}
