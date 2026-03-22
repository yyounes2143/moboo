package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgmk implements zzgel {
    final String zza;
    final Class zzb;
    final zzgtk zzc;

    public zzgmk(String str, Class cls, zzgtk zzgtkVar, zzhal zzhalVar) {
        this.zza = str;
        this.zzb = cls;
        this.zzc = zzgtkVar;
    }

    public static zzgel zzd(String str, Class cls, zzgtk zzgtkVar, zzhal zzhalVar) {
        return new zzgmk(str, cls, zzgtkVar, zzhalVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgel
    public final zzgtm zza(zzgxk zzgxkVar) throws GeneralSecurityException {
        zzgto zza = zzgtq.zza();
        zza.zzb(this.zza);
        zza.zzc(zzgxkVar);
        zza.zza(zzguq.RAW);
        zzgoi zzgoiVar = (zzgoi) zzgnj.zzc().zzd(zzgmz.zzb().zza(zzgnj.zzc().zzb(zzgoj.zza((zzgtq) zza.zzbr())), null), zzgoi.class, zzgej.zza());
        zzgtj zza2 = zzgtm.zza();
        zza2.zzb(zzgoiVar.zzg());
        zza2.zzc(zzgoiVar.zze());
        zza2.zza(zzgoiVar.zzb());
        return (zzgtm) zza2.zzbr();
    }

    @Override // com.google.android.gms.internal.ads.zzgel
    public final Class zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgel
    public final Object zzc(zzgxk zzgxkVar) throws GeneralSecurityException {
        return zzgng.zza().zzb(zzgnj.zzc().zza(zzgoi.zza(this.zza, zzgxkVar, this.zzc, zzguq.RAW, null), zzgej.zza()), this.zzb);
    }
}
