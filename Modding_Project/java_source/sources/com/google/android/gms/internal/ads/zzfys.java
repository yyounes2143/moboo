package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfys {
    public static ArrayList zza(int i) {
        zzfwz.zza(i, "initialArraySize");
        return new ArrayList(i);
    }

    public static List zzb(List list, zzfur zzfurVar) {
        if (list instanceof RandomAccess) {
            return new zzfyp(list, zzfurVar);
        }
        return new zzfyr(list, zzfurVar);
    }
}
