package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhgh implements zzhfv {
    private final List zza;
    private final List zzb;

    static {
        zzhfw.zza(Collections.EMPTY_SET);
    }

    public /* synthetic */ zzhgh(List list, List list2, zzhgf zzhgfVar) {
        this.zza = list;
        this.zzb = list2;
    }

    public static zzhgg zza(int i, int i2) {
        return new zzhgg(i, i2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zzc */
    public final Set zzb() {
        List list = this.zza;
        int size = list.size();
        List list2 = this.zzb;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i = 0; i < size2; i++) {
            Collection collection = (Collection) ((zzhge) list2.get(i)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet zza = zzhfs.zza(size);
        int size3 = list.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object zzb = ((zzhge) list.get(i2)).zzb();
            zzb.getClass();
            zza.add(zzb);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                obj.getClass();
                zza.add(obj);
            }
        }
        return Collections.unmodifiableSet(zza);
    }
}
