package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgfj {
    public static final /* synthetic */ int zza = 0;
    private static final zzglz zzb = zzb();

    public static zzgei zza() throws GeneralSecurityException {
        if (!zzgls.zzb()) {
            return zzb;
        }
        throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode");
    }

    private static zzglz zzb() {
        try {
            zzgod zza2 = zzgog.zza();
            zzgfq.zzd(zza2);
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfc
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    return zzgvr.zzb((zzgft) zzgekVar);
                }
            }, zzgft.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfd
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    return zzgvo.zzb((zzggp) zzgekVar);
                }
            }, zzggp.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfe
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    return zzgln.zzb((zzgha) zzgekVar);
                }
            }, zzgha.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgff
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    return zzgvn.zzb((zzggf) zzgekVar);
                }
            }, zzggf.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfg
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    zzghj zzghjVar = (zzghj) zzgekVar;
                    int i = zzgfj.zza;
                    if (zzgkk.zze()) {
                        return zzgkk.zzb(zzghjVar);
                    }
                    return zzgvq.zzb(zzghjVar);
                }
            }, zzghj.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfh
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    zzgjf zzgjfVar = (zzgjf) zzgekVar;
                    int i = zzgfj.zza;
                    if (zzglf.zzc()) {
                        return zzglf.zzb(zzgjfVar);
                    }
                    return zzgwo.zzb(zzgjfVar);
                }
            }, zzgjf.class, zzgee.class));
            zza2.zza(zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgfi
                @Override // com.google.android.gms.internal.ads.zzgnz
                public final Object zza(zzgek zzgekVar) {
                    return zzgkz.zzb((zzgiz) zzgekVar);
                }
            }, zzgiz.class, zzgee.class));
            return zzglz.zzb(zza2.zzc());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
