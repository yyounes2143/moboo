package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgme {
    private final zzgwp zza;
    private final Class zzb;

    public /* synthetic */ zzgme(zzgwp zzgwpVar, Class cls, zzgmd zzgmdVar) {
        this.zza = zzgwpVar;
        this.zzb = cls;
    }

    public static zzgme zzb(zzgmc zzgmcVar, zzgwp zzgwpVar, Class cls) {
        return new zzgmb(zzgwpVar, cls, zzgmcVar);
    }

    public abstract zzgek zza(zzgom zzgomVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException;

    public final zzgwp zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
