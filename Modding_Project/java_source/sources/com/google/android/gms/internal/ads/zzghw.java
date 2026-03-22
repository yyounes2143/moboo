package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghw extends zzgfk {
    private final zzghy zza;
    private final zzgwp zzb;
    @Nullable
    private final Integer zzc;

    private zzghw(zzghy zzghyVar, zzgwp zzgwpVar, @Nullable Integer num) {
        this.zza = zzghyVar;
        this.zzb = zzgwpVar;
        this.zzc = num;
    }

    public static zzghw zzc(zzghy zzghyVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgwp zzb;
        if (zzghyVar.zzb() == zzghx.zza) {
            if (num != null) {
                zzb = zzgwp.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else if (zzghyVar.zzb() == zzghx.zzb) {
            if (num == null) {
                zzb = zzgwp.zzb(new byte[0]);
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else {
            throw new GeneralSecurityException("Unknown Variant: ".concat(zzghyVar.zzb().toString()));
        }
        return new zzghw(zzghyVar, zzb, num);
    }

    @Override // com.google.android.gms.internal.ads.zzgfk, com.google.android.gms.internal.ads.zzgek
    public final /* synthetic */ zzgex zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfk
    public final zzgwp zzb() {
        return this.zzb;
    }

    public final zzghy zzd() {
        return this.zza;
    }

    public final Integer zze() {
        return this.zzc;
    }
}
