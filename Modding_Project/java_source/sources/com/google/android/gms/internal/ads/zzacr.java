package com.google.android.gms.internal.ads;

import com.google.common.primitives.SignedBytes;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzacr {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, TXVodDownloadDataSource.QUALITY_480P, 400, 400, 2048};

    /* JADX WARN: Removed duplicated region for block: B:144:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x034e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzz zza(com.google.android.gms.internal.ads.zzek r22, java.lang.String r23, @androidx.annotation.Nullable java.lang.String r24, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzs r25) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 912
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacr.zza(com.google.android.gms.internal.ads.zzek, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzs):com.google.android.gms.internal.ads.zzz");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0091, code lost:
        if (r11 != 11) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0098, code lost:
        if (r11 != 11) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009d, code lost:
        if (r11 != 8) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzacp zzb(com.google.android.gms.internal.ads.zzej r11) {
        /*
            r0 = 16
            int r1 = r11.zzd(r0)
            int r0 = r11.zzd(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r11.zzd(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r11.zzd(r0)
            r2 = 0
            r4 = 3
            if (r1 != r4) goto L38
            r1 = r2
        L2c:
            int r5 = r11.zzd(r0)
            int r1 = r1 + r5
            boolean r5 = r11.zzp()
            if (r5 != 0) goto L3a
            int r1 = r1 + r4
        L38:
            r5 = r1
            goto L3e
        L3a:
            int r1 = r1 + 1
            int r1 = r1 << r0
            goto L2c
        L3e:
            r1 = 10
            int r1 = r11.zzd(r1)
            boolean r6 = r11.zzp()
            if (r6 == 0) goto L53
            int r6 = r11.zzd(r4)
            if (r6 <= 0) goto L53
            r11.zzn(r0)
        L53:
            boolean r6 = r11.zzp()
            r7 = 48000(0xbb80, float:6.7262E-41)
            r9 = 44100(0xac44, float:6.1797E-41)
            r10 = 1
            if (r10 == r6) goto L63
            r6 = r7
            r7 = r9
            goto L64
        L63:
            r6 = r7
        L64:
            int r11 = r11.zzd(r3)
            if (r7 != r9) goto L74
            r9 = 13
            if (r11 != r9) goto L74
            int[] r11 = com.google.android.gms.internal.ads.zzacr.zzb
            r2 = r11[r9]
        L72:
            r9 = r2
            goto La0
        L74:
            if (r7 != r6) goto L72
            r6 = 14
            if (r11 >= r6) goto L72
            int[] r2 = com.google.android.gms.internal.ads.zzacr.zzb
            r2 = r2[r11]
            int r1 = r1 % 5
            r6 = 8
            if (r1 == r10) goto L9b
            r9 = 11
            if (r1 == r0) goto L96
            if (r1 == r4) goto L9b
            if (r1 == r3) goto L8d
            goto L72
        L8d:
            if (r11 == r4) goto L93
            if (r11 == r6) goto L93
            if (r11 != r9) goto L72
        L93:
            int r2 = r2 + 1
            goto L72
        L96:
            if (r11 == r6) goto L93
            if (r11 != r9) goto L72
            goto L93
        L9b:
            if (r11 == r4) goto L93
            if (r11 != r6) goto L72
            goto L93
        La0:
            com.google.android.gms.internal.ads.zzacp r4 = new com.google.android.gms.internal.ads.zzacp
            r6 = 2
            r10 = 0
            r4.<init>(r5, r6, r7, r8, r9, r10)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacr.zzb(com.google.android.gms.internal.ads.zzej):com.google.android.gms.internal.ads.zzacp");
    }

    public static void zzc(int i, zzek zzekVar) {
        zzekVar.zzI(7);
        byte[] zzN = zzekVar.zzN();
        zzN[0] = -84;
        zzN[1] = SignedBytes.MAX_POWER_OF_TWO;
        zzN[2] = -1;
        zzN[3] = -1;
        zzN[4] = (byte) ((i >> 16) & 255);
        zzN[5] = (byte) ((i >> 8) & 255);
        zzN[6] = (byte) (i & 255);
    }

    private static void zzd(zzej zzejVar, zzaco zzacoVar) throws zzaz {
        int zzd = zzejVar.zzd(5);
        zzejVar.zzn(2);
        if (zzejVar.zzp()) {
            zzejVar.zzn(5);
        }
        if (zzd >= 7 && zzd <= 10) {
            zzejVar.zzm();
        }
        if (zzejVar.zzp()) {
            int zzd2 = zzejVar.zzd(3);
            if (zzacoVar.zzb == -1 && zzd >= 0 && zzd <= 15 && (zzd2 == 0 || zzd2 == 1)) {
                zzacoVar.zzb = zzd;
            }
            if (zzejVar.zzp()) {
                zzf(zzejVar);
            }
        }
    }

    private static void zze(zzej zzejVar, zzaco zzacoVar) throws zzaz {
        zzejVar.zzn(2);
        boolean zzp = zzejVar.zzp();
        int zzd = zzejVar.zzd(8);
        for (int i = 0; i < zzd; i++) {
            zzejVar.zzn(2);
            if (zzejVar.zzp()) {
                zzejVar.zzn(5);
            }
            if (zzp) {
                zzejVar.zzn(24);
            } else {
                if (zzejVar.zzp()) {
                    if (!zzejVar.zzp()) {
                        zzejVar.zzn(4);
                    }
                    zzacoVar.zzc = zzejVar.zzd(6) + 1;
                }
                zzejVar.zzn(4);
            }
        }
        if (zzejVar.zzp()) {
            zzejVar.zzn(3);
            if (zzejVar.zzp()) {
                zzf(zzejVar);
            }
        }
    }

    private static void zzf(zzej zzejVar) throws zzaz {
        int zzd = zzejVar.zzd(6);
        if (zzd >= 2 && zzd <= 42) {
            zzejVar.zzn(zzd * 8);
            return;
        }
        throw zzaz.zzc(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(zzd)));
    }

    private static boolean zzg(zzej zzejVar) {
        if (zzejVar.zza() < 66) {
            return false;
        }
        zzejVar.zzn(66);
        return true;
    }
}
