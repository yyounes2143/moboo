package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static Iterator Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map map) {
        return new zzaj(map.keySet().iterator());
    }

    public static zzao Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzak zzakVar, zzao zzaoVar, zzg zzgVar, List list) {
        if (zzakVar.zzj(zzaoVar.zzc())) {
            zzao zzk = zzakVar.zzk(zzaoVar.zzc());
            if (zzk instanceof zzai) {
                return ((zzai) zzk).zza(zzgVar, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", zzaoVar.zzc()));
        } else if ("hasOwnProperty".equals(zzaoVar.zzc())) {
            zzh.zza("hasOwnProperty", 1, list);
            if (zzakVar.zzj(zzgVar.zza((zzao) list.get(0)).zzc())) {
                return zzao.zzk;
            }
            return zzao.zzl;
        } else {
            throw new IllegalArgumentException(String.format("Object has no function %s", zzaoVar.zzc()));
        }
    }
}
