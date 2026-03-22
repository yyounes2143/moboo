package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.work.WorkInfo;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaky {
    private final zzek zza = new zzek();
    private final int[] zzb = new int[256];
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    public static /* bridge */ /* synthetic */ void zzb(zzaky zzakyVar, zzek zzekVar, int i) {
        int zzo;
        if (i >= 4) {
            zzekVar.zzM(3);
            int i2 = i - 4;
            if ((zzekVar.zzm() & 128) != 0) {
                if (i2 >= 7 && (zzo = zzekVar.zzo()) >= 4) {
                    zzakyVar.zzh = zzekVar.zzq();
                    zzakyVar.zzi = zzekVar.zzq();
                    zzakyVar.zza.zzI(zzo - 4);
                    i2 = i - 11;
                } else {
                    return;
                }
            }
            zzek zzekVar2 = zzakyVar.zza;
            int zzc = zzekVar2.zzc();
            int zzd = zzekVar2.zzd();
            if (zzc < zzd && i2 > 0) {
                int min = Math.min(i2, zzd - zzc);
                zzekVar.zzH(zzekVar2.zzN(), zzc, min);
                zzekVar2.zzL(zzc + min);
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzc(zzaky zzakyVar, zzek zzekVar, int i) {
        if (i < 19) {
            return;
        }
        zzakyVar.zzd = zzekVar.zzq();
        zzakyVar.zze = zzekVar.zzq();
        zzekVar.zzM(11);
        zzakyVar.zzf = zzekVar.zzq();
        zzakyVar.zzg = zzekVar.zzq();
    }

    public static /* bridge */ /* synthetic */ void zzd(zzaky zzakyVar, zzek zzekVar, int i) {
        if (i % 5 != 2) {
            return;
        }
        zzek zzekVar2 = zzekVar;
        zzekVar2.zzM(2);
        int[] iArr = zzakyVar.zzb;
        Arrays.fill(iArr, 0);
        int i2 = i / 5;
        int i3 = 0;
        while (i3 < i2) {
            int zzm = zzekVar2.zzm();
            int zzm2 = zzekVar2.zzm();
            int zzm3 = zzekVar2.zzm();
            int zzm4 = zzekVar2.zzm();
            int zzm5 = zzekVar2.zzm();
            double d = zzm2;
            int i4 = zzm3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            int i5 = zzm4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            int i6 = zzm5 << 24;
            String str = zzeu.zza;
            double d2 = i4;
            double d3 = i5;
            iArr[zzm] = (Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)) << 16) | i6 | (Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)) << 8) | Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255));
            i3++;
            zzekVar2 = zzekVar;
        }
        zzakyVar.zzc = true;
    }

    @Nullable
    public final zzcu zza() {
        int i;
        int i2;
        if (this.zzd != 0 && this.zze != 0 && this.zzh != 0 && this.zzi != 0) {
            zzek zzekVar = this.zza;
            if (zzekVar.zzd() != 0 && zzekVar.zzc() == zzekVar.zzd() && this.zzc) {
                zzekVar.zzL(0);
                int i3 = this.zzh * this.zzi;
                int[] iArr = new int[i3];
                int i4 = 0;
                while (i4 < i3) {
                    int zzm = zzekVar.zzm();
                    if (zzm != 0) {
                        i = i4 + 1;
                        iArr[i4] = this.zzb[zzm];
                    } else {
                        int zzm2 = zzekVar.zzm();
                        if (zzm2 != 0) {
                            int i5 = zzm2 & 63;
                            if ((zzm2 & 64) != 0) {
                                i5 = (i5 << 8) | zzekVar.zzm();
                            }
                            if ((zzm2 & 128) == 0) {
                                i2 = this.zzb[0];
                            } else {
                                i2 = this.zzb[zzekVar.zzm()];
                            }
                            i = i5 + i4;
                            Arrays.fill(iArr, i4, i, i2);
                        }
                    }
                    i4 = i;
                }
                Bitmap createBitmap = Bitmap.createBitmap(iArr, this.zzh, this.zzi, Bitmap.Config.ARGB_8888);
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(createBitmap);
                zzcsVar.zzh(this.zzf / this.zzd);
                zzcsVar.zzi(0);
                zzcsVar.zze(this.zzg / this.zze, 0);
                zzcsVar.zzf(0);
                zzcsVar.zzk(this.zzh / this.zzd);
                zzcsVar.zzd(this.zzi / this.zze);
                return zzcsVar.zzp();
            }
            return null;
        }
        return null;
    }

    public final void zze() {
        this.zzd = 0;
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = 0;
        this.zza.zzI(0);
        this.zzc = false;
    }
}
