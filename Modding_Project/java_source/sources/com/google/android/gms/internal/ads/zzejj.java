package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import j$.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzejj {
    private final ConcurrentHashMap zza = new ConcurrentHashMap();
    private final zzdpt zzb;

    public zzejj(zzdpt zzdptVar) {
        this.zzb = zzdptVar;
    }

    @CheckForNull
    public final zzbrk zza(String str) {
        ConcurrentHashMap concurrentHashMap = this.zza;
        if (concurrentHashMap.containsKey(str)) {
            return (zzbrk) concurrentHashMap.get(str);
        }
        return null;
    }

    public final void zzb(String str) {
        try {
            this.zza.put(str, this.zzb.zzb(str));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Couldn't create RTB adapter : ", e);
        }
    }
}
