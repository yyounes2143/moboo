package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgae {
    public static int zza(Set set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    public static zzgac zzb(Set set, Set set2) {
        zzfvc.zzc(set, "set1");
        zzfvc.zzc(set2, "set2");
        return new zzfzy(set, set2);
    }

    public static Set zzc(Set set, zzfvd zzfvdVar) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (sortedSet instanceof zzfzz) {
                zzfzz zzfzzVar = (zzfzz) sortedSet;
                return new zzgaa((SortedSet) zzfzzVar.zza, zzfvg.zza(zzfzzVar.zzb, zzfvdVar));
            }
            sortedSet.getClass();
            return new zzgaa(sortedSet, zzfvdVar);
        } else if (set instanceof zzfzz) {
            zzfzz zzfzzVar2 = (zzfzz) set;
            return new zzfzz((Set) zzfzzVar2.zza, zzfvg.zza(zzfzzVar2.zzb, zzfvdVar));
        } else {
            set.getClass();
            return new zzfzz(set, zzfvdVar);
        }
    }

    public static boolean zzd(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean zze(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzfzk) {
            collection = ((zzfzk) collection).zza();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            collection.getClass();
            boolean z = false;
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        return zzf(set, collection.iterator());
    }

    public static boolean zzf(Set set, Iterator it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }
}
