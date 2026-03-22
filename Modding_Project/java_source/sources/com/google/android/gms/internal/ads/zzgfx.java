package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgfx {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfu
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgvr.zzb((zzgft) zzgekVar);
        }
    }, zzgft.class, zzgee.class);
    private static final zzgel zzc = zzgmk.zzd("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", zzgee.class, zzgtk.SYMMETRIC, zzgrl.zzh());
    private static final zzgna zzd = new zzgna() { // from class: com.google.android.gms.internal.ads.zzgfv
    };
    private static final zzgmy zze = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgfw
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            zzggc zzggcVar = (zzggc) zzgexVar;
            int i = zzgfx.zza;
            if (zzggcVar.zzb() != 16 && zzggcVar.zzb() != 32) {
                throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
            }
            zzgfr zzgfrVar = new zzgfr(null);
            zzgfrVar.zzd(zzggcVar);
            zzgfrVar.zzc(num);
            zzgfrVar.zza(zzgwq.zzc(zzggcVar.zzb()));
            zzgfrVar.zzb(zzgwq.zzc(zzggcVar.zzc()));
            return zzgfrVar.zze();
        }
    };
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (zzglr.zza(i)) {
            int i2 = zzgjq.zza;
            zzgjq.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_CTR_HMAC_SHA256", zzgiy.zze);
            zzgfy zzgfyVar = new zzgfy(null);
            zzgfyVar.zza(16);
            zzgfyVar.zzc(32);
            zzgfyVar.zze(16);
            zzgfyVar.zzd(16);
            zzgfz zzgfzVar = zzgfz.zzc;
            zzgfyVar.zzb(zzgfzVar);
            zzgga zzggaVar = zzgga.zzc;
            zzgfyVar.zzf(zzggaVar);
            hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzgfyVar.zzg());
            hashMap.put("AES256_CTR_HMAC_SHA256", zzgiy.zzf);
            zzgfy zzgfyVar2 = new zzgfy(null);
            zzgfyVar2.zza(32);
            zzgfyVar2.zzc(32);
            zzgfyVar2.zze(32);
            zzgfyVar2.zzd(16);
            zzgfyVar2.zzb(zzgfzVar);
            zzgfyVar2.zzf(zzggaVar);
            hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzgfyVar2.zzg());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgnb.zza().zzb(zzd, zzggc.class);
            zzgmz.zzb().zzc(zze, zzggc.class);
            zzgma.zzc().zzf(zzc, i, true);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
