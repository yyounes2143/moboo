package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzhfq {
    final LinkedHashMap zza;

    public zzhfq(int i) {
        this.zza = zzhfs.zzb(i);
    }

    public final zzhfq zza(Object obj, zzhge zzhgeVar) {
        zzhgd.zza(obj, "key");
        zzhgd.zza(zzhgeVar, "provider");
        this.zza.put(obj, zzhgeVar);
        return this;
    }
}
