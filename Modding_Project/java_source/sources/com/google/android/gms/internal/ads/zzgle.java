package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgle {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgla
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgle.zzd((zzgje) zzgexVar);
            }
        }, zzgje.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzglb
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgle.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzglc
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgle.zzc((zzgiz) zzgekVar, zzgeyVar);
            }
        }, zzgiz.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgld
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgle.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgiz zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            try {
                zzguw zzd2 = zzguw.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    if (zzd2.zzg().zzd() == 32) {
                        return zzgiz.zzc(zzgje.zzd(zzf(zzgoiVar.zzc()), zzd2.zzf().zza()), zzgwq.zzb(zzd2.zzg().zzA(), zzgeyVar), zzgoiVar.zzf());
                    }
                    throw new GeneralSecurityException("Only 32 byte key size is accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing XAesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzgje zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            try {
                zzguz zzd2 = zzguz.zzd(zzgojVar.zzc().zzh(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    return zzgje.zzd(zzf(zzgojVar.zzc().zzg()), zzd2.zzf().zza());
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzgiz zzgizVar, zzgey zzgeyVar) {
        zzguu zzb2 = zzguw.zzb();
        byte[] zzd2 = zzgizVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        zzgva zzb3 = zzgvc.zzb();
        zzb3.zza(zzgizVar.zzd().zzb());
        zzb2.zzb((zzgvc) zzb3.zzbr());
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((zzguw) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzg(zzgizVar.zzd().zzc()), zzgizVar.zzf());
    }

    public static /* synthetic */ zzgoj zzd(zzgje zzgjeVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzgux zzb2 = zzguz.zzb();
        zzgva zzb3 = zzgvc.zzb();
        zzb3.zza(zzgjeVar.zzb());
        zzb2.zza((zzgvc) zzb3.zzbr());
        zza2.zzc(((zzguz) zzb2.zzbr()).zzaN());
        zza2.zza(zzg(zzgjeVar.zzc()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzgjd zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return zzgjd.zzb;
            }
            int zza2 = zzguqVar.zza();
            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
        }
        return zzgjd.zza;
    }

    private static zzguq zzg(zzgjd zzgjdVar) throws GeneralSecurityException {
        if (Objects.equals(zzgjdVar, zzgjd.zza)) {
            return zzguq.TINK;
        }
        if (Objects.equals(zzgjdVar, zzgjd.zzb)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgjdVar.toString()));
    }
}
