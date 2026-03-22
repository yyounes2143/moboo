package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgfq implements zzgoh {
    private static final zzgfq zza = new zzgfq();
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfm
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgkx.zzb((zzgmo) zzgekVar);
        }
    }, zzgmo.class, zzgee.class);

    public static void zzc() throws GeneralSecurityException {
        zzgng.zza().zzd(zza);
        zzgng.zza().zzc(zzb);
    }

    public static void zzd(zzgod zzgodVar) throws GeneralSecurityException {
        zzgodVar.zzb(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zza() {
        return zzgee.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zzb() {
        return zzgee.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final /* bridge */ /* synthetic */ Object zze(zzgmj zzgmjVar, zzgms zzgmsVar, zzgoc zzgocVar) throws GeneralSecurityException {
        zzgmt zzgmtVar;
        zzgmt zzgmtVar2;
        zzgwp zzc;
        zzgnu zzgnuVar = new zzgnu();
        for (int i = 0; i < zzgmjVar.zza(); i++) {
            zzger zzb2 = ((zzget) zzgmjVar).zzb(i);
            if (zzb2.zzc().equals(zzgem.zza)) {
                zzgek zzb3 = zzb2.zzb();
                if (zzb3 instanceof zzgfk) {
                    zzc = ((zzgfk) zzb3).zzb();
                } else if (zzb3 instanceof zzgmo) {
                    zzc = ((zzgmo) zzb3).zzc();
                } else {
                    String name = zzb3.getClass().getName();
                    String valueOf = String.valueOf(zzb3.zza());
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                }
                zzgnuVar.zza(zzc, new zzgfn((zzgee) zzgocVar.zza(zzb2), zzb2.zza()));
            }
        }
        if (!zzgmsVar.zza()) {
            zzgmu zza2 = zzgne.zzb().zza();
            zzgmt zza3 = zza2.zza(zzgmjVar, zzgmsVar, "aead", "encrypt");
            zzgmtVar2 = zza2.zza(zzgmjVar, zzgmsVar, "aead", "decrypt");
            zzgmtVar = zza3;
        } else {
            zzgmtVar = zzgmw.zza;
            zzgmtVar2 = zzgmtVar;
        }
        zzget zzgetVar = (zzget) zzgmjVar;
        return new zzgfo(new zzgfn((zzgee) zzgocVar.zza(zzgetVar.zzc()), zzgetVar.zzc().zza()), zzgnuVar.zzb(), zzgmtVar, zzgmtVar2, null);
    }
}
