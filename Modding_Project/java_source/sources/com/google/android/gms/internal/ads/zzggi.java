package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggi {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzggg
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgvn.zzb((zzggf) zzgekVar);
        }
    }, zzggf.class, zzgee.class);
    private static final zzgel zzc = zzgmk.zzd("type.googleapis.com/google.crypto.tink.AesEaxKey", zzgee.class, zzgtk.SYMMETRIC, zzgsa.zzh());
    private static final zzgmy zzd = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzggh
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            zzggm zzggmVar = (zzggm) zzgexVar;
            int i = zzggi.zza;
            if (zzggmVar.zzc() != 24) {
                zzggd zzggdVar = new zzggd(null);
                zzggdVar.zzc(zzggmVar);
                zzggdVar.zza(num);
                zzggdVar.zzb(zzgwq.zzc(zzggmVar.zzc()));
                return zzggdVar.zzd();
            }
            throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
        }
    };

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgjv.zza;
            zzgjv.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_EAX", zzgiy.zzc);
            zzggj zzggjVar = new zzggj(null);
            zzggjVar.zza(16);
            zzggjVar.zzb(16);
            zzggjVar.zzc(16);
            zzggk zzggkVar = zzggk.zzc;
            zzggjVar.zzd(zzggkVar);
            hashMap.put("AES128_EAX_RAW", zzggjVar.zze());
            hashMap.put("AES256_EAX", zzgiy.zzd);
            zzggj zzggjVar2 = new zzggj(null);
            zzggjVar2.zza(16);
            zzggjVar2.zzb(32);
            zzggjVar2.zzc(16);
            zzggjVar2.zzd(zzggkVar);
            hashMap.put("AES256_EAX_RAW", zzggjVar2.zze());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgmz.zzb().zzc(zzd, zzggm.class);
            zzgma.zzc().zzd(zzc, true);
            return;
        }
        throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
    }
}
