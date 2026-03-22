package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbin implements zzbjw {
    private final zzbio zza;

    public zzbin(zzbio zzbioVar) {
        this.zza = zzbioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("name");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("App event with no name parameter.");
            return;
        }
        this.zza.zzb(str, (String) map.get("info"));
    }
}
