package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzalr {
    private boolean zzb;
    private boolean zzc;
    private int[] zzd;
    private int zze;
    private int zzf;
    @Nullable
    private Rect zzg;
    private final int[] zza = new int[4];
    private int zzh = -1;
    private int zzi = -1;

    private static int zze(int[] iArr, int i) {
        if (i >= iArr.length) {
            i = 0;
        }
        return iArr[i];
    }

    private static int zzf(int i, int i2) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | ((i2 * 17) << 24);
    }

    private final void zzg(zzej zzejVar, boolean z, Rect rect, int[] iArr) {
        int i;
        int i2;
        int i3 = !z ? 1 : 0;
        int width = rect.width();
        int i4 = i3 * width;
        int height = rect.height();
        while (true) {
            int i5 = 0;
            do {
                int i6 = 0;
                for (int i7 = 1; i6 < i7 && i7 <= 64; i7 <<= 2) {
                    if (zzejVar.zza() < 4) {
                        i = -1;
                        i2 = 0;
                        break;
                    }
                    i6 = (i6 << 4) | zzejVar.zzd(4);
                }
                i = i6 & 3;
                if (i6 < 4) {
                    i2 = width;
                } else {
                    i2 = i6 >> 2;
                }
                int min = Math.min(i2, width - i5);
                if (min > 0) {
                    int i8 = i4 + min;
                    Arrays.fill(iArr, i4, i8, this.zza[i]);
                    i5 += min;
                    i4 = i8;
                    continue;
                }
            } while (i5 < width);
            i3 += 2;
            if (i3 >= height) {
                return;
            }
            i4 = i3 * width;
            zzejVar.zzf();
        }
    }

    @Nullable
    public final zzcu zza(zzek zzekVar) {
        Rect rect;
        if (this.zzd != null && this.zzb && this.zzc && (rect = this.zzg) != null && this.zzh != -1 && this.zzi != -1 && rect.width() >= 2 && this.zzg.height() >= 2) {
            Rect rect2 = this.zzg;
            int[] iArr = new int[rect2.width() * rect2.height()];
            zzej zzejVar = new zzej();
            zzekVar.zzL(this.zzh);
            zzejVar.zzj(zzekVar);
            zzg(zzejVar, true, rect2, iArr);
            zzekVar.zzL(this.zzi);
            zzejVar.zzj(zzekVar);
            zzg(zzejVar, false, rect2, iArr);
            Bitmap createBitmap = Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888);
            zzcs zzcsVar = new zzcs();
            zzcsVar.zzc(createBitmap);
            zzcsVar.zzh(rect2.left / this.zze);
            zzcsVar.zzi(0);
            zzcsVar.zze(rect2.top / this.zzf, 0);
            zzcsVar.zzf(0);
            zzcsVar.zzk(rect2.width() / this.zze);
            zzcsVar.zzd(rect2.height() / this.zzf);
            return zzcsVar.zzp();
        }
        return null;
    }

    public final void zzb(String str) {
        String[] split;
        int i;
        String trim = str.trim();
        String str2 = zzeu.zza;
        for (String str3 : trim.split("\\r?\\n", -1)) {
            if (str3.startsWith("palette: ")) {
                String[] split2 = str3.substring(9).split(",", -1);
                this.zzd = new int[split2.length];
                for (int i2 = 0; i2 < split2.length; i2++) {
                    int[] iArr = this.zzd;
                    try {
                        i = Integer.parseInt(split2[i2].trim(), 16);
                    } catch (RuntimeException unused) {
                        i = 0;
                    }
                    iArr[i2] = i;
                }
            } else if (str3.startsWith("size: ")) {
                String[] split3 = str3.substring(6).trim().split("x", -1);
                if (split3.length == 2) {
                    try {
                        this.zze = Integer.parseInt(split3[0]);
                        this.zzf = Integer.parseInt(split3[1]);
                        this.zzb = true;
                    } catch (RuntimeException e) {
                        zzdx.zzg("VobsubParser", "Parsing IDX failed", e);
                    }
                }
            }
        }
    }

    public final void zzc(zzek zzekVar) {
        int[] iArr = this.zzd;
        if (iArr != null && this.zzb) {
            zzekVar.zzM(zzekVar.zzq() - 2);
            int zzq = zzekVar.zzq();
            while (zzekVar.zzc() < zzq && zzekVar.zza() > 0) {
                switch (zzekVar.zzm()) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        if (zzekVar.zza() >= 2) {
                            int zzm = zzekVar.zzm();
                            int zzm2 = zzekVar.zzm();
                            int[] iArr2 = this.zza;
                            iArr2[3] = zze(iArr, zzm >> 4);
                            iArr2[2] = zze(iArr, zzm & 15);
                            iArr2[1] = zze(iArr, zzm2 >> 4);
                            iArr2[0] = zze(iArr, zzm2 & 15);
                            this.zzc = true;
                            break;
                        } else {
                            return;
                        }
                    case 4:
                        if (zzekVar.zza() >= 2 && this.zzc) {
                            int zzm3 = zzekVar.zzm();
                            int zzm4 = zzekVar.zzm();
                            int[] iArr3 = this.zza;
                            iArr3[3] = zzf(iArr3[3], zzm3 >> 4);
                            iArr3[2] = zzf(iArr3[2], zzm3 & 15);
                            iArr3[1] = zzf(iArr3[1], zzm4 >> 4);
                            iArr3[0] = zzf(iArr3[0], zzm4 & 15);
                            break;
                        } else {
                            return;
                        }
                        break;
                    case 5:
                        if (zzekVar.zza() >= 6) {
                            int zzm5 = zzekVar.zzm();
                            int zzm6 = zzekVar.zzm();
                            int i = zzm6 >> 4;
                            int zzm7 = ((zzm6 & 15) << 8) | zzekVar.zzm();
                            int zzm8 = zzekVar.zzm();
                            int zzm9 = zzekVar.zzm();
                            this.zzg = new Rect((zzm5 << 4) | i, (zzm8 << 4) | (zzm9 >> 4), zzm7 + 1, (((zzm9 & 15) << 8) | zzekVar.zzm()) + 1);
                            break;
                        } else {
                            return;
                        }
                    case 6:
                        if (zzekVar.zza() >= 4) {
                            this.zzh = zzekVar.zzq();
                            this.zzi = zzekVar.zzq();
                            break;
                        } else {
                            return;
                        }
                    default:
                        return;
                }
            }
        }
    }

    public final void zzd() {
        this.zzc = false;
        this.zzg = null;
        this.zzh = -1;
        this.zzi = -1;
    }
}
