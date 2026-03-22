package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbju implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        if (map.keySet().contains("start")) {
            zzcfbVar.zzax(true);
        }
        if (map.keySet().contains("stop")) {
            zzcfbVar.zzax(false);
        }
    }
}
