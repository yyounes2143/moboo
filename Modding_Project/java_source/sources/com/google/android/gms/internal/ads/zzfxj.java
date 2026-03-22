package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfxj extends AbstractCollection {
    final /* synthetic */ zzfxl zza;

    public zzfxj(zzfxl zzfxlVar) {
        this.zza = zzfxlVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.values().iterator();
        }
        return new zzfxe(zzfxlVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
