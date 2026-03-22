package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgiz extends zzgfk {
    private final zzgje zza;
    private final zzgwq zzb;
    private final zzgwp zzc;
    @Nullable
    private final Integer zzd;

    private zzgiz(zzgje zzgjeVar, zzgwq zzgwqVar, zzgwp zzgwpVar, @Nullable Integer num) {
        this.zza = zzgjeVar;
        this.zzb = zzgwqVar;
        this.zzc = zzgwpVar;
        this.zzd = num;
    }

    public static zzgiz zzc(zzgje zzgjeVar, zzgwq zzgwqVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgwp zzb;
        zzgjd zzc = zzgjeVar.zzc();
        zzgjd zzgjdVar = zzgjd.zzb;
        if (zzc != zzgjdVar && num == null) {
            String obj = zzgjeVar.zzc().toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzgjeVar.zzc() == zzgjdVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgwqVar.zza() == 32) {
                if (zzgjeVar.zzc() == zzgjdVar) {
                    zzb = zzgnk.zza;
                } else if (zzgjeVar.zzc() == zzgjd.zza) {
                    zzb = zzgnk.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzgjeVar.zzc().toString()));
                }
                return new zzgiz(zzgjeVar, zzgwqVar, zzb, num);
            }
            int zza = zzgwqVar.zza();
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfk, com.google.android.gms.internal.ads.zzgek
    public final /* synthetic */ zzgex zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfk
    public final zzgwp zzb() {
        return this.zzc;
    }

    public final zzgje zzd() {
        return this.zza;
    }

    public final zzgwq zze() {
        return this.zzb;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzd;
    }
}
