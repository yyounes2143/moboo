package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxd extends zzayb {
    public zzaxd(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "ptULCqFpkxWHwh0HVZoMpk0Xr91rKWbEROvrSrbrHF8bfcD+J1G9qxssmqT2HcO0", "gABvx04l+Prrr7UIzRlxJTdbXEyGkYLmeTdDcw+INuA=", zzaskVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzask zzaskVar = this.zzd;
        zzaskVar.zzm(-1L);
        zzaskVar.zzl(-1L);
        int[] iArr = (int[]) this.zze.invoke(null, this.zza.zzb());
        synchronized (zzaskVar) {
            try {
                zzaskVar.zzm(iArr[0]);
                zzaskVar.zzl(iArr[1]);
                int i = iArr[2];
                if (i != Integer.MIN_VALUE) {
                    zzaskVar.zzk(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
