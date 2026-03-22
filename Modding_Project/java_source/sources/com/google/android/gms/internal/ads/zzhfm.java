package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhfm extends AbstractList {
    private static final zzhfn zzc = zzhfn.zzb(zzhfm.class);
    final List zza;
    final Iterator zzb;

    public zzhfm(List list, Iterator it) {
        this.zza = list;
        this.zzb = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        List list = this.zza;
        if (list.size() > i) {
            return list.get(i);
        }
        Iterator it = this.zzb;
        if (it.hasNext()) {
            list.add(it.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzhfl(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzhfn zzhfnVar = zzc;
        zzhfnVar.zza("potentially expensive size() call");
        zzhfnVar.zza("blowup running");
        while (true) {
            Iterator it = this.zzb;
            if (it.hasNext()) {
                this.zza.add(it.next());
            } else {
                return this.zza.size();
            }
        }
    }
}
