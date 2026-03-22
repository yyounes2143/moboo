package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzglk {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzglg
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzglk.zzd((zzgjl) zzgexVar);
            }
        }, zzgjl.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzglh
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzglk.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgli
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzglk.zzc((zzgjf) zzgekVar, zzgeyVar);
            }
        }, zzgjf.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzglj
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzglk.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgjf zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            try {
                zzgvf zzd2 = zzgvf.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    return zzgjf.zzc(zzf(zzgoiVar.zzc()), zzgwq.zzb(zzd2.zzf().zzA(), zzgeyVar), zzgoiVar.zzf());
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh unused) {
                throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzgjl zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            try {
                if (zzgvi.zzd(zzgojVar.zzc().zzh(), zzgyc.zza()).zza() == 0) {
                    return zzgjl.zzc(zzf(zzgojVar.zzc().zzg()));
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzgjf zzgjfVar, zzgey zzgeyVar) {
        zzgvd zzb2 = zzgvf.zzb();
        byte[] zzd2 = zzgjfVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((zzgvf) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, zzg(zzgjfVar.zzd().zzb()), zzgjfVar.zzf());
    }

    public static /* synthetic */ zzgoj zzd(zzgjl zzgjlVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zza2.zzc(zzgvi.zzc().zzaN());
        zza2.zza(zzg(zzgjlVar.zzb()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzgjk zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza2 = zzguqVar.zza();
                        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                    }
                } else {
                    return zzgjk.zzc;
                }
            }
            return zzgjk.zzb;
        }
        return zzgjk.zza;
    }

    private static zzguq zzg(zzgjk zzgjkVar) throws GeneralSecurityException {
        if (zzgjk.zza.equals(zzgjkVar)) {
            return zzguq.TINK;
        }
        if (zzgjk.zzb.equals(zzgjkVar)) {
            return zzguq.CRUNCHY;
        }
        if (zzgjk.zzc.equals(zzgjkVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgjkVar.toString()));
    }
}
