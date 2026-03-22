package com.google.android.gms.internal.ads;

import androidx.media3.extractor.MpegAudioUtil;
import com.google.android.material.internal.ViewUtils;
import com.tencent.ugc.TXRecordCommon;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzani {
    public static zzang zza(zzej zzejVar) throws zzaz {
        int i;
        int i2;
        char c;
        int i3;
        int i4;
        int i5;
        char c2;
        int zzd = zzejVar.zzd(8);
        int i6 = 5;
        int zzd2 = zzejVar.zzd(5);
        if (zzd2 == 31) {
            i = zzejVar.zzd(24);
        } else {
            switch (zzd2) {
                case 0:
                    i = 96000;
                    break;
                case 1:
                    i = 88200;
                    break;
                case 2:
                    i = 64000;
                    break;
                case 3:
                    i = 48000;
                    break;
                case 4:
                    i = TXRecordCommon.AUDIO_SAMPLERATE_44100;
                    break;
                case 5:
                    i = TXRecordCommon.AUDIO_SAMPLERATE_32000;
                    break;
                case 6:
                    i = 24000;
                    break;
                case 7:
                    i = 22050;
                    break;
                case 8:
                    i = 16000;
                    break;
                case 9:
                    i = 12000;
                    break;
                case 10:
                    i = 11025;
                    break;
                case 11:
                    i = 8000;
                    break;
                case 12:
                    i = 7350;
                    break;
                case 13:
                case 14:
                default:
                    throw zzaz.zzc("Unsupported sampling rate index " + zzd2);
                case 15:
                    i = 57600;
                    break;
                case 16:
                    i = 51200;
                    break;
                case 17:
                    i = MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
                    break;
                case 18:
                    i = 38400;
                    break;
                case 19:
                    i = 34150;
                    break;
                case 20:
                    i = 28800;
                    break;
                case 21:
                    i = 25600;
                    break;
                case 22:
                    i = 20000;
                    break;
                case 23:
                    i = 19200;
                    break;
                case 24:
                    i = 17075;
                    break;
                case 25:
                    i = 14400;
                    break;
                case 26:
                    i = 12800;
                    break;
                case 27:
                    i = 9600;
                    break;
            }
        }
        int zzd3 = zzejVar.zzd(3);
        int i7 = 1;
        if (zzd3 != 0) {
            if (zzd3 != 1) {
                if (zzd3 != 2 && zzd3 != 3) {
                    if (zzd3 == 4) {
                        i2 = 4096;
                    } else {
                        throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + zzd3);
                    }
                } else {
                    i2 = 2048;
                }
            } else {
                i2 = 1024;
            }
        } else {
            i2 = ViewUtils.EDGE_TO_EDGE_FLAGS;
        }
        if (zzd3 != 0 && zzd3 != 1) {
            if (zzd3 != 2) {
                if (zzd3 != 3) {
                    if (zzd3 == 4) {
                        c = 1;
                    } else {
                        throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + zzd3);
                    }
                } else {
                    c = 3;
                }
            } else {
                c = 2;
            }
        } else {
            c = 0;
        }
        zzejVar.zzn(2);
        zze(zzejVar);
        int zzd4 = zzejVar.zzd(5);
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = 16;
            if (i8 < zzd4 + 1) {
                int zzd5 = zzejVar.zzd(3);
                i9 += zzc(zzejVar, 5, 8, 16) + 1;
                if ((zzd5 == 0 || zzd5 == 2) && zzejVar.zzp()) {
                    zze(zzejVar);
                }
                i8++;
            } else {
                int zzc = zzc(zzejVar, 4, 8, 16) + 1;
                zzejVar.zzm();
                int i11 = 0;
                while (true) {
                    double d = 2.0d;
                    if (i11 < zzc) {
                        int zzd6 = zzejVar.zzd(2);
                        if (zzd6 != 0) {
                            if (zzd6 != i7) {
                                if (zzd6 != 3) {
                                    i3 = zzd;
                                    i4 = i7;
                                } else {
                                    zzc(zzejVar, 4, 8, i10);
                                    int zzc2 = zzc(zzejVar, 4, 8, i10);
                                    i4 = i7;
                                    if (zzejVar.zzp()) {
                                        zzc(zzejVar, 8, i10, 0);
                                    }
                                    zzejVar.zzm();
                                    if (zzc2 > 0) {
                                        zzejVar.zzn(zzc2 * 8);
                                    }
                                    i3 = zzd;
                                }
                            } else {
                                i4 = i7;
                                if (zzf(zzejVar)) {
                                    zzejVar.zzm();
                                }
                                if (c > 0) {
                                    zzd(zzejVar);
                                    i5 = zzejVar.zzd(2);
                                    c2 = c;
                                } else {
                                    i5 = 0;
                                    c2 = 0;
                                }
                                if (i5 > 0) {
                                    zzejVar.zzn(6);
                                    int zzd7 = zzejVar.zzd(2);
                                    zzejVar.zzn(4);
                                    if (zzejVar.zzp()) {
                                        zzejVar.zzn(i6);
                                    }
                                    if (i5 == 2 || i5 == 3) {
                                        zzejVar.zzn(6);
                                    }
                                    if (zzd7 == 2) {
                                        zzejVar.zzm();
                                    }
                                }
                                i3 = zzd;
                                int floor = ((int) Math.floor(Math.log(i9 - 1) / Math.log(2.0d))) + 1;
                                int zzd8 = zzejVar.zzd(2);
                                if (zzd8 > 0 && zzejVar.zzp()) {
                                    zzejVar.zzn(floor);
                                }
                                if (zzejVar.zzp()) {
                                    zzejVar.zzn(floor);
                                }
                                if (c2 == 0 && zzd8 == 0) {
                                    zzejVar.zzm();
                                }
                            }
                        } else {
                            i3 = zzd;
                            i4 = i7;
                            zzf(zzejVar);
                            if (c > 0) {
                                zzd(zzejVar);
                            }
                        }
                        i11++;
                        zzd = i3;
                        i7 = i4;
                        i6 = 5;
                        i10 = 16;
                    } else {
                        int i12 = zzd;
                        byte[] bArr = null;
                        if (zzejVar.zzp()) {
                            int zzc3 = zzc(zzejVar, 2, 4, 8) + 1;
                            for (int i13 = 0; i13 < zzc3; i13++) {
                                int zzc4 = zzc(zzejVar, 4, 8, 16);
                                int zzc5 = zzc(zzejVar, 4, 8, 16);
                                if (zzc4 == 7) {
                                    int zzd9 = zzejVar.zzd(4) + 1;
                                    zzejVar.zzn(4);
                                    byte[] bArr2 = new byte[zzd9];
                                    for (int i14 = 0; i14 < zzd9; i14++) {
                                        bArr2[i14] = (byte) zzejVar.zzd(8);
                                    }
                                    bArr = bArr2;
                                } else {
                                    zzejVar.zzn(zzc5 * 8);
                                }
                            }
                        }
                        byte[] bArr3 = bArr;
                        switch (i) {
                            case 14700:
                            case 16000:
                                d = 3.0d;
                                break;
                            case 22050:
                            case 24000:
                                break;
                            case 29400:
                            case TXRecordCommon.AUDIO_SAMPLERATE_32000 /* 32000 */:
                            case 58800:
                            case 64000:
                                d = 1.5d;
                                break;
                            case TXRecordCommon.AUDIO_SAMPLERATE_44100 /* 44100 */:
                            case 48000:
                            case 88200:
                            case 96000:
                                d = 1.0d;
                                break;
                            default:
                                throw zzaz.zzc("Unsupported sampling rate " + i);
                        }
                        return new zzang(i12, (int) (i * d), (int) (i2 * d), bArr3, null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzb(com.google.android.gms.internal.ads.zzej r18, com.google.android.gms.internal.ads.zzanf r19) throws com.google.android.gms.internal.ads.zzaz {
        /*
            r0 = r18
            r1 = r19
            r0.zzb()
            r2 = 3
            r3 = 8
            int r2 = zzc(r0, r2, r3, r3)
            r1.zza = r2
            r4 = 0
            r5 = -1
            if (r2 == r5) goto Lc7
            r2 = 2
            int r6 = java.lang.Math.max(r2, r3)
            r7 = 32
            int r6 = java.lang.Math.max(r6, r7)
            r8 = 63
            r9 = 1
            if (r6 > r8) goto L26
            r6 = r9
            goto L27
        L26:
            r6 = r4
        L27:
            com.google.android.gms.internal.ads.zzdc.zzd(r6)
            r10 = 3
            r12 = 255(0xff, double:1.26E-321)
            long r14 = com.google.android.gms.internal.ads.zzgba.zza(r10, r12)
            r16 = r10
            r10 = 4294967296(0x100000000, double:2.121995791E-314)
            com.google.android.gms.internal.ads.zzgba.zza(r14, r10)
            int r6 = r0.zza()
            r10 = -1
            if (r6 >= r2) goto L46
        L44:
            r14 = r10
            goto L6f
        L46:
            long r14 = r0.zze(r2)
            int r6 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r6 != 0) goto L6f
            int r6 = r0.zza()
            if (r6 >= r3) goto L55
            goto L44
        L55:
            long r14 = r0.zze(r3)
            long r16 = r14 + r16
            int r3 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r3 != 0) goto L6d
            int r3 = r0.zza()
            if (r3 >= r7) goto L66
            goto L44
        L66:
            long r6 = r0.zze(r7)
            long r14 = r16 + r6
            goto L6f
        L6d:
            r14 = r16
        L6f:
            r1.zzb = r14
            int r3 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r3 != 0) goto L76
            return r4
        L76:
            r6 = 16
            int r3 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r3 > 0) goto Lb1
            r6 = 0
            int r3 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r3 != 0) goto La3
            int r3 = r1.zza
            r6 = 0
            if (r3 == r9) goto L9c
            if (r3 == r2) goto L95
            r2 = 17
            if (r3 == r2) goto L8e
            goto La3
        L8e:
            java.lang.String r0 = "AudioTruncation packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r6)
            throw r0
        L95:
            java.lang.String r0 = "Mpegh3daFrame packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r6)
            throw r0
        L9c:
            java.lang.String r0 = "Mpegh3daConfig packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r6)
            throw r0
        La3:
            r2 = 11
            r3 = 24
            int r0 = zzc(r0, r2, r3, r3)
            r1.zzc = r0
            if (r0 == r5) goto Lb0
            return r9
        Lb0:
            return r4
        Lb1:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Contains sub-stream with an invalid packet label "
            r0.append(r1)
            r0.append(r14)
            java.lang.String r0 = r0.toString()
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zzc(r0)
            throw r0
        Lc7:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzani.zzb(com.google.android.gms.internal.ads.zzej, com.google.android.gms.internal.ads.zzanf):boolean");
    }

    private static int zzc(zzej zzejVar, int i, int i2, int i3) {
        boolean z;
        if (Math.max(Math.max(i, i2), i3) <= 31) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        zzgay.zza(zzgay.zza(i4, i5), 1 << i3);
        if (zzejVar.zza() < i) {
            return -1;
        }
        int zzd = zzejVar.zzd(i);
        if (zzd == i4) {
            if (zzejVar.zza() < i2) {
                return -1;
            }
            int zzd2 = zzejVar.zzd(i2);
            int i6 = zzd + zzd2;
            if (zzd2 == i5) {
                if (zzejVar.zza() < i3) {
                    return -1;
                }
                return i6 + zzejVar.zzd(i3);
            }
            return i6;
        }
        return zzd;
    }

    private static void zzd(zzej zzejVar) {
        zzejVar.zzn(3);
        zzejVar.zzn(8);
        boolean zzp = zzejVar.zzp();
        boolean zzp2 = zzejVar.zzp();
        if (zzp) {
            zzejVar.zzn(5);
        }
        if (zzp2) {
            zzejVar.zzn(6);
        }
    }

    private static void zze(zzej zzejVar) {
        int i;
        int zzd;
        int zzd2 = zzejVar.zzd(2);
        int i2 = 6;
        if (zzd2 == 0) {
            zzejVar.zzn(6);
            return;
        }
        int i3 = 5;
        int zzc = zzc(zzejVar, 5, 8, 16) + 1;
        if (zzd2 == 1) {
            zzejVar.zzn(zzc * 7);
        } else if (zzd2 == 2) {
            boolean zzp = zzejVar.zzp();
            if (true != zzp) {
                i = 5;
            } else {
                i = 1;
            }
            if (true == zzp) {
                i3 = 7;
            }
            if (true == zzp) {
                i2 = 8;
            }
            int i4 = 0;
            while (i4 < zzc) {
                if (zzejVar.zzp()) {
                    zzejVar.zzn(7);
                    zzd = 0;
                } else {
                    if (zzejVar.zzd(2) == 3 && zzejVar.zzd(i3) * i != 0) {
                        zzejVar.zzm();
                    }
                    zzd = zzejVar.zzd(i2) * i;
                    if (zzd != 0 && zzd != 180) {
                        zzejVar.zzm();
                    }
                    zzejVar.zzm();
                }
                if (zzd != 0 && zzd != 180 && zzejVar.zzp()) {
                    i4++;
                }
                i4++;
            }
        }
    }

    private static boolean zzf(zzej zzejVar) {
        zzejVar.zzn(3);
        boolean zzp = zzejVar.zzp();
        if (zzp) {
            zzejVar.zzn(13);
        }
        return zzp;
    }
}
