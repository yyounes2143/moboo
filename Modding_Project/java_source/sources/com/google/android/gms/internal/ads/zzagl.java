package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzagl implements zzau {
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzagl(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    public static zzagl zzb(zzek zzekVar) {
        int zzg = zzekVar.zzg();
        String zze = zzay.zze(zzekVar.zzB(zzekVar.zzg(), StandardCharsets.US_ASCII));
        String zzB = zzekVar.zzB(zzekVar.zzg(), StandardCharsets.UTF_8);
        int zzg2 = zzekVar.zzg();
        int zzg3 = zzekVar.zzg();
        int zzg4 = zzekVar.zzg();
        int zzg5 = zzekVar.zzg();
        int zzg6 = zzekVar.zzg();
        byte[] bArr = new byte[zzg6];
        zzekVar.zzH(bArr, 0, zzg6);
        return new zzagl(zzg, zze, zzB, zzg2, zzg3, zzg4, zzg5, bArr);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagl.class == obj.getClass()) {
            zzagl zzaglVar = (zzagl) obj;
            if (this.zza == zzaglVar.zza && this.zzb.equals(zzaglVar.zzb) && this.zzc.equals(zzaglVar.zzc) && this.zzd == zzaglVar.zzd && this.zze == zzaglVar.zze && this.zzf == zzaglVar.zzf && this.zzg == zzaglVar.zzg && Arrays.equals(this.zzh, zzaglVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.zza + 527) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + this.zzd) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31) + Arrays.hashCode(this.zzh);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.zzb + ", description=" + this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final void zza(zzar zzarVar) {
        zzarVar.zza(this.zzh, this.zza);
    }
}
