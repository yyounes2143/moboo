package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfxh extends AbstractSet {
    final /* synthetic */ zzfxl zza;

    public zzfxh(zzfxl zzfxlVar) {
        this.zza = zzfxlVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.keySet().iterator();
        }
        return new zzfxc(zzfxlVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object zzy;
        Object obj2;
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl == null) {
            zzy = zzfxlVar.zzy(obj);
            obj2 = zzfxl.zzd;
            if (zzy == obj2) {
                return false;
            }
            return true;
        }
        return zzl.keySet().remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
