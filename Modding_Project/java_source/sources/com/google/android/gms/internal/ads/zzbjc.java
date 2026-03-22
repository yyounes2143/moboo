package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjc implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzb;
        zzcfb zzcfbVar = (zzcfb) obj;
        zzbfu zzK = zzcfbVar.zzK();
        if (zzK != null && (zzb = zzK.zzb()) != null) {
            zzcfbVar.zze("nativeClickMetaReady", zzb);
        } else {
            zzcfbVar.zze("nativeClickMetaReady", new JSONObject());
        }
    }
}
