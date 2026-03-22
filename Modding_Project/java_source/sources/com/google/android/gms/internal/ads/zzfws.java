package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzfws extends AbstractCollection {
    final Object zza;
    Collection zzb;
    final zzfws zzc;
    final Collection zzd;
    final /* synthetic */ zzfwv zze;

    public zzfws(zzfwv zzfwvVar, Object obj, Collection collection, zzfws zzfwsVar) {
        Collection collection2;
        this.zze = zzfwvVar;
        this.zza = obj;
        this.zzb = collection;
        this.zzc = zzfwsVar;
        if (zzfwsVar == null) {
            collection2 = null;
        } else {
            collection2 = zzfwsVar.zzb;
        }
        this.zzd = collection2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        zzb();
        boolean isEmpty = this.zzb.isEmpty();
        boolean add = this.zzb.add(obj);
        if (add) {
            zzfwv zzfwvVar = this.zze;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i + 1;
            if (isEmpty) {
                zza();
                return true;
            }
        }
        return add;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.zzb.addAll(collection);
        if (addAll) {
            int size2 = this.zzb.size();
            zzfwv zzfwvVar = this.zze;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i + (size2 - size);
            if (size == 0) {
                zza();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i;
        int size = size();
        if (size == 0) {
            return;
        }
        this.zzb.clear();
        zzfwv zzfwvVar = this.zze;
        i = zzfwvVar.zzb;
        zzfwvVar.zzb = i - size;
        zzc();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        zzb();
        return this.zzb.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.zzb.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.zzb.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zzb();
        return this.zzb.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzb();
        return new zzfwr(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        zzb();
        boolean remove = this.zzb.remove(obj);
        if (remove) {
            zzfwv zzfwvVar = this.zze;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i - 1;
            zzc();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.zzb.removeAll(collection);
        if (removeAll) {
            int size2 = this.zzb.size();
            zzfwv zzfwvVar = this.zze;
            int i2 = size2 - size;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i + i2;
            zzc();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i;
        collection.getClass();
        int size = size();
        boolean retainAll = this.zzb.retainAll(collection);
        if (retainAll) {
            int size2 = this.zzb.size();
            zzfwv zzfwvVar = this.zze;
            int i2 = size2 - size;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i + i2;
            zzc();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zzb();
        return this.zzb.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.zzb.toString();
    }

    public final void zza() {
        Map map;
        zzfws zzfwsVar = this.zzc;
        if (zzfwsVar != null) {
            zzfwsVar.zza();
            return;
        }
        zzfwv zzfwvVar = this.zze;
        Object obj = this.zza;
        map = zzfwvVar.zza;
        map.put(obj, this.zzb);
    }

    public final void zzb() {
        Map map;
        zzfws zzfwsVar = this.zzc;
        if (zzfwsVar != null) {
            zzfwsVar.zzb();
            if (zzfwsVar.zzb != this.zzd) {
                throw new ConcurrentModificationException();
            }
        } else if (this.zzb.isEmpty()) {
            zzfwv zzfwvVar = this.zze;
            Object obj = this.zza;
            map = zzfwvVar.zza;
            Collection collection = (Collection) map.get(obj);
            if (collection != null) {
                this.zzb = collection;
            }
        }
    }

    public final void zzc() {
        Map map;
        zzfws zzfwsVar = this.zzc;
        if (zzfwsVar != null) {
            zzfwsVar.zzc();
        } else if (this.zzb.isEmpty()) {
            zzfwv zzfwvVar = this.zze;
            Object obj = this.zza;
            map = zzfwvVar.zza;
            map.remove(obj);
        }
    }
}
