package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpj implements zzgoh {
    private static final zzgpj zza = new zzgpj();

    private zzgpj() {
    }

    public static void zzc() throws GeneralSecurityException {
        zzgng.zza().zzd(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zza() {
        return zzgpg.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zzb() {
        return zzgpg.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final /* bridge */ /* synthetic */ Object zze(zzgmj zzgmjVar, zzgms zzgmsVar, zzgoc zzgocVar) throws GeneralSecurityException {
        zzgwp zzc;
        zzger zzc2 = ((zzget) zzgmjVar).zzc();
        zzgnu zzgnuVar = new zzgnu();
        for (int i = 0; i < zzgmjVar.zza(); i++) {
            zzger zzb = ((zzget) zzgmjVar).zzb(i);
            if (zzb.zzc().equals(zzgem.zza)) {
                zzgpg zzgpgVar = (zzgpg) zzgocVar.zza(zzb);
                zzgek zzb2 = zzb.zzb();
                if (zzb2 instanceof zzgpy) {
                    zzc = ((zzgpy) zzb2).zzd();
                } else if (zzb2 instanceof zzgmo) {
                    zzc = ((zzgmo) zzb2).zzc();
                } else {
                    String name = zzb2.getClass().getName();
                    String valueOf = String.valueOf(zzb2.zza());
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                }
                zzgnuVar.zza(zzc, zzgpgVar);
            }
        }
        return new zzgph(zzgnuVar.zzb(), (zzgpg) zzgocVar.zza(zzc2), null);
    }
}
