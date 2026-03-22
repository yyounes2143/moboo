package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfye {
    Object[] zza;
    int zzb;
    zzfyd zzc;

    public zzfye() {
        this(4);
    }

    private final void zzd(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzfxw.zze(length, i2));
        }
    }

    public final zzfye zza(Object obj, Object obj2) {
        zzd(this.zzb + 1);
        zzfwz.zzb(obj, obj2);
        Object[] objArr = this.zza;
        int i = this.zzb;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.zzb = i + 1;
        return this;
    }

    public final zzfye zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzd(this.zzb + ((Collection) iterable).size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfyf zzc() {
        zzfyd zzfydVar = this.zzc;
        if (zzfydVar == null) {
            zzfzt zzj = zzfzt.zzj(this.zzb, this.zza, this);
            zzfyd zzfydVar2 = this.zzc;
            if (zzfydVar2 == null) {
                return zzj;
            }
            throw zzfydVar2.zza();
        }
        throw zzfydVar.zza();
    }

    public zzfye(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}
