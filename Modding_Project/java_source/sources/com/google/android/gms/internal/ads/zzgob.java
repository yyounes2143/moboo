package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgob {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgob(Class cls, Class cls2, zzgoa zzgoaVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzgob zzb(zzgnz zzgnzVar, Class cls, Class cls2) {
        return new zzgny(cls, cls2, zzgnzVar);
    }

    public abstract Object zza(zzgek zzgekVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
