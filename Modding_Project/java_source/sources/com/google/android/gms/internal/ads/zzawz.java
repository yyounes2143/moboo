package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzawz extends zzayb {
    public zzawz(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "G6tpJfcfsXNaUQhDJn9Qju0vku5y/oa1fF8zdhZ2CFQQ0yJpdIBybAnW8Cnq7FGe", "fIK5mOsPYa+LmT3H4ctpyCeP1IjF5A1bfJROt5z4ppI=", zzaskVar, i, 89);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        String str = (String) this.zze.invoke(null, null);
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzaskVar.zzg(str);
        }
    }
}
