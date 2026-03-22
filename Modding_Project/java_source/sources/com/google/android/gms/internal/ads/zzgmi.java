package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgmi {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgmi(Class cls, Class cls2, zzgmh zzgmhVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzgmi zzb(zzgmg zzgmgVar, Class cls, Class cls2) {
        return new zzgmf(cls, cls2, zzgmgVar);
    }

    public abstract zzgom zza(zzgek zzgekVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
