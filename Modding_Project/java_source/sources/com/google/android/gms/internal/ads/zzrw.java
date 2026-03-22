package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzrw {
    public final int zza;
    @Nullable
    public final zzvb zzb;
    private final CopyOnWriteArrayList zzc;

    private zzrw(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable zzvb zzvbVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzvbVar;
    }

    @CheckResult
    public final zzrw zza(int i, @Nullable zzvb zzvbVar) {
        return new zzrw(this.zzc, 0, zzvbVar);
    }

    public final void zzb(Handler handler, zzrx zzrxVar) {
        this.zzc.add(new zzrv(handler, zzrxVar));
    }

    public final void zzc(zzrx zzrxVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzrv zzrvVar = (zzrv) it.next();
            if (zzrvVar.zza == zzrxVar) {
                copyOnWriteArrayList.remove(zzrvVar);
            }
        }
    }

    public zzrw() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
