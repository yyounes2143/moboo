package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfvy {
    public static zzfvu zza(zzfvu zzfvuVar) {
        if (!(zzfvuVar instanceof zzfvx)) {
            if (zzfvuVar instanceof zzfvv) {
                return zzfvuVar;
            }
            if (zzfvuVar instanceof Serializable) {
                return new zzfvv(zzfvuVar);
            }
            return new zzfvx(zzfvuVar);
        }
        return zzfvuVar;
    }
}
