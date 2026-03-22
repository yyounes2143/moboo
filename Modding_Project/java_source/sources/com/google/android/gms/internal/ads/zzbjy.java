package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbjy implements zzbjw {
    private final zzbjz zza;

    public zzbjy(zzbjz zzbjzVar) {
        this.zza = zzbjzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Fail to parse float", e);
        }
        zzbjz zzbjzVar = this.zza;
        zzbjzVar.zzc(equals);
        zzbjzVar.zzb(equals2, f);
        zzcfbVar.zzay(equals);
    }
}
