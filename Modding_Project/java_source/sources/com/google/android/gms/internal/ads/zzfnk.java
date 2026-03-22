package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfnk {
    private final BlockingQueue zza;
    private final ThreadPoolExecutor zzb;
    private final ArrayDeque zzc = new ArrayDeque();
    private zzfnj zzd = null;

    public zzfnk() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.zza = linkedBlockingQueue;
        this.zzb = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private final void zzc() {
        zzfnj zzfnjVar = (zzfnj) this.zzc.poll();
        this.zzd = zzfnjVar;
        if (zzfnjVar != null) {
            zzfnjVar.executeOnExecutor(this.zzb, new Object[0]);
        }
    }

    public final void zza(zzfnj zzfnjVar) {
        this.zzd = null;
        zzc();
    }

    public final void zzb(zzfnj zzfnjVar) {
        zzfnjVar.zzb(this);
        this.zzc.add(zzfnjVar);
        if (this.zzd == null) {
            zzc();
        }
    }
}
