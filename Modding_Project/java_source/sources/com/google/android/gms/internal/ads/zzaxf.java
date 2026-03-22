package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxf extends zzayb {
    private final long zzh;

    public zzaxf(zzawo zzawoVar, String str, String str2, zzask zzaskVar, long j, int i, int i2) {
        super(zzawoVar, "bz3lIaHWpCquphICM8d57wBZcB7vA3QBLpLSSF22FzCVTv7HI8nqsTojeybBUatg", "nJy2u10FH1OsIt1ONuXNmQ7d3Q3+he826LogUVDBAds=", zzaskVar, i, 25);
        this.zzh = j;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zze.invoke(null, null)).longValue();
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            try {
                zzaskVar.zzr(longValue);
                long j = this.zzh;
                if (j != 0) {
                    zzaskVar.zzR(longValue - j);
                    zzaskVar.zzS(j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
