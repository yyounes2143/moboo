package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgio {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzgns zzc;
    private static final zzgno zzd;
    private static final zzgmi zze;
    private static final zzgme zzf;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zzb = zzb2;
        zzc = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgik
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgio.zzd((zzgij) zzgexVar);
            }
        }, zzgij.class, zzgoj.class);
        zzd = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgil
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgio.zzb((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zze = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgim
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgio.zzc((zzgie) zzgekVar, zzgeyVar);
            }
        }, zzgie.class, zzgoi.class);
        zzf = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgin
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgio.zza((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgie zza(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            try {
                zzgum zzd2 = zzgum.zzd(zzgoiVar.zze(), zzgyc.zza());
                if (zzd2.zza() == 0) {
                    return zzgie.zzc(zzf(zzd2.zzf(), zzgoiVar.zzc()), zzgoiVar.zzf());
                }
                String valueOf = String.valueOf(zzd2);
                throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got " + valueOf);
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzgij zzb(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            try {
                return zzf(zzgup.zzf(zzgojVar.zzc().zzh(), zzgyc.zza()), zzgojVar.zzc().zzg());
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static /* synthetic */ zzgoi zzc(zzgie zzgieVar, zzgey zzgeyVar) {
        zzguk zzb2 = zzgum.zzb();
        zzb2.zza(zzg(zzgieVar.zzd()));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((zzgum) zzb2.zzbr()).zzaN(), zzgtk.REMOTE, zzh(zzgieVar.zzd().zzc()), zzgieVar.zze());
    }

    public static /* synthetic */ zzgoj zzd(zzgij zzgijVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zza2.zzc(zzg(zzgijVar).zzaN());
        zza2.zza(zzh(zzgijVar.zzc()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zzc);
        zzgnjVar.zzh(zzd);
        zzgnjVar.zzg(zze);
        zzgnjVar.zzf(zzf);
    }

    private static zzgij zzf(zzgup zzgupVar, zzguq zzguqVar) throws GeneralSecurityException {
        zzgig zzgigVar;
        zzgih zzgihVar;
        zzgto zza2 = zzgtq.zza();
        zza2.zzb(zzgupVar.zza().zzi());
        zza2.zzc(zzgupVar.zza().zzh());
        zza2.zza(zzguq.RAW);
        zzgex zza3 = zzgez.zza(((zzgtq) zza2.zzbr()).zzaV());
        if (zza3 instanceof zzggx) {
            zzgigVar = zzgig.zza;
        } else if (zza3 instanceof zzgho) {
            zzgigVar = zzgig.zzc;
        } else if (zza3 instanceof zzgjl) {
            zzgigVar = zzgig.zzb;
        } else if (zza3 instanceof zzggc) {
            zzgigVar = zzgig.zzd;
        } else if (zza3 instanceof zzggm) {
            zzgigVar = zzgig.zze;
        } else if (zza3 instanceof zzghi) {
            zzgigVar = zzgig.zzf;
        } else {
            throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(zza3.toString()));
        }
        zzgif zzgifVar = new zzgif(null);
        int ordinal = zzguqVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                zzgihVar = zzgih.zzb;
            } else {
                int zza4 = zzguqVar.zza();
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza4);
            }
        } else {
            zzgihVar = zzgih.zza;
        }
        zzgifVar.zzd(zzgihVar);
        zzgifVar.zzc(zzgupVar.zzg());
        zzgifVar.zza((zzgfl) zza3);
        zzgifVar.zzb(zzgigVar);
        return zzgifVar.zze();
    }

    private static zzgup zzg(zzgij zzgijVar) throws GeneralSecurityException {
        try {
            zzgtq zzf2 = zzgtq.zzf(zzgez.zzb(zzgijVar.zzb()), zzgyc.zza());
            zzgun zzb2 = zzgup.zzb();
            zzb2.zzb(zzgijVar.zzd());
            zzb2.zza(zzf2);
            return (zzgup) zzb2.zzbr();
        } catch (zzgzh e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    private static zzguq zzh(zzgih zzgihVar) throws GeneralSecurityException {
        if (zzgih.zza.equals(zzgihVar)) {
            return zzguq.TINK;
        }
        if (zzgih.zzb.equals(zzgihVar)) {
            return zzguq.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgihVar)));
    }
}
