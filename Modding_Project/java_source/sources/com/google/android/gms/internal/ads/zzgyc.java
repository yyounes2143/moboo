package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgyc {
    static final zzgyc zza = new zzgyc(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzgyc zzd;
    private final Map zze;

    public zzgyc() {
        this.zze = new HashMap();
    }

    public static zzgyc zza() {
        int i = zzhan.zza;
        return zza;
    }

    public static zzgyc zzb() {
        zzgyc zzgycVar = zzd;
        if (zzgycVar != null) {
            return zzgycVar;
        }
        synchronized (zzgyc.class) {
            try {
                zzgyc zzgycVar2 = zzd;
                if (zzgycVar2 != null) {
                    return zzgycVar2;
                }
                int i = zzhan.zza;
                zzgyc zzb2 = zzgyk.zzb(zzgyc.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzgyq zzc(zzhad zzhadVar, int i) {
        return (zzgyq) this.zze.get(new zzgyb(zzhadVar, i));
    }

    public zzgyc(boolean z) {
        this.zze = Collections.EMPTY_MAP;
    }
}
