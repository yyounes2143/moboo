package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgqx {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwp zzb;
    private static final zzglw zzc;
    private static final zzglw zzd;
    private static final zzgns zze;
    private static final zzgno zzf;
    private static final zzgmi zzg;
    private static final zzgme zzh;

    static {
        zzgwp zzb2 = zzgou.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzb = zzb2;
        zzglu zza2 = zzglw.zza();
        zza2.zza(zzguq.RAW, zzgpu.zzd);
        zza2.zza(zzguq.TINK, zzgpu.zza);
        zza2.zza(zzguq.LEGACY, zzgpu.zzc);
        zza2.zza(zzguq.CRUNCHY, zzgpu.zzb);
        zzc = zza2.zzb();
        zzglu zza3 = zzglw.zza();
        zza3.zza(zzgsz.SHA1, zzgpt.zza);
        zza3.zza(zzgsz.SHA224, zzgpt.zzb);
        zza3.zza(zzgsz.SHA256, zzgpt.zzc);
        zza3.zza(zzgsz.SHA384, zzgpt.zzd);
        zza3.zza(zzgsz.SHA512, zzgpt.zze);
        zzd = zza3.zzb();
        zze = zzgns.zzb(new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgqt
            @Override // com.google.android.gms.internal.ads.zzgnq
            public final zzgom zza(zzgex zzgexVar) {
                return zzgqx.zzb((zzgpw) zzgexVar);
            }
        }, zzgpw.class, zzgoj.class);
        zzf = zzgno.zzb(new zzgnm() { // from class: com.google.android.gms.internal.ads.zzgqu
            @Override // com.google.android.gms.internal.ads.zzgnm
            public final zzgex zza(zzgom zzgomVar) {
                return zzgqx.zzd((zzgoj) zzgomVar);
            }
        }, zzb2, zzgoj.class);
        zzg = zzgmi.zzb(new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgqv
            @Override // com.google.android.gms.internal.ads.zzgmg
            public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                return zzgqx.zza((zzgpm) zzgekVar, zzgeyVar);
            }
        }, zzgpm.class, zzgoi.class);
        zzh = zzgme.zzb(new zzgmc() { // from class: com.google.android.gms.internal.ads.zzgqw
            @Override // com.google.android.gms.internal.ads.zzgmc
            public final zzgek zza(zzgom zzgomVar, zzgey zzgeyVar) {
                return zzgqx.zzc((zzgoi) zzgomVar, zzgeyVar);
            }
        }, zzb2, zzgoi.class);
    }

    public static /* synthetic */ zzgoi zza(zzgpm zzgpmVar, zzgey zzgeyVar) {
        zzgta zzb2 = zzgtc.zzb();
        zzb2.zzb(zzf(zzgpmVar.zzc()));
        byte[] zzd2 = zzgpmVar.zze().zzd(zzgeyVar);
        zzb2.zza(zzgxk.zzv(zzd2, 0, zzd2.length));
        return zzgoi.zza("type.googleapis.com/google.crypto.tink.HmacKey", ((zzgtc) zzb2.zzbr()).zzaN(), zzgtk.SYMMETRIC, (zzguq) zzc.zzb(zzgpmVar.zzc().zzg()), zzgpmVar.zzf());
    }

    public static /* synthetic */ zzgoj zzb(zzgpw zzgpwVar) {
        zzgto zza2 = zzgtq.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzgtd zzc2 = zzgtf.zzc();
        zzc2.zzb(zzf(zzgpwVar));
        zzc2.zza(zzgpwVar.zzc());
        zza2.zzc(((zzgtf) zzc2.zzbr()).zzaN());
        zza2.zza((zzguq) zzc.zzb(zzgpwVar.zzg()));
        return zzgoj.zzb((zzgtq) zza2.zzbr());
    }

    public static /* synthetic */ zzgpm zzc(zzgoi zzgoiVar, zzgey zzgeyVar) {
        if (zzgoiVar.zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzgtc zzf2 = zzgtc.zzf(zzgoiVar.zze(), zzgyc.zza());
                if (zzf2.zza() == 0) {
                    zzgps zze2 = zzgpw.zze();
                    zze2.zzb(zzf2.zzh().zzd());
                    zze2.zzc(zzf2.zzg().zza());
                    zze2.zza((zzgpt) zzd.zzc(zzf2.zzg().zzb()));
                    zze2.zzd((zzgpu) zzc.zzc(zzgoiVar.zzc()));
                    zzgpw zze3 = zze2.zze();
                    zzgpk zzb2 = zzgpm.zzb();
                    zzb2.zzc(zze3);
                    zzb2.zzb(zzgwq.zzb(zzf2.zzh().zzA(), zzgeyVar));
                    zzb2.zza(zzgoiVar.zzf());
                    return zzb2.zzd();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzgzh | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing HmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
    }

    public static /* synthetic */ zzgpw zzd(zzgoj zzgojVar) {
        if (zzgojVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzgtf zzg2 = zzgtf.zzg(zzgojVar.zzc().zzh(), zzgyc.zza());
                if (zzg2.zzb() == 0) {
                    zzgps zze2 = zzgpw.zze();
                    zze2.zzb(zzg2.zza());
                    zze2.zzc(zzg2.zzh().zza());
                    zze2.zza((zzgpt) zzd.zzc(zzg2.zzh().zzb()));
                    zze2.zzd((zzgpu) zzc.zzc(zzgojVar.zzc().zzg()));
                    return zze2.zze();
                }
                int zzb2 = zzg2.zzb();
                throw new GeneralSecurityException("Parsing HmacParameters failed: unknown Version " + zzb2);
            } catch (zzgzh e) {
                throw new GeneralSecurityException("Parsing HmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgojVar.zzc().zzi())));
    }

    public static void zze(zzgnj zzgnjVar) throws GeneralSecurityException {
        zzgnjVar.zzi(zze);
        zzgnjVar.zzh(zzf);
        zzgnjVar.zzg(zzg);
        zzgnjVar.zzf(zzh);
    }

    private static zzgti zzf(zzgpw zzgpwVar) throws GeneralSecurityException {
        zzgtg zzc2 = zzgti.zzc();
        zzc2.zzb(zzgpwVar.zzb());
        zzc2.zza((zzgsz) zzd.zzb(zzgpwVar.zzf()));
        return (zzgti) zzc2.zzbr();
    }
}
