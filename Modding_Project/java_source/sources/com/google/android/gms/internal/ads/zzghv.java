package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghv {
    public static final /* synthetic */ int zza = 0;
    private static final zzgel zzb = zzgmk.zzd("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", zzgee.class, zzgtk.SYMMETRIC, zzgum.zzg());
    private static final zzgmy zzc = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzght
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            int i = zzghv.zza;
            return zzgie.zzc((zzgij) zzgexVar, num);
        }
    };
    private static final zzgob zzd = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzghu
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            zzgie zzgieVar = (zzgie) zzgekVar;
            int i = zzghv.zza;
            String zzd2 = zzgieVar.zzd().zzd();
            zzgfl zzb2 = zzgieVar.zzd().zzb();
            zzgee zzb3 = zzgev.zza(zzd2).zzb();
            int i2 = zzghs.zza;
            try {
                return zzgkx.zzc(new zzghs(zzgtq.zzf(zzgez.zzb(zzb2), zzgyc.zza()), zzb3), zzgieVar.zzb());
            } catch (zzgzh e) {
                throw new GeneralSecurityException(e);
            }
        }
    }, zzgie.class, zzgee.class);

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgio.zza;
            zzgio.zze(zzgnj.zzc());
            zzgmz.zzb().zzc(zzc, zzgij.class);
            zzgng.zza().zzc(zzd);
            zzgma.zzc().zzd(zzb, true);
            return;
        }
        throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
    }
}
