package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxl extends zzayb {
    private final zzawg zzh;

    public zzaxl(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, zzawg zzawgVar) {
        super(zzawoVar, "LLos9e8Ql/sv7oIXEM/FCVf2w4qxksYVSJjnFOiKAZfJ/fOB+3TAGyZw1OkiJRsU", "lmzfMnrRinUoapvwdylnImZxEAh1S0BzbHZ4/bdyts0=", zzaskVar, i, 94);
        this.zzh = zzawgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        int intValue = ((Integer) this.zze.invoke(null, this.zzh.zza())).intValue();
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzaskVar.zzab(zzasw.zza(intValue));
        }
    }
}
