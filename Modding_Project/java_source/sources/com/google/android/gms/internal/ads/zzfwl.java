package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzfwl extends zzfyw {
    final /* synthetic */ zzfwv zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwl(zzfwv zzfwvVar, Map map) {
        super(map);
        this.zza = zzfwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyw, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zzfym.zzb(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.zzd.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this != obj && !this.zzd.keySet().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzd.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfyw, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfwk(this, this.zzd.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfyw, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        Collection collection = (Collection) this.zzd.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfwv zzfwvVar = this.zza;
            i = zzfwvVar.zzb;
            zzfwvVar.zzb = i - size;
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
