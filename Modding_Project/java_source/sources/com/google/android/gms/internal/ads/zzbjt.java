package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjt implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        if (map.keySet().contains("start")) {
            zzcfbVar.zzN().zzp();
        } else if (map.keySet().contains("stop")) {
            zzcfbVar.zzN().zzq();
        } else if (map.keySet().contains("cancel")) {
            zzcfbVar.zzN().zzo();
        }
    }
}
