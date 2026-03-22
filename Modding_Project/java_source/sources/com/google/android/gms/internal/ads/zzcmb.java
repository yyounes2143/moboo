package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmb implements zzcld {
    private final zzdvc zza;

    public zzcmb(zzdvc zzdvcVar) {
        this.zza = zzdvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzo(str.equals("true"));
    }
}
