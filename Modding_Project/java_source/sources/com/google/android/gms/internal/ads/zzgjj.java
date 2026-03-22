package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjj {
    public static final /* synthetic */ int zza = 0;
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgjg
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            zzgjf zzgjfVar = (zzgjf) zzgekVar;
            int i = zzgjj.zza;
            if (zzglf.zzc()) {
                return zzglf.zzb(zzgjfVar);
            }
            return zzgwo.zzb(zzgjfVar);
        }
    }, zzgjf.class, zzgee.class);
    private static final zzgel zzc = zzgmk.zzd("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", zzgee.class, zzgtk.SYMMETRIC, zzgvf.zzg());
    private static final zzgna zzd = new zzgna() { // from class: com.google.android.gms.internal.ads.zzgjh
    };
    private static final zzgmy zze = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgji
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            int i = zzgjj.zza;
            return zzgjf.zzc(((zzgjl) zzgexVar).zzb(), zzgwq.zzc(32), num);
        }
    };

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            int i = zzglk.zza;
            zzglk.zze(zzgnj.zzc());
            zzgng.zza().zzc(zzb);
            zzgnf zzb2 = zzgnf.zzb();
            HashMap hashMap = new HashMap();
            hashMap.put("XCHACHA20_POLY1305", zzgjl.zzc(zzgjk.zza));
            hashMap.put("XCHACHA20_POLY1305_RAW", zzgjl.zzc(zzgjk.zzc));
            zzb2.zzd(Collections.unmodifiableMap(hashMap));
            zzgmz.zzb().zzc(zze, zzgjl.class);
            zzgnb.zza().zzb(zzd, zzgjl.class);
            zzgma.zzc().zzd(zzc, true);
            return;
        }
        throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
    }
}
