package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgid {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzghz
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgid.zzd((zzghy) zzgexVar);
            }
        }, zzghy.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgia
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgid.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgib
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgid.zzc((zzghw) zzgekVar, zzgeyVar);
            }
        }, zzghw.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgic
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgid.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzghw zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            try {
                zzgug zzd2 = zzgug.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    return zzghw.zzc(zzghy.zzc(zzd2.zzf().zzf(), zzf(zzgoiVar.zzc())), zzgoiVar.zzf());
                }
                String valueOf = String.valueOf(zzd2);
                throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got " + valueOf);
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzghy zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            try {
                return zzghy.zzc(zzguj.zzd(zzgojVar.zzc().zzh(), zzgyc.zza()).zzf(), zzf(zzgojVar.zzc().zzg()));
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzghw zzghwVar, zzgey zzgeyVar) {
        zzgue zzb2 = zzgug.zzb();
        zzguh zza2 = zzguj.zza();
        zza2.zza(zzghwVar.zzd().zzd());
        zzb2.zza((zzguj) zza2.zzbr());
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((zzgug) zzb2.zzbr()).zzaN(), zzgtk.REMOTE, zzg(zzghwVar.zzd().zzb()), zzghwVar.zze());
    }

    public static /* synthetic */ zzgoj zzd(zzghy zzghyVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzguh zza3 = zzguj.zza();
        zza3.zza(zzghyVar.zzd());
        zza2.zzc(((zzguj) zza3.zzbr()).zzaN());
        zza2.zza(zzg(zzghyVar.zzb()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzghx zzf(zzguq zzguqVar) throws GeneralSecurityException {
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return zzghx.zzb;
            }
            int zza2 = zzguqVar.zza();
            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
        }
        return zzghx.zza;
    }

    private static zzguq zzg(zzghx zzghxVar) throws GeneralSecurityException {
        if (zzghx.zza.equals(zzghxVar)) {
            return zzguq.TINK;
        }
        if (zzghx.zzb.equals(zzghxVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzghxVar.toString()));
    }
}
