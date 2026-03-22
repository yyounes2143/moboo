package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclb {
    private final Map zza;
    private final Map zzb;

    public zzclb(Map map, Map map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfcg zzfcgVar) throws Exception {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        for (zzfce zzfceVar : zzfcgVar.zzb.zzc) {
            Map map = this.zza;
            String str = zzfceVar.zza;
            if (map.containsKey(str) && (jSONObject2 = zzfceVar.zzb) != null) {
                ((zzcle) map.get(str)).zza(jSONObject2);
            } else {
                Map map2 = this.zzb;
                if (map2.containsKey(str) && (jSONObject = zzfceVar.zzb) != null) {
                    zzcld zzcldVar = (zzcld) map2.get(str);
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String optString = jSONObject.optString(next);
                        if (optString != null) {
                            hashMap.put(next, optString);
                        }
                    }
                    zzcldVar.zza(hashMap);
                }
            }
        }
    }
}
