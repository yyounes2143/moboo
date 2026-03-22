package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgb extends zzfz {
    @Nullable
    private Uri zza;
    @Nullable
    private byte[] zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private final zzga zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgb(byte[] bArr) {
        super(false);
        zzga zzgaVar = new zzga(bArr);
        this.zzf = zzgaVar;
        zzdc.zzd(bArr.length > 0);
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
        zzdc.zzb(bArr2);
        System.arraycopy(bArr2, this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws IOException {
        zzi(zzglVar);
        this.zza = zzglVar.zza;
        byte[] bArr = this.zzf.zza;
        this.zzb = bArr;
        long j = zzglVar.zze;
        int length = bArr.length;
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
            this.zze = true;
            zzj(zzglVar);
            if (i3 != 0) {
                return j2;
            }
            return this.zzd;
        }
        throw new zzgh(2008);
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() {
        if (this.zze) {
            this.zze = false;
            zzh();
        }
        this.zza = null;
        this.zzb = null;
    }
}
