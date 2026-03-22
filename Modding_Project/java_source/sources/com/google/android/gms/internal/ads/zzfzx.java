package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzx extends zzfwd {
    final Iterator zza;
    final /* synthetic */ Set zzb;
    final /* synthetic */ Set zzc;

    public zzfzx(zzfzy zzfzyVar, Set set, Set set2) {
        this.zzb = set;
        this.zzc = set2;
        this.zza = set.iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzfwd
    public final Object zza() {
        Set set;
        Object next;
        do {
            Iterator it = this.zza;
            if (it.hasNext()) {
                set = this.zzc;
                next = it.next();
            } else {
                zzb();
                return null;
            }
        } while (!set.contains(next));
        return next;
    }
}
