package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzakx implements zzakl {
    private static final byte[] zza = {0, 7, 8, Ascii.SI};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzakq zzg;
    private final zzakp zzh;
    private final zzakw zzi;
    private Bitmap zzj;

    public zzakx(List list) {
        zzek zzekVar = new zzek((byte[]) list.get(0));
        int zzq = zzekVar.zzq();
        int zzq2 = zzekVar.zzq();
        Paint paint = new Paint();
        this.zzd = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.zze = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.zzf = new Canvas();
        this.zzg = new zzakq(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.zzh = new zzakp(0, zzg(), zzh(), zzi());
        this.zzi = new zzakw(zzq, zzq2);
    }

    private static int zzb(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static zzakp zzc(zzej zzejVar, int i) {
        int[] iArr;
        int zzd;
        int i2;
        int zzd2;
        int zzd3;
        int i3 = 8;
        int zzd4 = zzejVar.zzd(8);
        zzejVar.zzn(8);
        int[] zzg = zzg();
        int[] zzh = zzh();
        int[] zzi = zzi();
        int i4 = i - 2;
        while (i4 > 0) {
            int zzd5 = zzejVar.zzd(i3);
            int zzd6 = zzejVar.zzd(i3);
            if ((zzd6 & 128) != 0) {
                iArr = zzg;
            } else if ((zzd6 & 64) != 0) {
                iArr = zzh;
            } else {
                iArr = zzi;
            }
            if ((zzd6 & 1) != 0) {
                zzd2 = zzejVar.zzd(i3);
                zzd3 = zzejVar.zzd(i3);
                zzd = zzejVar.zzd(i3);
                i2 = zzejVar.zzd(i3);
                i4 -= 6;
            } else {
                int zzd7 = zzejVar.zzd(2) << 6;
                i4 -= 4;
                zzd = zzejVar.zzd(4) << 4;
                i2 = zzd7;
                zzd2 = zzejVar.zzd(6) << 2;
                zzd3 = zzejVar.zzd(4) << 4;
            }
            if (zzd2 == 0) {
                i2 = 255;
            }
            if (zzd2 == 0) {
                zzd = 0;
            }
            if (zzd2 == 0) {
                zzd3 = 0;
            }
            int i5 = zzd + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            double d = zzd2;
            String str = zzeu.zza;
            double d2 = zzd3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            double d3 = i5;
            iArr[zzd5] = zzb((byte) (255 - (i2 & 255)), Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255)));
            zzd4 = zzd4;
            i3 = 8;
        }
        return new zzakp(zzd4, zzg, zzh, zzi);
    }

    private static zzakr zzd(zzej zzejVar) {
        byte[] bArr;
        int zzd = zzejVar.zzd(16);
        zzejVar.zzn(4);
        int zzd2 = zzejVar.zzd(2);
        boolean zzp = zzejVar.zzp();
        zzejVar.zzn(1);
        byte[] bArr2 = zzeu.zzb;
        if (zzd2 == 1) {
            zzejVar.zzn(zzejVar.zzd(8) * 16);
        } else if (zzd2 == 0) {
            int zzd3 = zzejVar.zzd(16);
            int zzd4 = zzejVar.zzd(16);
            if (zzd3 > 0) {
                bArr2 = new byte[zzd3];
                zzejVar.zzi(bArr2, 0, zzd3);
            }
            if (zzd4 > 0) {
                bArr = new byte[zzd4];
                zzejVar.zzi(bArr, 0, zzd4);
                return new zzakr(zzd, zzp, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzakr(zzd, zzp, bArr2, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0201 A[LOOP:3: B:89:0x0163->B:122:0x0201, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0171  */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zze(byte[] r22, int[] r23, int r24, int r25, int r26, @androidx.annotation.Nullable android.graphics.Paint r27, android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakx.zze(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] zzf(int i, int i2, zzej zzejVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzejVar.zzd(i2);
        }
        return bArr;
    }

    private static int[] zzg() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] zzh() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i6 = 1; i6 < 16; i6++) {
            int i7 = i6 & 4;
            int i8 = i6 & 2;
            int i9 = i6 & 1;
            if (i6 < 8) {
                if (1 != i9) {
                    i3 = 0;
                } else {
                    i3 = 255;
                }
                if (i8 != 0) {
                    i4 = 255;
                } else {
                    i4 = 0;
                }
                if (i7 != 0) {
                    i5 = 255;
                } else {
                    i5 = 0;
                }
                iArr[i6] = zzb(255, i3, i4, i5);
            } else {
                int i10 = 127;
                if (1 != i9) {
                    i = 0;
                } else {
                    i = 127;
                }
                if (i8 != 0) {
                    i2 = 127;
                } else {
                    i2 = 0;
                }
                if (i7 == 0) {
                    i10 = 0;
                }
                iArr[i6] = zzb(255, i, i2, i10);
            }
        }
        return iArr;
    }

    private static int[] zzi() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i19 = 0; i19 < 256; i19++) {
            int i20 = 255;
            if (i19 < 8) {
                int i21 = i19 & 2;
                int i22 = i19 & 4;
                if (1 != (i19 & 1)) {
                    i17 = 0;
                } else {
                    i17 = 255;
                }
                if (i21 != 0) {
                    i18 = 255;
                } else {
                    i18 = 0;
                }
                if (i22 == 0) {
                    i20 = 0;
                }
                iArr[i19] = zzb(63, i17, i18, i20);
            } else {
                int i23 = i19 & 136;
                int i24 = 170;
                int i25 = 85;
                if (i23 != 0) {
                    if (i23 != 8) {
                        int i26 = 43;
                        if (i23 != 128) {
                            if (i23 == 136) {
                                int i27 = i19 & 16;
                                int i28 = i19 & 32;
                                int i29 = i19 & 2;
                                int i30 = i19 & 64;
                                int i31 = i19 & 4;
                                if (1 != (i19 & 1)) {
                                    i13 = 0;
                                } else {
                                    i13 = 43;
                                }
                                if (i27 != 0) {
                                    i14 = 85;
                                } else {
                                    i14 = 0;
                                }
                                if (i29 != 0) {
                                    i15 = 43;
                                } else {
                                    i15 = 0;
                                }
                                if (i28 != 0) {
                                    i16 = 85;
                                } else {
                                    i16 = 0;
                                }
                                if (i31 == 0) {
                                    i26 = 0;
                                }
                                if (i30 == 0) {
                                    i25 = 0;
                                }
                                iArr[i19] = zzb(255, i13 + i14, i15 + i16, i26 + i25);
                            }
                        } else {
                            int i32 = i19 & 16;
                            int i33 = i19 & 32;
                            int i34 = i19 & 2;
                            int i35 = i19 & 64;
                            int i36 = i19 & 4;
                            if (1 != (i19 & 1)) {
                                i9 = 0;
                            } else {
                                i9 = 43;
                            }
                            int i37 = i9 + 127;
                            if (i32 != 0) {
                                i10 = 85;
                            } else {
                                i10 = 0;
                            }
                            if (i34 != 0) {
                                i11 = 43;
                            } else {
                                i11 = 0;
                            }
                            int i38 = i11 + 127;
                            if (i33 != 0) {
                                i12 = 85;
                            } else {
                                i12 = 0;
                            }
                            if (i36 == 0) {
                                i26 = 0;
                            }
                            int i39 = i26 + 127;
                            if (i35 == 0) {
                                i25 = 0;
                            }
                            iArr[i19] = zzb(255, i37 + i10, i38 + i12, i39 + i25);
                        }
                    } else {
                        int i40 = i19 & 16;
                        int i41 = i19 & 32;
                        int i42 = i19 & 2;
                        int i43 = i19 & 64;
                        int i44 = i19 & 4;
                        if (1 != (i19 & 1)) {
                            i5 = 0;
                        } else {
                            i5 = 85;
                        }
                        if (i40 != 0) {
                            i6 = 170;
                        } else {
                            i6 = 0;
                        }
                        if (i42 != 0) {
                            i7 = 85;
                        } else {
                            i7 = 0;
                        }
                        if (i41 != 0) {
                            i8 = 170;
                        } else {
                            i8 = 0;
                        }
                        if (i44 == 0) {
                            i25 = 0;
                        }
                        if (i43 == 0) {
                            i24 = 0;
                        }
                        iArr[i19] = zzb(127, i5 + i6, i7 + i8, i25 + i24);
                    }
                } else {
                    int i45 = i19 & 16;
                    int i46 = i19 & 32;
                    int i47 = i19 & 2;
                    int i48 = i19 & 64;
                    int i49 = i19 & 4;
                    if (1 != (i19 & 1)) {
                        i = 0;
                    } else {
                        i = 85;
                    }
                    if (i45 != 0) {
                        i2 = 170;
                    } else {
                        i2 = 0;
                    }
                    if (i47 != 0) {
                        i3 = 85;
                    } else {
                        i3 = 0;
                    }
                    if (i46 != 0) {
                        i4 = 170;
                    } else {
                        i4 = 0;
                    }
                    if (i49 == 0) {
                        i25 = 0;
                    }
                    if (i48 == 0) {
                        i24 = 0;
                    }
                    iArr[i19] = zzb(255, i + i2, i3 + i4, i25 + i24);
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        boolean z;
        zzakd zzakdVar;
        Canvas canvas;
        char c;
        char c2;
        char c3;
        int i3;
        zzakw zzakwVar;
        Canvas canvas2;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        zzaku zzakuVar;
        int zzd;
        int zzd2;
        int i7;
        int i8;
        int i9;
        int i10;
        zzej zzejVar = new zzej(bArr, i + i2);
        zzejVar.zzl(i);
        while (true) {
            z = true;
            if (zzejVar.zza() >= 48 && zzejVar.zzd(8) == 15) {
                zzakw zzakwVar2 = this.zzi;
                int zzd3 = zzejVar.zzd(8);
                int zzd4 = zzejVar.zzd(16);
                int zzd5 = zzejVar.zzd(16);
                int zzb2 = zzejVar.zzb() + zzd5;
                if (zzd5 * 8 > zzejVar.zza()) {
                    zzdx.zzf("DvbParser", "Data field length exceeds limit");
                    zzejVar.zzn(zzejVar.zza());
                } else {
                    switch (zzd3) {
                        case 16:
                            if (zzd4 == zzakwVar2.zza) {
                                zzaks zzaksVar = zzakwVar2.zzi;
                                int zzd6 = zzejVar.zzd(8);
                                int zzd7 = zzejVar.zzd(4);
                                int zzd8 = zzejVar.zzd(2);
                                zzejVar.zzn(2);
                                SparseArray sparseArray = new SparseArray();
                                for (int i11 = zzd5 - 2; i11 > 0; i11 -= 6) {
                                    int zzd9 = zzejVar.zzd(8);
                                    zzejVar.zzn(8);
                                    sparseArray.put(zzd9, new zzakt(zzejVar.zzd(16), zzejVar.zzd(16)));
                                }
                                zzaks zzaksVar2 = new zzaks(zzd6, zzd7, zzd8, sparseArray);
                                if (zzaksVar2.zzb != 0) {
                                    zzakwVar2.zzi = zzaksVar2;
                                    zzakwVar2.zzc.clear();
                                    zzakwVar2.zzd.clear();
                                    zzakwVar2.zze.clear();
                                    break;
                                } else if (zzaksVar != null) {
                                    if (zzaksVar.zza != zzaksVar2.zza) {
                                        zzakwVar2.zzi = zzaksVar2;
                                        break;
                                    }
                                }
                            }
                            break;
                        case 17:
                            zzaks zzaksVar3 = zzakwVar2.zzi;
                            if (zzd4 == zzakwVar2.zza && zzaksVar3 != null) {
                                int zzd10 = zzejVar.zzd(8);
                                zzejVar.zzn(4);
                                boolean zzp = zzejVar.zzp();
                                zzejVar.zzn(3);
                                int zzd11 = zzejVar.zzd(16);
                                int zzd12 = zzejVar.zzd(16);
                                int zzd13 = zzejVar.zzd(3);
                                int zzd14 = zzejVar.zzd(3);
                                zzejVar.zzn(2);
                                int zzd15 = zzejVar.zzd(8);
                                int zzd16 = zzejVar.zzd(8);
                                int zzd17 = zzejVar.zzd(4);
                                int zzd18 = zzejVar.zzd(2);
                                zzejVar.zzn(2);
                                int i12 = zzd5 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i12 > 0) {
                                    int zzd19 = zzejVar.zzd(16);
                                    int zzd20 = zzejVar.zzd(2);
                                    int zzd21 = zzejVar.zzd(2);
                                    int zzd22 = zzejVar.zzd(12);
                                    zzejVar.zzn(4);
                                    int zzd23 = zzejVar.zzd(12);
                                    int i13 = i12 - 6;
                                    if (zzd20 != 1) {
                                        if (zzd20 == 2) {
                                            zzd20 = 2;
                                        } else {
                                            i12 = i13;
                                            zzd = 0;
                                            zzd2 = 0;
                                            sparseArray2.put(zzd19, new zzakv(zzd20, zzd21, zzd22, zzd23, zzd, zzd2));
                                        }
                                    }
                                    i12 -= 8;
                                    zzd = zzejVar.zzd(8);
                                    zzd2 = zzejVar.zzd(8);
                                    sparseArray2.put(zzd19, new zzakv(zzd20, zzd21, zzd22, zzd23, zzd, zzd2));
                                }
                                zzaku zzakuVar2 = new zzaku(zzd10, zzp, zzd11, zzd12, zzd13, zzd14, zzd15, zzd16, zzd17, zzd18, sparseArray2);
                                if (zzaksVar3.zzb == 0 && (zzakuVar = (zzaku) zzakwVar2.zzc.get(zzakuVar2.zza)) != null) {
                                    int i14 = 0;
                                    while (true) {
                                        SparseArray sparseArray3 = zzakuVar.zzj;
                                        if (i14 < sparseArray3.size()) {
                                            zzakuVar2.zzj.put(sparseArray3.keyAt(i14), (zzakv) sparseArray3.valueAt(i14));
                                            i14++;
                                        }
                                    }
                                }
                                zzakwVar2.zzc.put(zzakuVar2.zza, zzakuVar2);
                                break;
                            }
                            break;
                        case 18:
                            if (zzd4 == zzakwVar2.zza) {
                                zzakp zzc2 = zzc(zzejVar, zzd5);
                                zzakwVar2.zzd.put(zzc2.zza, zzc2);
                                break;
                            } else if (zzd4 == zzakwVar2.zzb) {
                                zzakp zzc3 = zzc(zzejVar, zzd5);
                                zzakwVar2.zzf.put(zzc3.zza, zzc3);
                                break;
                            }
                            break;
                        case 19:
                            if (zzd4 == zzakwVar2.zza) {
                                zzakr zzd24 = zzd(zzejVar);
                                zzakwVar2.zze.put(zzd24.zza, zzd24);
                                break;
                            } else if (zzd4 == zzakwVar2.zzb) {
                                zzakr zzd25 = zzd(zzejVar);
                                zzakwVar2.zzg.put(zzd25.zza, zzd25);
                                break;
                            }
                            break;
                        case 20:
                            if (zzd4 == zzakwVar2.zza) {
                                zzejVar.zzn(4);
                                boolean zzp2 = zzejVar.zzp();
                                zzejVar.zzn(3);
                                int zzd26 = zzejVar.zzd(16);
                                int zzd27 = zzejVar.zzd(16);
                                if (zzp2) {
                                    int zzd28 = zzejVar.zzd(16);
                                    i7 = zzejVar.zzd(16);
                                    i10 = zzejVar.zzd(16);
                                    i8 = zzejVar.zzd(16);
                                    i9 = zzd28;
                                } else {
                                    i7 = zzd26;
                                    i8 = zzd27;
                                    i9 = 0;
                                    i10 = 0;
                                }
                                zzakwVar2.zzh = new zzakq(zzd26, zzd27, i9, i7, i10, i8);
                                break;
                            }
                            break;
                    }
                    zzejVar.zzo(zzb2 - zzejVar.zzb());
                }
            }
        }
        zzakw zzakwVar3 = this.zzi;
        zzaks zzaksVar4 = zzakwVar3.zzi;
        if (zzaksVar4 == null) {
            zzakdVar = new zzakd(zzfyc.zzn(), -9223372036854775807L, -9223372036854775807L);
        } else {
            zzakq zzakqVar = zzakwVar3.zzh;
            if (zzakqVar == null) {
                zzakqVar = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzakqVar.zza + 1 != bitmap.getWidth() || zzakqVar.zzb + 1 != this.zzj.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(zzakqVar.zza + 1, zzakqVar.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = createBitmap;
                this.zzf.setBitmap(createBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray4 = zzaksVar4.zzc;
            int i15 = 0;
            while (i15 < sparseArray4.size()) {
                Canvas canvas3 = this.zzf;
                canvas3.save();
                zzakt zzaktVar = (zzakt) sparseArray4.valueAt(i15);
                zzaku zzakuVar3 = (zzaku) zzakwVar3.zzc.get(sparseArray4.keyAt(i15));
                int i16 = zzaktVar.zza + zzakqVar.zzc;
                int i17 = zzaktVar.zzb + zzakqVar.zze;
                int i18 = zzakuVar3.zzc;
                int i19 = i16 + i18;
                boolean z2 = z;
                int min = Math.min(i19, zzakqVar.zzd);
                int i20 = zzakuVar3.zzd;
                int i21 = i17 + i20;
                canvas3.clipRect(i16, i17, min, Math.min(i21, zzakqVar.zzf));
                int i22 = zzakuVar3.zzf;
                zzakp zzakpVar = (zzakp) zzakwVar3.zzd.get(i22);
                if (zzakpVar == null && (zzakpVar = (zzakp) zzakwVar3.zzf.get(i22)) == null) {
                    zzakpVar = this.zzh;
                }
                SparseArray sparseArray5 = zzakuVar3.zzj;
                SparseArray sparseArray6 = sparseArray4;
                int i23 = i15;
                int i24 = 0;
                while (i24 < sparseArray5.size()) {
                    int keyAt = sparseArray5.keyAt(i24);
                    int i25 = i24;
                    zzakv zzakvVar = (zzakv) sparseArray5.valueAt(i24);
                    SparseArray sparseArray7 = sparseArray5;
                    zzakr zzakrVar = (zzakr) zzakwVar3.zze.get(keyAt);
                    if (zzakrVar == null) {
                        zzakrVar = (zzakr) zzakwVar3.zzg.get(keyAt);
                    }
                    if (zzakrVar != null) {
                        Paint paint = zzakrVar.zzb ? null : this.zzd;
                        i5 = i18;
                        int i26 = zzakuVar3.zze;
                        zzakwVar = zzakwVar3;
                        int i27 = zzakvVar.zza + i16;
                        int i28 = i17 + zzakvVar.zzb;
                        if (i26 == 3) {
                            iArr = zzakpVar.zzd;
                        } else if (i26 == 2) {
                            iArr = zzakpVar.zzc;
                        } else {
                            iArr = zzakpVar.zzb;
                        }
                        canvas2 = canvas3;
                        i4 = i16;
                        int[] iArr2 = iArr;
                        i6 = i19;
                        zze(zzakrVar.zzc, iArr2, i26, i27, i28, paint, canvas2);
                        zze(zzakrVar.zzd, iArr2, i26, i27, i28 + 1, paint, canvas2);
                    } else {
                        zzakwVar = zzakwVar3;
                        canvas2 = canvas3;
                        i4 = i16;
                        i5 = i18;
                        i6 = i19;
                    }
                    i16 = i4;
                    i19 = i6;
                    i24 = i25 + 1;
                    i18 = i5;
                    canvas3 = canvas2;
                    sparseArray5 = sparseArray7;
                    zzakwVar3 = zzakwVar;
                }
                zzakw zzakwVar4 = zzakwVar3;
                Canvas canvas4 = canvas3;
                int i29 = i16;
                int i30 = i18;
                int i31 = i19;
                float f = i17;
                float f2 = i29;
                if (zzakuVar3.zzb) {
                    int i32 = zzakuVar3.zze;
                    if (i32 == 3) {
                        i3 = zzakpVar.zzd[zzakuVar3.zzg];
                        c3 = 2;
                    } else {
                        c3 = 2;
                        if (i32 == 2) {
                            i3 = zzakpVar.zzc[zzakuVar3.zzh];
                        } else {
                            i3 = zzakpVar.zzb[zzakuVar3.zzi];
                        }
                    }
                    Paint paint2 = this.zze;
                    paint2.setColor(i3);
                    float f3 = i31;
                    c2 = c3;
                    c = 3;
                    canvas = canvas4;
                    canvas.drawRect(f2, f, f3, i21, paint2);
                } else {
                    canvas = canvas4;
                    c = 3;
                    c2 = 2;
                }
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(Bitmap.createBitmap(this.zzj, i29, i17, i30, i20));
                float f4 = zzakqVar.zza;
                zzcsVar.zzh(f2 / f4);
                zzcsVar.zzi(0);
                float f5 = zzakqVar.zzb;
                zzcsVar.zze(f / f5, 0);
                zzcsVar.zzf(0);
                zzcsVar.zzk(i30 / f4);
                zzcsVar.zzd(i20 / f5);
                arrayList.add(zzcsVar.zzp());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                i15 = i23 + 1;
                z = z2;
                zzakwVar3 = zzakwVar4;
                sparseArray4 = sparseArray6;
            }
            zzakdVar = new zzakd(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        zzdkVar.zza(zzakdVar);
    }
}
