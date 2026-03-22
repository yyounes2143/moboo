package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzus {
    private static final AtomicLong zza = new AtomicLong();

    public zzus(long j, zzgl zzglVar, Uri uri, Map map, long j2, long j3, long j4) {
    }

    public static long zza() {
        return zza.getAndIncrement();
    }

    public zzus(long j, zzgl zzglVar, long j2) {
        Uri uri = zzglVar.zza;
    }
}
