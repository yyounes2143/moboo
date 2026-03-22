package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxu extends zzayb {
    public zzaxu(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "ZfusKpZJ8SBLRBp0x6BWNud7pIzhvWIkVd0V0uxTu84aE2cfWFwKn+FMoh4smXgk", "VN0WZ1yYObu9EYHkfC3f48JbFLjOwnUEkH1X8nPNLSU=", zzaskVar, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzawj zzawjVar = new zzawj((String) this.zze.invoke(null, null));
            zzaskVar.zzp(zzawjVar.zza.longValue());
            zzaskVar.zzq(zzawjVar.zzb.longValue());
        }
    }
}
