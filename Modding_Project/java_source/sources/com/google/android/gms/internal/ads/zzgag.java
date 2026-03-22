package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
abstract class zzgag implements Iterator {
    final Iterator zzb;

    public zzgag(Iterator it) {
        it.getClass();
        this.zzb = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return zza(this.zzb.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzb.remove();
    }

    public abstract Object zza(Object obj);
}
