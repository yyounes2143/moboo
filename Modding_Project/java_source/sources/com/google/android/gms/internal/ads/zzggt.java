package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggt {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzggq
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgvo.zzb((zzggp) zzgekVar);
        }
    }, zzggp.class, zzgee.class);
    private static final zzgel zzc = zzgmk.zzd("type.googleapis.com/google.crypto.tink.AesGcmKey", zzgee.class, zzgtk.SYMMETRIC, zzgsj.zzg());
    private static final zzgna zzd = new zzgna() { // from class: com.google.android.gms.internal.ads.zzggr
    };
    private static final zzgmy zze = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzggs
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            zzggx zzggxVar = (zzggx) zzgexVar;
            int i = zzggt.zza;
            if (zzggxVar.zzb() != 24) {
                zzggn zzggnVar = new zzggn(null);
                zzggnVar.zzc(zzggxVar);
                zzggnVar.zza(num);
                zzggnVar.zzb(zzgwq.zzc(zzggxVar.zzb()));
                return zzggnVar.zzd();
            }
            throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
        }
    };
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (zzglr.zza(i)) {
            int i2 = zzgkc.zza;
            zzgkc.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_GCM", zzgiy.zza);
            zzggu zzgguVar = new zzggu(null);
            zzgguVar.zza(12);
            zzgguVar.zzb(16);
            zzgguVar.zzc(16);
            zzggv zzggvVar = zzggv.zzc;
            zzgguVar.zzd(zzggvVar);
            hashMap.put("AES128_GCM_RAW", zzgguVar.zze());
            hashMap.put("AES256_GCM", zzgiy.zzb);
            zzggu zzgguVar2 = new zzggu(null);
            zzgguVar2.zza(12);
            zzgguVar2.zzb(32);
            zzgguVar2.zzc(16);
            zzgguVar2.zzd(zzggvVar);
            hashMap.put("AES256_GCM_RAW", zzgguVar2.zze());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgnb.zza().zzb(zzd, zzggx.class);
            zzgmz.zzb().zzc(zze, zzggx.class);
            zzgma.zzc().zzf(zzc, i, true);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }
}
