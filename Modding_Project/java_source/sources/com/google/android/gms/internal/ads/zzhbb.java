package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhbb implements Iterator {
    final /* synthetic */ zzhbe zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    public /* synthetic */ zzhbb(zzhbe zzhbeVar, zzhbd zzhbdVar) {
        this.zza = zzhbeVar;
    }

    private final Iterator zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        Map map;
        int i2 = this.zzb + 1;
        zzhbe zzhbeVar = this.zza;
        i = zzhbeVar.zzb;
        if (i2 >= i) {
            map = zzhbeVar.zzc;
            if (!map.isEmpty() && zza().hasNext()) {
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i;
        Object[] objArr;
        this.zzc = true;
        int i2 = this.zzb + 1;
        this.zzb = i2;
        zzhbe zzhbeVar = this.zza;
        i = zzhbeVar.zzb;
        if (i2 < i) {
            objArr = zzhbeVar.zza;
            return (zzhba) objArr[i2];
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        if (this.zzc) {
            this.zzc = false;
            zzhbe zzhbeVar = this.zza;
            zzhbeVar.zzo();
            int i2 = this.zzb;
            i = zzhbeVar.zzb;
            if (i2 < i) {
                this.zzb = i2 - 1;
                zzhbeVar.zzm(i2);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
