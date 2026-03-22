package com.google.android.gms.internal.auth;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgf {
    private static final zzgf zza = new zzgf();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzgj zzb = new zzfp();

    private zzgf() {
    }

    public static zzgf zza() {
        return zza;
    }

    public final zzgi zzb(Class cls) {
        zzfa.zzc(cls, "messageType");
        zzgi zzgiVar = (zzgi) this.zzc.get(cls);
        if (zzgiVar == null) {
            zzgi zza2 = this.zzb.zza(cls);
            zzfa.zzc(cls, "messageType");
            zzgi zzgiVar2 = (zzgi) this.zzc.putIfAbsent(cls, zza2);
            if (zzgiVar2 == null) {
                return zza2;
            }
            return zzgiVar2;
        }
        return zzgiVar;
    }
}
