package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghm {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzghk
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            zzghj zzghjVar = (zzghj) zzgekVar;
            int i = zzghm.zza;
            if (zzgkk.zze()) {
                return zzgkk.zzb(zzghjVar);
            }
            return zzgvq.zzb(zzghjVar);
        }
    }, zzghj.class, zzgee.class);
    private static final zzgmy zzc = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzghl
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            int i = zzghm.zza;
            return zzghj.zzc(((zzgho) zzgexVar).zzb(), zzgwq.zzc(32), num);
        }
    };
    private static final zzgel zzd = zzgmk.zzd("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", zzgee.class, zzgtk.SYMMETRIC, zzgsv.zzg());

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgkp.zza;
            zzgkp.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgmz.zzb().zzc(zzc, zzgho.class);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("CHACHA20_POLY1305", zzgho.zzc(zzghn.zza));
            hashMap.put("CHACHA20_POLY1305_RAW", zzgho.zzc(zzghn.zzc));
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgma.zzc().zzd(zzd, true);
            return;
        }
        throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
    }
}
