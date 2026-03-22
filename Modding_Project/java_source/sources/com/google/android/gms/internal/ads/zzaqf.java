package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaqf {
    public static final boolean zza = zzaqg.zzb;
    private final List zzb = new ArrayList();
    private boolean zzc = false;

    public final void finalize() throws Throwable {
        if (!this.zzc) {
            zzb("Request on the loose");
            zzaqg.zzb("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    public final synchronized void zza(String str, long j) {
        if (!this.zzc) {
            this.zzb.add(new zzaqe(str, j, SystemClock.elapsedRealtime()));
        } else {
            throw new IllegalStateException("Marker added to finished log");
        }
    }

    public final synchronized void zzb(String str) {
        long j;
        this.zzc = true;
        List<zzaqe> list = this.zzb;
        if (list.size() == 0) {
            j = 0;
        } else {
            j = ((zzaqe) list.get(list.size() - 1)).zzc - ((zzaqe) list.get(0)).zzc;
        }
        if (j > 0) {
            long j2 = ((zzaqe) list.get(0)).zzc;
            zzaqg.zza("(%-4d ms) %s", Long.valueOf(j), str);
            for (zzaqe zzaqeVar : list) {
                long j3 = zzaqeVar.zzc;
                zzaqg.zza("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(zzaqeVar.zzb), zzaqeVar.zza);
                j2 = j3;
            }
        }
    }
}
