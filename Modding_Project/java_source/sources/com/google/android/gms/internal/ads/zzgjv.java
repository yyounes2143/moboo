package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjv {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgjr
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgjv.zzd((zzggm) zzgexVar);
            }
        }, zzggm.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgjs
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgjv.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgjt
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgjv.zzc((zzggf) zzgekVar, zzgeyVar);
            }
        }, zzggf.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgju
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgjv.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzggf zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzgsa zzd2 = zzgsa.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    zzggj zzd3 = zzggm.zzd();
                    zzd3.zzb(zzd2.zzg().zzd());
                    zzd3.zza(zzd2.zzf().zza());
                    zzd3.zzc(16);
                    zzd3.zzd(zzf(zzgoiVar.zzc()));
                    zzggm zze2 = zzd3.zze();
                    zzggd zzc2 = zzggf.zzc();
                    zzc2.zzc(zze2);
                    zzc2.zzb(zzgwq.zzb(zzd2.zzg().zzA(), zzgeyVar));
                    zzc2.zza(zzgoiVar.zzf());
                    return zzc2.zzd();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing AesEaxcKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzggm zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzgsd zzd2 = zzgsd.zzd(zzgojVar.zzc().zzh(), zzgyc.zza());
                zzggj zzd3 = zzggm.zzd();
                zzd3.zzb(zzd2.zza());
                zzd3.zza(zzd2.zzf().zza());
                zzd3.zzc(16);
                zzd3.zzd(zzf(zzgojVar.zzc().zzg()));
                return zzd3.zze();
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzggf zzggfVar, zzgey zzgeyVar) {
        zzgry zzb2 = zzgsa.zzb();
        zzb2.zzb(zzg(zzggfVar.zzd()));
        byte[] zzd2 = zzggfVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzgsa) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzh(zzggfVar.zzd().zze()), zzggfVar.zzf());
    }

    public static /* synthetic */ zzgoj zzd(zzggm zzggmVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzgsb zzb2 = zzgsd.zzb();
        zzb2.zzb(zzg(zzggmVar));
        zzb2.zza(zzggmVar.zzc());
        zza2.zzc(((zzgsd) zzb2.zzbr()).zzaN());
        zza2.zza(zzh(zzggmVar.zze()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzggk zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza2 = zzguqVar.zza();
                        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                    }
                } else {
                    return zzggk.zzc;
                }
            }
            return zzggk.zzb;
        }
        return zzggk.zza;
    }

    private static zzgsg zzg(zzggm zzggmVar) throws GeneralSecurityException {
        zzgse zzb2 = zzgsg.zzb();
        zzb2.zza(zzggmVar.zzb());
        return (zzgsg) zzb2.zzbr();
    }

    private static zzguq zzh(zzggk zzggkVar) throws GeneralSecurityException {
        if (zzggk.zza.equals(zzggkVar)) {
            return zzguq.TINK;
        }
        if (zzggk.zzb.equals(zzggkVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzggk.zzc.equals(zzggkVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggkVar)));
    }
}
