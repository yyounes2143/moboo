package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhfz extends zzhfr {
    static {
        zzhfw.zza(Collections.EMPTY_MAP);
    }

    public /* synthetic */ zzhfz(Map map, zzhfx zzhfxVar) {
        super(map);
    }

    public static zzhfy zzc(int i) {
        return new zzhfy(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zzd */
    public final Map zzb() {
        LinkedHashMap zzb = zzhfs.zzb(zza().size());
        for (Map.Entry entry : zza().entrySet()) {
            zzb.put(entry.getKey(), ((zzhge) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(zzb);
    }
}
