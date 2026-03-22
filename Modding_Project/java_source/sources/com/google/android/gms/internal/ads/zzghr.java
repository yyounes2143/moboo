package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghr {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzghp
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            zzghw zzghwVar = (zzghw) zzgekVar;
            int i = zzghr.zza;
            return zzgkx.zzc(zzgev.zza(zzghwVar.zzd().zzd()).zzb(), zzghwVar.zzb());
        }
    }, zzghw.class, zzgee.class);
    private static final zzgel zzc = zzgmk.zzd("type.googleapis.com/google.crypto.tink.KmsAeadKey", zzgee.class, zzgtk.REMOTE, zzgug.zzg());
    private static final zzgmy zzd = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzghq
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            int i = zzghr.zza;
            return zzghw.zzc((zzghy) zzgexVar, num);
        }
    };

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgid.zza;
            zzgid.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgmz.zzb().zzc(zzd, zzghy.class);
            zzgma.zzc().zzd(zzc, true);
            return;
        }
        throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
    }
}
