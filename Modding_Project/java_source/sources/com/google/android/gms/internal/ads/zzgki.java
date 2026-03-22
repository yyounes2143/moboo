package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgki {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgke
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgki.zzd((zzghi) zzgexVar);
            }
        }, zzghi.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgkf
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgki.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgkg
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgki.zzc((zzgha) zzgekVar, zzgeyVar);
            }
        }, zzgha.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgkh
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgki.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgha zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            try {
                zzgsp zzd2 = zzgsp.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    zzghf zzc2 = zzghi.zzc();
                    zzc2.zza(zzd2.zzf().zzd());
                    zzc2.zzb(zzf(zzgoiVar.zzc()));
                    zzghi zzc3 = zzc2.zzc();
                    zzggy zzc4 = zzgha.zzc();
                    zzc4.zzc(zzc3);
                    zzc4.zzb(zzgwq.zzb(zzd2.zzf().zzA(), zzgeyVar));
                    zzc4.zza(zzgoiVar.zzf());
                    return zzc4.zzd();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzghi zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            try {
                zzgss zzf2 = zzgss.zzf(zzgojVar.zzc().zzh(), zzgyc.zza());
                if (zzf2.zzb() == 0) {
                    zzghf zzc2 = zzghi.zzc();
                    zzc2.zza(zzf2.zza());
                    zzc2.zzb(zzf(zzgojVar.zzc().zzg()));
                    return zzc2.zzc();
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzgha zzghaVar, zzgey zzgeyVar) {
        zzgsn zzb2 = zzgsp.zzb();
        byte[] zzd2 = zzghaVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((zzgsp) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzg(zzghaVar.zzd().zzd()), zzghaVar.zzf());
    }

    public static /* synthetic */ zzgoj zzd(zzghi zzghiVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzgsq zzc2 = zzgss.zzc();
        zzc2.zza(zzghiVar.zzb());
        zza2.zzc(((zzgss) zzc2.zzbr()).zzaN());
        zza2.zza(zzg(zzghiVar.zzd()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzghg zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza2 = zzguqVar.zza();
                        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                    }
                } else {
                    return zzghg.zzc;
                }
            }
            return zzghg.zzb;
        }
        return zzghg.zza;
    }

    private static zzguq zzg(zzghg zzghgVar) throws GeneralSecurityException {
        if (zzghg.zza.equals(zzghgVar)) {
            return zzguq.TINK;
        }
        if (zzghg.zzb.equals(zzghgVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzghg.zzc.equals(zzghgVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzghgVar)));
    }
}
