package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfwh implements Iterator {
    final Iterator zza;
    Collection zzb;
    final /* synthetic */ zzfwi zzc;

    public zzfwh(zzfwi zzfwiVar) {
        this.zzc = zzfwiVar;
        this.zza = zzfwiVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        this.zzb = (Collection) entry.getValue();
        return this.zzc.zza(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        int i;
        if (this.zzb != null) {
            z = true;
        } else {
            z = false;
        }
        zzfvc.zzm(z, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzfwv zzfwvVar = this.zzc.zzb;
        i = zzfwvVar.zzb;
        zzfwvVar.zzb = i - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
