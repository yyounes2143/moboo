package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbkc implements zzbjw {
    private final Context zza;
    private final Map zzb;

    public zzbkc(Context context, Map map) {
        this.zza = context;
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        char c;
        zzbyj zzo = com.google.android.gms.ads.internal.zzv.zzo();
        Context context = this.zza;
        if (!zzo.zzp(context)) {
            return;
        }
        String str = (String) map.get("eventName");
        String str2 = (String) map.get("eventId");
        int hashCode = str.hashCode();
        if (hashCode != 94399) {
            if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("_ac")) {
                    c = 0;
                }
                c = 65535;
            }
        } else {
            if (str.equals("_aa")) {
                c = 2;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("logScionEvent gmsg contained unsupported eventName");
                    return;
                }
                com.google.android.gms.ads.internal.zzv.zzo().zzh(context, str2);
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzo().zzk(context, str2, (Map) this.zzb.get("_ai"));
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzo().zzj(context, str2, (Map) this.zzb.get("_ac"));
    }
}
