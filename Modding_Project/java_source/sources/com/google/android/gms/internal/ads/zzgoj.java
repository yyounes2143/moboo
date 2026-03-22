package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgoj implements zzgom {
    private final zzgwp zza;
    private final zzgtq zzb;

    private zzgoj(zzgtq zzgtqVar, zzgwp zzgwpVar) {
        this.zzb = zzgtqVar;
        this.zza = zzgwpVar;
    }

    public static zzgoj zza(zzgtq zzgtqVar) throws GeneralSecurityException {
        return new zzgoj(zzgtqVar, zzgou.zza(zzgtqVar.zzi()));
    }

    public static zzgoj zzb(zzgtq zzgtqVar) {
        return new zzgoj(zzgtqVar, zzgou.zzb(zzgtqVar.zzi()));
    }

    public final zzgtq zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgom
    public final zzgwp zzd() {
        return this.zza;
    }
}
