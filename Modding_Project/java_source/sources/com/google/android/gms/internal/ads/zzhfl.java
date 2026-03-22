package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhfl implements Iterator {
    int zza = 0;
    final /* synthetic */ zzhfm zzb;

    public zzhfl(zzhfm zzhfmVar) {
        this.zzb = zzhfmVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zza;
        zzhfm zzhfmVar = this.zzb;
        if (i >= zzhfmVar.zza.size() && !zzhfmVar.zzb.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.zza;
        zzhfm zzhfmVar = this.zzb;
        List list = zzhfmVar.zza;
        if (i < list.size()) {
            int i2 = this.zza;
            this.zza = i2 + 1;
            return list.get(i2);
        }
        list.add(zzhfmVar.zzb.next());
        return next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
