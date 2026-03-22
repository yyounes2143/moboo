package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgkc {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgjy
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgkc.zzd((zzggx) zzgexVar);
            }
        }, zzggx.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgjz
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgkc.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgka
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgkc.zzc((zzggp) zzgekVar, zzgeyVar);
            }
        }, zzggp.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgkb
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgkc.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzggp zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzgsj zzd2 = zzgsj.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    zzggu zzc2 = zzggx.zzc();
                    zzc2.zzb(zzd2.zzf().zzd());
                    zzc2.zza(12);
                    zzc2.zzc(16);
                    zzc2.zzd(zzf(zzgoiVar.zzc()));
                    zzggx zze2 = zzc2.zze();
                    zzggn zzc3 = zzggp.zzc();
                    zzc3.zzc(zze2);
                    zzc3.zzb(zzgwq.zzb(zzd2.zzf().zzA(), zzgeyVar));
                    zzc3.zza(zzgoiVar.zzf());
                    return zzc3.zzd();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing AesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzggx zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzgsm zzf2 = zzgsm.zzf(zzgojVar.zzc().zzh(), zzgyc.zza());
                if (zzf2.zzb() == 0) {
                    zzggu zzc2 = zzggx.zzc();
                    zzc2.zzb(zzf2.zza());
                    zzc2.zza(12);
                    zzc2.zzc(16);
                    zzc2.zzd(zzf(zzgojVar.zzc().zzg()));
                    return zzc2.zze();
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzggp zzggpVar, zzgey zzgeyVar) {
        zzgsh zzb2 = zzgsj.zzb();
        byte[] zzd2 = zzggpVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzgsj) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzg(zzggpVar.zzd().zzd()), zzggpVar.zzf());
    }

    public static /* synthetic */ zzgoj zzd(zzggx zzggxVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzgsk zzc2 = zzgsm.zzc();
        zzc2.zza(zzggxVar.zzb());
        zza2.zzc(((zzgsm) zzc2.zzbr()).zzaN());
        zza2.zza(zzg(zzggxVar.zzd()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzggv zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza2 = zzguqVar.zza();
                        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                    }
                } else {
                    return zzggv.zzc;
                }
            }
            return zzggv.zzb;
        }
        return zzggv.zza;
    }

    private static zzguq zzg(zzggv zzggvVar) throws GeneralSecurityException {
        if (zzggv.zza.equals(zzggvVar)) {
            return zzguq.TINK;
        }
        if (zzggv.zzb.equals(zzggvVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzggv.zzc.equals(zzggvVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggvVar)));
    }
}
