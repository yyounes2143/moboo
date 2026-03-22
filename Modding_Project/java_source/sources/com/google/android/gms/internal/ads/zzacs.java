package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzacs {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final float zzk;
    @Nullable
    public final String zzl;

    private zzacs(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, @Nullable String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = i8;
        this.zzj = i9;
        this.zzk = f;
        this.zzl = str;
    }

    public static zzacs zza(zzek zzekVar) throws zzaz {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        try {
            zzekVar.zzM(4);
            int zzm = (zzekVar.zzm() & 3) + 1;
            if (zzm != 3) {
                ArrayList arrayList = new ArrayList();
                int zzm2 = zzekVar.zzm() & 31;
                for (int i9 = 0; i9 < zzm2; i9++) {
                    arrayList.add(zzb(zzekVar));
                }
                int zzm3 = zzekVar.zzm();
                for (int i10 = 0; i10 < zzm3; i10++) {
                    arrayList.add(zzb(zzekVar));
                }
                if (zzm2 > 0) {
                    byte[] bArr = zzfs.zza;
                    zzfr zzg = zzfs.zzg((byte[]) arrayList.get(0), 5, ((byte[]) arrayList.get(0)).length);
                    int i11 = zzg.zze;
                    int i12 = zzg.zzf;
                    int i13 = zzg.zzj;
                    int i14 = zzg.zzk;
                    int i15 = zzg.zzl;
                    int i16 = zzg.zzm;
                    float f2 = zzg.zzg;
                    str = zzdh.zzc(zzg.zza, zzg.zzb, zzg.zzc);
                    i5 = i15;
                    i6 = i16;
                    f = f2;
                    i4 = zzg.zzi + 8;
                    i7 = i13;
                    i8 = i14;
                    i = i11;
                    i2 = i12;
                    i3 = zzg.zzh + 8;
                } else {
                    str = null;
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = 16;
                    f = 1.0f;
                    i7 = -1;
                    i8 = -1;
                }
                return new zzacs(arrayList, zzm, i, i2, i3, i4, i7, i8, i5, i6, f, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaz.zza("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzek zzekVar) {
        int zzq = zzekVar.zzq();
        int zzc = zzekVar.zzc();
        zzekVar.zzM(zzq);
        return zzdh.zze(zzekVar.zzN(), zzc, zzq);
    }
}
