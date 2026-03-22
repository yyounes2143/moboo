package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjc {
    private static final zzgmy zza = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgja
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            return zzgiz.zzc((zzgje) zzgexVar, zzgwq.zzc(32), num);
        }
    };
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgjb
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgkz.zzb((zzgiz) zzgekVar);
        }
    }, zzgiz.class, zzgee.class);

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzgle.zza;
        zzgle.zze(zzgnj.zzc());
        zzgnf zzb2 = zzgnf.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("XAES_256_GCM_192_BIT_NONCE", zzgiy.zzg);
        hashMap.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", zzgiy.zzh);
        hashMap.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", zzgiy.zzi);
        hashMap.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", zzgiy.zzj);
        zzb2.zzd(Collections.unmodifiableMap(hashMap));
        zzgng.zza().zzc(zzb);
        zzgmz.zzb().zzc(zza, zzgje.class);
    }
}
