package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmz {
    private final zzfma zza;
    private final ArrayList zzb;

    public zzfmz(zzfma zzfmaVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.zzb = arrayList;
        this.zza = zzfmaVar;
        arrayList.add(str);
    }

    public final zzfma zza() {
        return this.zza;
    }

    public final ArrayList zzb() {
        return this.zzb;
    }

    public final void zzc(String str) {
        this.zzb.add(str);
    }
}
