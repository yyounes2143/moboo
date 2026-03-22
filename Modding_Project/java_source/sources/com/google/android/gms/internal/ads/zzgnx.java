package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnx {
    private static final zzgwp zza = zzgwp.zzb(new byte[0]);
    private final Map zzb;

    public final Iterable zza(byte[] bArr) {
        List list;
        Map map = this.zzb;
        List list2 = (List) map.get(zza);
        if (bArr.length >= 5) {
            list = (List) map.get(zzgwp.zzc(bArr, 0, 5));
        } else {
            list = null;
        }
        if (list2 == null && list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return list;
        }
        if (list == null) {
            return list2;
        }
        return new zzgnt(this, list, list2);
    }
}
