package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfyj extends zzfwd {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzfvd zzb;

    public zzfyj(Iterator it, zzfvd zzfvdVar) {
        this.zza = it;
        this.zzb = zzfvdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwd
    public final Object zza() {
        zzfvd zzfvdVar;
        Object next;
        do {
            Iterator it = this.zza;
            if (it.hasNext()) {
                zzfvdVar = this.zzb;
                next = it.next();
            } else {
                zzb();
                return null;
            }
        } while (!zzfvdVar.zza(next));
        return next;
    }
}
