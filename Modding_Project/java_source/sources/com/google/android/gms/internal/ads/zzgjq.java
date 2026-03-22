package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjq {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgjm
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgjq.zzd((zzggc) zzgexVar);
            }
        }, zzggc.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgjn
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgjq.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgjo
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgjq.zzc((zzgft) zzgekVar, zzgeyVar);
            }
        }, zzgft.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgjp
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgjq.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgft zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzgrl zzd2 = zzgrl.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    if (zzd2.zzf().zza() == 0) {
                        if (zzd2.zzg().zza() == 0) {
                            zzgfy zzf2 = zzggc.zzf();
                            zzf2.zza(zzd2.zzf().zzg().zzd());
                            zzf2.zzc(zzd2.zzg().zzh().zzd());
                            zzf2.zzd(zzd2.zzf().zzf().zza());
                            zzf2.zze(zzd2.zzg().zzg().zza());
                            zzf2.zzb(zzf(zzd2.zzg().zzg().zzb()));
                            zzf2.zzf(zzg(zzgoiVar.zzc()));
                            zzggc zzg = zzf2.zzg();
                            zzgfr zzc2 = zzgft.zzc();
                            zzc2.zzd(zzg);
                            zzc2.zza(zzgwq.zzb(zzd2.zzf().zzg().zzA(), zzgeyVar));
                            zzc2.zzb(zzgwq.zzb(zzd2.zzg().zzh().zzA(), zzgeyVar));
                            zzc2.zzc(zzgoiVar.zzf());
                            return zzc2.zze();
                        }
                        throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
                    }
                    throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzggc zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzgro zzc2 = zzgro.zzc(zzgojVar.zzc().zzh(), zzgyc.zza());
                if (zzc2.zzf().zzb() == 0) {
                    zzgfy zzf2 = zzggc.zzf();
                    zzf2.zza(zzc2.zzd().zza());
                    zzf2.zzc(zzc2.zzf().zza());
                    zzf2.zzd(zzc2.zzd().zzf().zza());
                    zzf2.zze(zzc2.zzf().zzh().zza());
                    zzf2.zzb(zzf(zzc2.zzf().zzh().zzb()));
                    zzf2.zzf(zzg(zzgojVar.zzc().zzg()));
                    return zzf2.zzg();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzgft zzgftVar, zzgey zzgeyVar) {
        zzgrj zzb2 = zzgrl.zzb();
        zzgrp zzb3 = zzgrr.zzb();
        zzgrv zzb4 = zzgrx.zzb();
        zzb4.zza(zzgftVar.zzd().zzd());
        zzb3.zzb((zzgrx) zzb4.zzbr());
        byte[] zzd2 = zzgftVar.zze().zzd(zzgeyVar);
        zzb3.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        zzb2.zza((zzgrr) zzb3.zzbr());
        zzgta zzb5 = zzgtc.zzb();
        zzb5.zzb(zzh(zzgftVar.zzd()));
        byte[] zzd3 = zzgftVar.zzf().zzd(zzgeyVar);
        zzb5.zza(zzgxk.zzv(zzd3, 0, zzd3.length));
        zzb2.zzb((zzgtc) zzb5.zzbr());
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzgrl) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzi(zzgftVar.zzd().zzh()), zzgftVar.zzg());
    }

    public static /* synthetic */ zzgoj zzd(zzggc zzggcVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzgrm zza3 = zzgro.zza();
        zzgrs zzb2 = zzgru.zzb();
        zzgrv zzb3 = zzgrx.zzb();
        zzb3.zza(zzggcVar.zzd());
        zzb2.zzb((zzgrx) zzb3.zzbr());
        zzb2.zza(zzggcVar.zzb());
        zza3.zza((zzgru) zzb2.zzbr());
        zzgtd zzc2 = zzgtf.zzc();
        zzc2.zzb(zzh(zzggcVar));
        zzc2.zza(zzggcVar.zzc());
        zza3.zzb((zzgtf) zzc2.zzbr());
        zza2.zzc(((zzgro) zza3.zzbr()).zzaN());
        zza2.zza(zzi(zzggcVar.zzh()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzgfz zzf(zzgsz zzgszVar) throws GeneralSecurityException {
        int ordinal = zzgszVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return zzgfz.zzb;
                        }
                        int zza2 = zzgszVar.zza();
                        throw new GeneralSecurityException("Unable to parse HashType: " + zza2);
                    }
                    return zzgfz.zze;
                }
                return zzgfz.zzc;
            }
            return zzgfz.zzd;
        }
        return zzgfz.zza;
    }

    private static zzgga zzg(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza2 = zzguqVar.zza();
                        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                    }
                } else {
                    return zzgga.zzc;
                }
            }
            return zzgga.zzb;
        }
        return zzgga.zza;
    }

    private static zzgti zzh(zzggc zzggcVar) throws GeneralSecurityException {
        zzgsz zzgszVar;
        zzgtg zzc2 = zzgti.zzc();
        zzc2.zzb(zzggcVar.zze());
        zzgfz zzg = zzggcVar.zzg();
        if (zzgfz.zza.equals(zzg)) {
            zzgszVar = zzgsz.SHA1;
        } else if (zzgfz.zzb.equals(zzg)) {
            zzgszVar = zzgsz.SHA224;
        } else if (zzgfz.zzc.equals(zzg)) {
            zzgszVar = zzgsz.SHA256;
        } else if (zzgfz.zzd.equals(zzg)) {
            zzgszVar = zzgsz.SHA384;
        } else if (zzgfz.zze.equals(zzg)) {
            zzgszVar = zzgsz.SHA512;
        } else {
            throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(zzg)));
        }
        zzc2.zza(zzgszVar);
        return (zzgti) zzc2.zzbr();
    }

    private static zzguq zzi(zzgga zzggaVar) throws GeneralSecurityException {
        if (zzgga.zza.equals(zzggaVar)) {
            return zzguq.TINK;
        }
        if (zzgga.zzb.equals(zzggaVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzgga.zzc.equals(zzggaVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggaVar)));
    }
}
