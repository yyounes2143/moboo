package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgns {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgns(Class cls, Class cls2, zzgnr zzgnrVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzgns zzb(zzgnq zzgnqVar, Class cls, Class cls2) {
        return new zzgnp(cls, cls2, zzgnqVar);
    }

    public abstract zzgom zza(zzgex zzgexVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
