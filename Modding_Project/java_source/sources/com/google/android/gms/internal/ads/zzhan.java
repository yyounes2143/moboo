package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhan {
    public static final /* synthetic */ int zza = 0;
    private static final zzhan zzb = new zzhan();
    private final ConcurrentMap zzd = new ConcurrentHashMap();
    private final zzhax zzc = new zzgzv();

    private zzhan() {
    }

    public static zzhan zza() {
        return zzb;
    }

    public final zzhaw zzb(Class cls) {
        zzgzf.zzc(cls, "messageType");
        ConcurrentMap concurrentMap = this.zzd;
        zzhaw zzhawVar = (zzhaw) concurrentMap.get(cls);
        if (zzhawVar == null) {
            zzhawVar = this.zzc.zza(cls);
            zzgzf.zzc(cls, "messageType");
            zzhaw zzhawVar2 = (zzhaw) concurrentMap.putIfAbsent(cls, zzhawVar);
            if (zzhawVar2 != null) {
                return zzhawVar2;
            }
        }
        return zzhawVar;
    }
}
