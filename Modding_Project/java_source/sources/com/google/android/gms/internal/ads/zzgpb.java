package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpb {
    private static final zzgmy zza = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgoy
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            return zzgpb.zzb((zzgpf) zzgexVar, num);
        }
    };
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgoz
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgpb.zzc((zzgox) zzgekVar);
        }
    }, zzgox.class, zzgpg.class);
    private static final zzgob zzc = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgpa
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgpb.zza((zzgox) zzgekVar);
        }
    }, zzgox.class, zzgew.class);
    private static final zzgel zzd = zzgmk.zzd("type.googleapis.com/google.crypto.tink.AesCmacKey", zzgew.class, zzgtk.SYMMETRIC, zzgrc.zzh());

    public static /* synthetic */ zzgew zza(zzgox zzgoxVar) {
        zze(zzgoxVar.zzc());
        return zzgwm.zza(zzgoxVar);
    }

    public static /* synthetic */ zzgox zzb(zzgpf zzgpfVar, Integer num) {
        zze(zzgpfVar);
        zzgov zzgovVar = new zzgov(null);
        zzgovVar.zzc(zzgpfVar);
        zzgovVar.zza(zzgwq.zzc(zzgpfVar.zzc()));
        zzgovVar.zzb(num);
        return zzgovVar.zzd();
    }

    public static /* synthetic */ zzgpg zzc(zzgox zzgoxVar) {
        zze(zzgoxVar.zzc());
        return new zzgqr(zzgoxVar);
    }

    public static void zzd(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzgqp.zza;
            zzgqp.zze(zzgnj.zzc());
            zzgmz.zzb().zzc(zza, zzgpf.class);
            zzgng.zza().zzc(zzb);
            zzgng.zza().zzc(zzc);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            zzgpf zzgpfVar = zzgqk.zzc;
            hashMap.put("AES_CMAC", zzgpfVar);
            hashMap.put("AES256_CMAC", zzgpfVar);
            zzgpc zzgpcVar = new zzgpc(null);
            zzgpcVar.zza(32);
            zzgpcVar.zzb(16);
            zzgpcVar.zzc(zzgpd.zzd);
            hashMap.put("AES256_CMAC_RAW", zzgpcVar.zzd());
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgma.zzc().zzd(zzd, true);
            return;
        }
        throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
    }

    private static void zze(zzgpf zzgpfVar) throws GeneralSecurityException {
        if (zzgpfVar.zzc() == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }
}
