package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgno {
    private final zzgwp zza;
    private final Class zzb;

    public /* synthetic */ zzgno(zzgwp zzgwpVar, Class cls, zzgnn zzgnnVar) {
        this.zza = zzgwpVar;
        this.zzb = cls;
    }

    public static zzgno zzb(zzgnm zzgnmVar, zzgwp zzgwpVar, Class cls) {
        return new zzgnl(zzgwpVar, cls, zzgnmVar);
    }

    public abstract zzgex zza(zzgom zzgomVar) throws GeneralSecurityException;

    public final zzgwp zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
