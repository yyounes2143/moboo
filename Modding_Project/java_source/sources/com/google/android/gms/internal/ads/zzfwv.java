package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfwv extends zzfwy implements Serializable {
    private final transient Map zza;
    private transient int zzb;

    public zzfwv(Map map) {
        zzfvc.zze(map.isEmpty());
        this.zza = map;
    }

    public static /* bridge */ /* synthetic */ void zzo(zzfwv zzfwvVar, Object obj) {
        Object obj2;
        try {
            obj2 = zzfwvVar.zza.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfwvVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    public Collection zzb(Collection collection) {
        throw null;
    }

    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfza
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfwy
    public final Collection zzf() {
        return new zzfwx(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfwy
    public final Iterator zzg() {
        return new zzfwf(this);
    }

    public final List zzh(Object obj, List list, zzfws zzfwsVar) {
        if (list instanceof RandomAccess) {
            return new zzfwo(this, obj, list, zzfwsVar);
        }
        return new zzfwu(this, obj, list, zzfwsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfwy
    public Map zzj() {
        throw null;
    }

    public final Map zzk() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfwm(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfwp(this, (SortedMap) map);
        }
        return new zzfwi(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfwy
    public Set zzl() {
        throw null;
    }

    public final Set zzm() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfwn(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfwq(this, (SortedMap) map);
        }
        return new zzfwl(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfza
    public final void zzp() {
        Map map = this.zza;
        for (Collection collection : map.values()) {
            collection.clear();
        }
        map.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfwy, com.google.android.gms.internal.ads.zzfza
    public final boolean zzq(Object obj, Object obj2) {
        Map map = this.zza;
        Collection collection = (Collection) map.get(obj);
        if (collection == null) {
            Collection zza = zza();
            if (zza.add(obj2)) {
                this.zzb++;
                map.put(obj, zza);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(obj2)) {
            this.zzb++;
            return true;
        } else {
            return false;
        }
    }
}
