package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzccu implements zzbjw {
    private final zzdlu zza;

    public zzccu(zzdlu zzdluVar) {
        this.zza = zzdluVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcbw zzcbwVar = (zzcbw) obj;
        String str = (String) map.get("action");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from video GMSG.");
        } else if (str.equals("src")) {
            String str2 = (String) map.get("src");
            if (str2 == null) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("src missing from video GMSG.");
                return;
            }
            zzdlu zzdluVar = this.zza;
            Bundle bundle = new Bundle();
            bundle.putString("mediaUrl", str2);
            zzdluVar.zza.zzc(bundle);
        }
    }
}
