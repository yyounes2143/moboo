package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclv implements zzcld {
    private final zzfbt zza;

    public zzclv(zzfbt zzfbtVar) {
        this.zza = zzfbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        String str = (String) map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zza.zzb(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state", e);
            }
        }
    }
}
