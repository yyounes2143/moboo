package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfxf extends AbstractSet {
    final /* synthetic */ zzfxl zza;

    public zzfxf(zzfxl zzfxlVar) {
        this.zza = zzfxlVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int zzw;
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzw = zzfxlVar.zzw(entry.getKey());
            if (zzw != -1 && zzfuz.zza(zzfxl.zzj(zzfxlVar, zzw), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().iterator();
        }
        return new zzfxd(zzfxlVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int zzv;
        int[] zzA;
        Object[] zzB;
        Object[] zzC;
        int i;
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().remove(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (!zzfxlVar.zzr()) {
                zzv = zzfxlVar.zzv();
                Object key = entry.getKey();
                Object value = entry.getValue();
                Object zzi = zzfxl.zzi(zzfxlVar);
                zzA = zzfxlVar.zzA();
                zzB = zzfxlVar.zzB();
                zzC = zzfxlVar.zzC();
                int zzb = zzfxm.zzb(key, value, zzv, zzi, zzA, zzB, zzC);
                if (zzb != -1) {
                    zzfxlVar.zzq(zzb, zzv);
                    i = zzfxlVar.zzg;
                    zzfxlVar.zzg = i - 1;
                    zzfxlVar.zzo();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
