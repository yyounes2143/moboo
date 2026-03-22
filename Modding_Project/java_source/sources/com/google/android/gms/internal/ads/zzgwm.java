package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgwm implements zzgew {
    private static final byte[] zza = {0};
    private final zzgqz zzb;
    private final int zzc;
    private final byte[] zzd;
    private final byte[] zze;

    private zzgwm(zzgox zzgoxVar) throws GeneralSecurityException {
        this.zzb = new zzgwj(zzgoxVar.zze().zzd(zzgej.zza()));
        this.zzc = zzgoxVar.zzc().zzb();
        this.zzd = zzgoxVar.zzd().zzd();
        if (zzgoxVar.zzc().zzf().equals(zzgpd.zzc)) {
            this.zze = Arrays.copyOf(zza, 1);
        } else {
            this.zze = new byte[0];
        }
    }

    public static zzgew zza(zzgox zzgoxVar) throws GeneralSecurityException {
        return new zzgwm(zzgoxVar);
    }

    public static zzgew zzb(zzgpm zzgpmVar) throws GeneralSecurityException {
        return new zzgwm(zzgpmVar);
    }

    public final byte[] zzc(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = this.zze;
        if (bArr2.length > 0) {
            return zzgvp.zzb(this.zzd, this.zzb.zza(zzgvp.zzb(bArr, bArr2), this.zzc));
        }
        return zzgvp.zzb(this.zzd, this.zzb.zza(bArr, this.zzc));
    }

    private zzgwm(zzgpm zzgpmVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(zzgpmVar.zzc().zzf());
        this.zzb = new zzgwl("HMAC".concat(valueOf), new SecretKeySpec(zzgpmVar.zze().zzd(zzgej.zza()), "HMAC"));
        this.zzc = zzgpmVar.zzc().zzb();
        this.zzd = zzgpmVar.zzd().zzd();
        if (zzgpmVar.zzc().zzg().equals(zzgpu.zzc)) {
            this.zze = Arrays.copyOf(zza, 1);
        } else {
            this.zze = new byte[0];
        }
    }

    public zzgwm(zzgqz zzgqzVar, int i) throws GeneralSecurityException {
        this.zzb = zzgqzVar;
        this.zzc = i;
        this.zzd = new byte[0];
        this.zze = new byte[0];
        zzgqzVar.zza(new byte[0], i);
    }
}
