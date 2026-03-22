package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
class zzfwr implements Iterator {
    final Iterator zza;
    final Collection zzb;
    final /* synthetic */ zzfws zzc;

    public zzfwr(zzfws zzfwsVar, Iterator it) {
        this.zzc = zzfwsVar;
        this.zzb = zzfwsVar.zzb;
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.zza.remove();
        zzfws zzfwsVar = this.zzc;
        zzfwv zzfwvVar = zzfwsVar.zze;
        i = zzfwvVar.zzb;
        zzfwvVar.zzb = i - 1;
        zzfwsVar.zzc();
    }

    public final void zza() {
        zzfws zzfwsVar = this.zzc;
        zzfwsVar.zzb();
        if (zzfwsVar.zzb == this.zzb) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public zzfwr(zzfws zzfwsVar) {
        Iterator it;
        this.zzc = zzfwsVar;
        Collection collection = zzfwsVar.zzb;
        this.zzb = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.zza = it;
    }
}
