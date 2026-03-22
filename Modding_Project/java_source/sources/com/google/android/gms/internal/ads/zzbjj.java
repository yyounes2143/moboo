package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjj implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        try {
            String str = (String) map.get("enabled");
            zzbjw zzbjwVar = zzbjv.zza;
            if (!zzfui.zzc("true", str) && !zzfui.zzc("false", str)) {
                return;
            }
            zzfrq.zza(zzcfbVar.getContext()).zzb(Boolean.parseBoolean(str));
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
