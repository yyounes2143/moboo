package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzge extends zzfz {
    @Nullable
    private zzgl zza;
    @Nullable
    private byte[] zzb;
    private int zzc;
    private int zzd;

    public zzge() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzd;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.zzb;
        String str = zzeu.zza;
        System.arraycopy(bArr2, this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws IOException {
        zzi(zzglVar);
        this.zza = zzglVar;
        Uri normalizeScheme = zzglVar.zza.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        zzdc.zze("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        String str = zzeu.zza;
        String[] split = schemeSpecificPart.split(",", -1);
        if (split.length == 2) {
            String str2 = split[1];
            if (split[0].contains(";base64")) {
                try {
                    this.zzb = Base64.decode(str2, 0);
                } catch (IllegalArgumentException e) {
                    throw zzaz.zzb("Error while parsing Base64 encoded string: ".concat(String.valueOf(str2)), e);
                }
            } else {
                this.zzb = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
            }
            long j = zzglVar.zze;
            int length = this.zzb.length;
            if (j <= length) {
                int i = (int) j;
                this.zzc = i;
                int i2 = length - i;
                this.zzd = i2;
                long j2 = zzglVar.zzf;
                int i3 = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
                if (i3 != 0) {
                    this.zzd = (int) Math.min(i2, j2);
                }
                zzj(zzglVar);
                if (i3 != 0) {
                    return j2;
                }
                return this.zzd;
            }
            this.zzb = null;
            throw new zzgh(2008);
        }
        throw zzaz.zzb("Unexpected URI format: ".concat(String.valueOf(normalizeScheme)), null);
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        zzgl zzglVar = this.zza;
        if (zzglVar != null) {
            return zzglVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() {
        if (this.zzb != null) {
            this.zzb = null;
            zzh();
        }
        this.zza = null;
    }
}
