package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgnt implements Iterable {
    final /* synthetic */ List zza;
    final /* synthetic */ List zzb;

    public zzgnt(zzgnx zzgnxVar, List list, List list2) {
        this.zza = list;
        this.zzb = list2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzgnv(this.zza.iterator(), this.zzb.iterator(), null);
    }
}
