package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcdx implements zzgg {
    private final zzgg zza;
    private final long zzb;
    private final zzgg zzc;
    private long zzd;
    private Uri zze;

    public zzcdx(zzgg zzggVar, int i, zzgg zzggVar2) {
        this.zza = zzggVar;
        this.zzb = i;
        this.zzc = zzggVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int zza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + zza;
            this.zzd = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= j2) {
            int zza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
            int i4 = i3 + zza2;
            this.zzd += zza2;
            return i4;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws IOException {
        Uri uri;
        zzgl zzglVar2;
        long j;
        long j2;
        Uri uri2 = zzglVar.zza;
        this.zze = uri2;
        long j3 = zzglVar.zze;
        long j4 = this.zzb;
        zzgl zzglVar3 = null;
        if (j3 >= j4) {
            uri = uri2;
            zzglVar2 = null;
        } else {
            long j5 = zzglVar.zzf;
            long j6 = j4 - j3;
            if (j5 != -1) {
                j6 = Math.min(j5, j6);
            }
            uri = uri2;
            zzglVar2 = new zzgl(uri, j3, j6, null);
        }
        long j7 = zzglVar.zzf;
        int i = (j7 > (-1L) ? 1 : (j7 == (-1L) ? 0 : -1));
        if (i == 0 || j3 + j7 > j4) {
            Uri uri3 = uri;
            long max = Math.max(j4, j3);
            if (i != 0) {
                j = Math.min(j7, (j3 + j7) - j4);
            } else {
                j = -1;
            }
            zzglVar3 = new zzgl(uri3, max, j, null);
        }
        long j8 = 0;
        if (zzglVar2 != null) {
            j2 = this.zza.zzb(zzglVar2);
        } else {
            j2 = 0;
        }
        if (zzglVar3 != null) {
            j8 = this.zzc.zzb(zzglVar3);
        }
        this.zzd = j3;
        if (j2 == -1 || j8 == -1) {
            return -1L;
        }
        return j2 + j8;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final Map zze() {
        return zzfyf.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzf(zzhg zzhgVar) {
    }
}
