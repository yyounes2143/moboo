package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxh extends zzayb {
    private final zzawp zzh;

    public zzaxh(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, zzawp zzawpVar) {
        super(zzawoVar, "L3kNtlg7QY6D9Xl7pPswVVS/MCBOYXcB4vflYd8GjH187tfdUwj4wLKq5xN70kha", "7KShiw4CrXn9e1sAZ1bf68KLoTIikFllvC3ALPO42ag=", zzaskVar, i, 85);
        this.zzh = zzawpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        Method method = this.zze;
        zzawp zzawpVar = this.zzh;
        long[] jArr = (long[]) method.invoke(null, Long.valueOf(zzawpVar.zzd()), Long.valueOf(zzawpVar.zzh()), Long.valueOf(zzawpVar.zzb()), Long.valueOf(zzawpVar.zzf()));
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzaskVar.zzt(jArr[0]);
            zzaskVar.zzs(jArr[1]);
        }
    }
}
