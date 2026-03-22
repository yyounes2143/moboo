package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpr {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgpn
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return new zzgqs((zzgpm) zzgekVar);
        }
    }, zzgpm.class, zzgpg.class);
    private static final zzgob zzc = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgpo
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgwm.zzb((zzgpm) zzgekVar);
        }
    }, zzgpm.class, zzgew.class);
    private static final zzgel zzd = zzgmk.zzd("type.googleapis.com/google.crypto.tink.HmacKey", zzgew.class, zzgtk.SYMMETRIC, zzgtc.zzi());
    private static final zzgna zze = new zzgna() { // from class: com.google.android.gms.internal.ads.zzgpp
    };
    private static final zzgmy zzf = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgpq
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            zzgpw zzgpwVar = (zzgpw) zzgexVar;
            int i = zzgpr.zza;
            zzgpk zzgpkVar = new zzgpk(null);
            zzgpkVar.zzc(zzgpwVar);
            zzgpkVar.zzb(zzgwq.zzc(zzgpwVar.zzc()));
            zzgpkVar.zza(num);
            return zzgpkVar.zzd();
        }
    };
    private static final int zzg = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzg;
        if (zzglr.zza(i)) {
            int i2 = zzgqx.zza;
            zzgqx.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgng.zza().zzc(zzc);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("HMAC_SHA256_128BITTAG", zzgqk.zza);
            zzgps zzgpsVar = new zzgps(null);
            zzgpsVar.zzb(32);
            zzgpsVar.zzc(16);
            zzgpu zzgpuVar = zzgpu.zzd;
            zzgpsVar.zzd(zzgpuVar);
            zzgpt zzgptVar = zzgpt.zzc;
            zzgpsVar.zza(zzgptVar);
            hashMap.put("HMAC_SHA256_128BITTAG_RAW", zzgpsVar.zze());
            zzgps zzgpsVar2 = new zzgps(null);
            zzgpsVar2.zzb(32);
            zzgpsVar2.zzc(32);
            zzgpu zzgpuVar2 = zzgpu.zza;
            zzgpsVar2.zzd(zzgpuVar2);
            zzgpsVar2.zza(zzgptVar);
            hashMap.put("HMAC_SHA256_256BITTAG", zzgpsVar2.zze());
            zzgps zzgpsVar3 = new zzgps(null);
            zzgpsVar3.zzb(32);
            zzgpsVar3.zzc(32);
            zzgpsVar3.zzd(zzgpuVar);
            zzgpsVar3.zza(zzgptVar);
            hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzgpsVar3.zze());
            zzgps zzgpsVar4 = new zzgps(null);
            zzgpsVar4.zzb(64);
            zzgpsVar4.zzc(16);
            zzgpsVar4.zzd(zzgpuVar2);
            zzgpt zzgptVar2 = zzgpt.zze;
            zzgpsVar4.zza(zzgptVar2);
            hashMap.put("HMAC_SHA512_128BITTAG", zzgpsVar4.zze());
            zzgps zzgpsVar5 = new zzgps(null);
            zzgpsVar5.zzb(64);
            zzgpsVar5.zzc(16);
            zzgpsVar5.zzd(zzgpuVar);
            zzgpsVar5.zza(zzgptVar2);
            hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzgpsVar5.zze());
            zzgps zzgpsVar6 = new zzgps(null);
            zzgpsVar6.zzb(64);
            zzgpsVar6.zzc(32);
            zzgpsVar6.zzd(zzgpuVar2);
            zzgpsVar6.zza(zzgptVar2);
            hashMap.put("HMAC_SHA512_256BITTAG", zzgpsVar6.zze());
            zzgps zzgpsVar7 = new zzgps(null);
            zzgpsVar7.zzb(64);
            zzgpsVar7.zzc(32);
            zzgpsVar7.zzd(zzgpuVar);
            zzgpsVar7.zza(zzgptVar2);
            hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzgpsVar7.zze());
            hashMap.put("HMAC_SHA512_512BITTAG", zzgqk.zzb);
            zzgps zzgpsVar8 = new zzgps(null);
            zzgpsVar8.zzb(64);
            zzgpsVar8.zzc(64);
            zzgpsVar8.zzd(zzgpuVar);
            zzgpsVar8.zza(zzgptVar2);
            hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzgpsVar8.zze());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgmz.zzb().zzc(zzf, zzgpw.class);
            zzgnb.zza().zzb(zze, zzgpw.class);
            zzgma.zzc().zzf(zzd, i, true);
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
