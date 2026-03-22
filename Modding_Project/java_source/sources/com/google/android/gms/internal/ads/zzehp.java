package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehp implements zzedh {
    private final Map zza = new HashMap();
    private final zzdpt zzb;

    public zzehp(zzdpt zzdptVar) {
        this.zzb = zzdptVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedh
    @Nullable
    public final zzedi zza(String str, JSONObject jSONObject) throws zzfcw {
        zzedi zzediVar;
        synchronized (this) {
            try {
                Map map = this.zza;
                zzediVar = (zzedi) map.get(str);
                if (zzediVar == null) {
                    zzediVar = new zzedi(this.zzb.zzc(str, jSONObject), new zzeex(), str);
                    map.put(str, zzediVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzediVar;
    }
}
