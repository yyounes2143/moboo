package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjb implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zza;
        zzcfb zzcfbVar = (zzcfb) obj;
        zzbfu zzK = zzcfbVar.zzK();
        if (zzK != null && (zza = zzK.zza()) != null) {
            zzcfbVar.zze("nativeAdViewSignalsReady", zza);
        } else {
            zzcfbVar.zze("nativeAdViewSignalsReady", new JSONObject());
        }
    }
}
