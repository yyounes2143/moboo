package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghe {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzghb
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgln.zzb((zzgha) zzgekVar);
        }
    }, zzgha.class, zzgee.class);
    private static final zzgmy zzc = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzghc
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            zzghi zzghiVar = (zzghi) zzgexVar;
            int i = zzghe.zza;
            zzggy zzggyVar = new zzggy(null);
            zzggyVar.zzc(zzghiVar);
            zzggyVar.zza(num);
            zzggyVar.zzb(zzgwq.zzc(zzghiVar.zzb()));
            return zzggyVar.zzd();
        }
    };
    private static final zzgna zzd = new zzgna() { // from class: com.google.android.gms.internal.ads.zzghd
    };
    private static final zzgel zze = zzgmk.zzd("type.googleapis.com/google.crypto.tink.AesGcmSivKey", zzgee.class, zzgtk.SYMMETRIC, zzgsp.zzg());

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgki.zza;
            zzgki.zze(zzgnj.zzc());
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            zzghf zzghfVar = new zzghf(null);
            zzghfVar.zza(16);
            zzghg zzghgVar = zzghg.zza;
            zzghfVar.zzb(zzghgVar);
            hashMap.put("AES128_GCM_SIV", zzghfVar.zzc());
            zzghf zzghfVar2 = new zzghf(null);
            zzghfVar2.zza(16);
            zzghg zzghgVar2 = zzghg.zzc;
            zzghfVar2.zzb(zzghgVar2);
            hashMap.put("AES128_GCM_SIV_RAW", zzghfVar2.zzc());
            zzghf zzghfVar3 = new zzghf(null);
            zzghfVar3.zza(32);
            zzghfVar3.zzb(zzghgVar);
            hashMap.put("AES256_GCM_SIV", zzghfVar3.zzc());
            zzghf zzghfVar4 = new zzghf(null);
            zzghfVar4.zza(32);
            zzghfVar4.zzb(zzghgVar2);
            hashMap.put("AES256_GCM_SIV_RAW", zzghfVar4.zzc());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgnb.zza().zzb(zzd, zzghi.class);
            zzgmz.zzb().zzc(zzc, zzghi.class);
            zzgng.zza().zzc(zzb);
            zzgma.zzc().zzd(zze, true);
            return;
        }
        throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
    }
}
