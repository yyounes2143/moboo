package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnu {
    private final Map zza = new HashMap();

    public final zzgnu zza(zzgwp zzgwpVar, Object obj) throws GeneralSecurityException {
        List list;
        if (zzgwpVar.zza() != 0 && zzgwpVar.zza() != 5) {
            throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
        }
        Map map = this.zza;
        if (map.containsKey(zzgwpVar)) {
            list = (List) map.get(zzgwpVar);
        } else {
            ArrayList arrayList = new ArrayList();
            map.put(zzgwpVar, arrayList);
            list = arrayList;
        }
        list.add(obj);
        return this;
    }

    public final zzgnx zzb() {
        return new zzgnx(this.zza, null);
    }
}
