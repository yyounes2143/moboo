package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgnv implements Iterator {
    private final Iterator zza;
    private final Iterator zzb;

    public /* synthetic */ zzgnv(Iterator it, Iterator it2, zzgnw zzgnwVar) {
        this.zza = it;
        this.zzb = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zza.hasNext() && !this.zzb.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it = this.zza;
        if (it.hasNext()) {
            return it.next();
        }
        return this.zzb.next();
    }
}
