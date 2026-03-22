package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxq extends zzayb {
    public zzaxq(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "4HRSTLOwWZkuNJXWodn1qJJgWaIIvv19EC2kc5Tc35PPh8H51LV3J7XsfwYf6N8B", "x59qZ2C8s/H9o8A43vx+gBO6K2fFzzXR0hkzA9nrVNs=", zzaskVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        int i = 1;
        try {
            boolean booleanValue = ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue();
            zzask zzaskVar = this.zzd;
            if (true == booleanValue) {
                i = 2;
            }
            zzaskVar.zzac(i);
        } catch (InvocationTargetException unused) {
            this.zzd.zzac(3);
        }
    }
}
