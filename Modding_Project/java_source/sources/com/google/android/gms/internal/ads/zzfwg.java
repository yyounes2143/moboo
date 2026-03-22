package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfwg extends zzfyv {
    final /* synthetic */ zzfwi zza;

    public zzfwg(zzfwi zzfwiVar) {
        this.zza = zzfwiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return zzfxb.zza(this.zza.zza.entrySet(), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfwh(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        zzfwi zzfwiVar = this.zza;
        zzfwv.zzo(zzfwiVar.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfyv
    public final Map zza() {
        return this.zza;
    }
}
