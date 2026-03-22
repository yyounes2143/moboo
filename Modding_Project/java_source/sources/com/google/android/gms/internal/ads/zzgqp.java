package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgqp {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgql
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgqp.zzb((zzgpf) zzgexVar);
            }
        }, zzgpf.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgqm
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgqp.zzd((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgqn
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgqp.zza((zzgox) zzgekVar, zzgeyVar);
            }
        }, zzgox.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgqo
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgqp.zzc((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgoi zza(zzgox zzgoxVar, zzgey zzgeyVar) {
        zzgra zzb2 = zzgrc.zzb();
        zzb2.zzb(zzg(zzgoxVar.zzc()));
        byte[] zzd2 = zzgoxVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzgrc) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzh(zzgoxVar.zzc().zzf()), zzgoxVar.zzf());
    }

    public static /* synthetic */ zzgoj zzb(zzgpf zzgpfVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzgrd zzb2 = zzgrf.zzb();
        zzb2.zzb(zzg(zzgpfVar));
        zzb2.zza(zzgpfVar.zzc());
        zza2.zzc(((zzgrf) zzb2.zzbr()).zzaN());
        zza2.zza(zzh(zzgpfVar.zzf()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static /* synthetic */ zzgox zzc(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzgrc zzd2 = zzgrc.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    zzgpc zze2 = zzgpf.zze();
                    zze2.zza(zzd2.zzg().zzd());
                    zze2.zzb(zzd2.zzf().zza());
                    zze2.zzc(zzf(zzgoiVar.zzc()));
                    zzgpf zzd3 = zze2.zzd();
                    zzgov zzb2 = zzgox.zzb();
                    zzb2.zzc(zzd3);
                    zzb2.zza(zzgwq.zzb(zzd2.zzg().zzA(), zzgeyVar));
                    zzb2.zzb(zzgoiVar.zzf());
                    return zzb2.zzd();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing AesCmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzgpf zzd(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzgrf zzd2 = zzgrf.zzd(zzgojVar.zzc().zzh(), zzgyc.zza());
                zzgpc zze2 = zzgpf.zze();
                zze2.zza(zzd2.zza());
                zze2.zzb(zzd2.zzf().zza());
                zze2.zzc(zzf(zzgojVar.zzc().zzg()));
                return zze2.zzd();
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzgpd zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 4) {
                        return zzgpd.zzb;
                    }
                    int zza2 = zzguqVar.zza();
                    throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                }
                return zzgpd.zzd;
            }
            return zzgpd.zzc;
        }
        return zzgpd.zza;
    }

    private static zzgri zzg(zzgpf zzgpfVar) {
        zzgrg zzb2 = zzgri.zzb();
        zzb2.zza(zzgpfVar.zzb());
        return (zzgri) zzb2.zzbr();
    }

    private static zzguq zzh(zzgpd zzgpdVar) throws GeneralSecurityException {
        if (zzgpd.zza.equals(zzgpdVar)) {
            return zzguq.TINK;
        }
        if (zzgpd.zzb.equals(zzgpdVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzgpd.zzd.equals(zzgpdVar)) {
            return zzguq.RAW;
        }
        if (zzgpd.zzc.equals(zzgpdVar)) {
            return zzguq.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgpdVar)));
    }
}
