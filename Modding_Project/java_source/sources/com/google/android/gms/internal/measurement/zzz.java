package com.google.android.gms.internal.measurement;

import com.google.common.annotations.VisibleForTesting;
import java.util.Collections;
import java.util.TreeMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzz {
    @VisibleForTesting
    final TreeMap zza = new TreeMap();
    @VisibleForTesting
    final TreeMap zzb = new TreeMap();

    private static final int zzc(zzg zzgVar, zzan zzanVar, zzao zzaoVar) {
        zzao zza = zzanVar.zza(zzgVar, Collections.singletonList(zzaoVar));
        if (zza instanceof zzah) {
            return zzh.zzg(zza.zzd().doubleValue());
        }
        return -1;
    }

    public final void zza(String str, int i, zzan zzanVar, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.zzb;
        } else if ("edit".equals(str2)) {
            treeMap = this.zza;
        } else {
            throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(str2)));
        }
        if (treeMap.containsKey(Integer.valueOf(i))) {
            i = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i), zzanVar);
    }

    public final void zzb(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        TreeMap treeMap = this.zza;
        for (Integer num : treeMap.keySet()) {
            zzaa clone = zzabVar.zzc().clone();
            int zzc = zzc(zzgVar, (zzan) treeMap.get(num), zzlVar);
            if (zzc == 2 || zzc == -1) {
                zzabVar.zzd(clone);
            }
        }
        TreeMap treeMap2 = this.zzb;
        for (Integer num2 : treeMap2.keySet()) {
            zzc(zzgVar, (zzan) treeMap2.get(num2), zzlVar);
        }
    }
}
