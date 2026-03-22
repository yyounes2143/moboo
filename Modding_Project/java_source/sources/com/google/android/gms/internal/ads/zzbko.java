package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbko implements zzbjw {
    private final zzbkn zza;

    public zzbko(zzbkn zzbknVar) {
        this.zza = zzbknVar;
    }

    public static void zzb(zzcfb zzcfbVar, zzbkn zzbknVar) {
        zzcfbVar.zzag("/reward", new zzbko(zzbknVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            zzbwj zzbwjVar = null;
            try {
                int parseInt = Integer.parseInt((String) map.get("amount"));
                String str2 = (String) map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzbwjVar = new zzbwj(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to parse reward amount.", e);
            }
            this.zza.zza(zzbwjVar);
        } else if ("video_start".equals(str)) {
            this.zza.zzc();
        } else if ("video_complete".equals(str)) {
            this.zza.zzb();
        }
    }
}
