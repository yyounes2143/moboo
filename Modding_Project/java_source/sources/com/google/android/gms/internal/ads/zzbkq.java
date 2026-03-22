package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbkq implements zzbjw {
    private final zzdvc zza;

    public zzbkq(zzdvc zzdvcVar) {
        Preconditions.checkNotNull(zzdvcVar, "The Inspector Manager must not be null");
        this.zza = zzdvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        if (map != null && map.containsKey("extras")) {
            long j = Long.MAX_VALUE;
            if (map.containsKey("expires")) {
                try {
                    j = Long.parseLong((String) map.get("expires"));
                } catch (NumberFormatException unused) {
                }
            }
            this.zza.zzi((String) map.get("extras"), j);
        }
    }
}
