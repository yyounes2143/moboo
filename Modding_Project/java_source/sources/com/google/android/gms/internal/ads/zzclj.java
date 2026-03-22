package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclj implements zzcld {
    private final zzdvc zza;

    public zzclj(zzdvc zzdvcVar) {
        this.zza = zzdvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        char c;
        String str = (String) map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("flick")) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                this.zza.zzm(zzduy.NONE);
                return;
            } else {
                this.zza.zzm(zzduy.FLICK);
                return;
            }
        }
        this.zza.zzm(zzduy.SHAKE);
    }
}
