package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List<ResultPoint[]> detect = detect(z, blackMatrix);
        if (detect.isEmpty()) {
            blackMatrix = blackMatrix.m219clone();
            blackMatrix.rotate180();
            detect = detect(z, blackMatrix);
        }
        return new PDF417DetectorResult(blackMatrix, detect);
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (bitMatrix.get(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        boolean z2 = z;
        int i6 = 0;
        int i7 = i;
        while (i < i3) {
            if (bitMatrix.get(i, i2) != z2) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 == length - 1) {
                    if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                        return new int[]{i7, i};
                    }
                    i7 += iArr2[0] + iArr2[1];
                    int i8 = i6 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i6] = 0;
                    i6--;
                } else {
                    i6++;
                }
                iArr2[i6] = 1;
                z2 = !z2;
            }
            i++;
        }
        if (i6 == length - 1 && patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
            return new int[]{i7, i - 1};
        }
        return null;
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        boolean z;
        int[] iArr2;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr3 = iArr;
        int[] iArr4 = new int[iArr3.length];
        int i6 = i3;
        while (true) {
            if (i6 < i) {
                int[] findGuardPattern = findGuardPattern(bitMatrix, i4, i6, i2, false, iArr3, iArr4);
                if (findGuardPattern != null) {
                    do {
                        i5 = i6;
                        iArr2 = findGuardPattern;
                        if (i5 <= 0) {
                            break;
                        }
                        i6 = i5 - 1;
                        findGuardPattern = findGuardPattern(bitMatrix, i4, i6, i2, false, iArr, iArr4);
                    } while (findGuardPattern != null);
                    float f = i5;
                    resultPointArr[0] = new ResultPoint(iArr2[0], f);
                    resultPointArr[1] = new ResultPoint(iArr2[1], f);
                    z = true;
                } else {
                    i6 += 5;
                    iArr3 = iArr;
                }
            } else {
                i5 = i6;
                z = false;
                break;
            }
        }
        int i7 = i5 + 1;
        if (z) {
            int[] iArr5 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i8 = i7;
            int i9 = 0;
            while (i8 < i) {
                int[] findGuardPattern2 = findGuardPattern(bitMatrix, iArr5[0], i8, i2, false, iArr, iArr4);
                if (findGuardPattern2 != null && Math.abs(iArr5[0] - findGuardPattern2[0]) < 5 && Math.abs(iArr5[1] - findGuardPattern2[1]) < 5) {
                    iArr5 = findGuardPattern2;
                    i9 = 0;
                } else if (i9 > 25) {
                    break;
                } else {
                    i9++;
                }
                i8++;
            }
            i7 = i8 - (i9 + 1);
            float f2 = i7;
            resultPointArr[2] = new ResultPoint(iArr5[0], f2);
            resultPointArr[3] = new ResultPoint(iArr5[1], f2);
        }
        if (i7 - i5 < 10) {
            Arrays.fill(resultPointArr, (Object) null);
        }
        return resultPointArr;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        int i3 = i;
        int i4 = i2;
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i3, i4, START_PATTERN), INDEXES_START_PATTERN);
        ResultPoint resultPoint = resultPointArr[4];
        if (resultPoint != null) {
            int x = (int) resultPoint.getX();
            i3 = (int) resultPointArr[4].getY();
            i4 = x;
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i3, i4, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        float f2;
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f3 = i;
        float f4 = f3 / i2;
        float f5 = f * f4;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f7 = iArr2[i4] * f4;
            float f8 = iArr[i4];
            if (f8 > f7) {
                f2 = f8 - f7;
            } else {
                f2 = f7 - f8;
            }
            if (f2 > f5) {
                return Float.POSITIVE_INFINITY;
            }
            f6 += f2;
        }
        return f6 / f3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r4 == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        r3 = r0.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r4 >= r3) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
        r7 = r0.get(r4);
        r4 = r4 + 1;
        r7 = (com.google.zxing.ResultPoint[]) r7;
        r8 = r7[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
        if (r8 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r2 = (int) java.lang.Math.max(r2, r8.getY());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
        r7 = r7[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (r7 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        r2 = java.lang.Math.max(r2, (int) r7.getY());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.zxing.ResultPoint[]> detect(boolean r9, com.google.zxing.common.BitMatrix r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            r2 = r1
            r3 = r2
        L8:
            r4 = r3
        L9:
            int r5 = r10.getHeight()
            if (r2 >= r5) goto L76
            com.google.zxing.ResultPoint[] r3 = findVertices(r10, r2, r3)
            r5 = r3[r1]
            r6 = 1
            if (r5 != 0) goto L4e
            r5 = 3
            r7 = r3[r5]
            if (r7 != 0) goto L4e
            if (r4 == 0) goto L76
            int r3 = r0.size()
            r4 = r1
        L24:
            if (r4 >= r3) goto L4a
            java.lang.Object r7 = r0.get(r4)
            int r4 = r4 + 1
            com.google.zxing.ResultPoint[] r7 = (com.google.zxing.ResultPoint[]) r7
            r8 = r7[r6]
            if (r8 == 0) goto L3c
            float r2 = (float) r2
            float r8 = r8.getY()
            float r2 = java.lang.Math.max(r2, r8)
            int r2 = (int) r2
        L3c:
            r7 = r7[r5]
            if (r7 == 0) goto L24
            float r7 = r7.getY()
            int r7 = (int) r7
            int r2 = java.lang.Math.max(r2, r7)
            goto L24
        L4a:
            int r2 = r2 + 5
            r3 = r1
            goto L8
        L4e:
            r0.add(r3)
            if (r9 == 0) goto L76
            r2 = 2
            r4 = r3[r2]
            if (r4 == 0) goto L67
            float r4 = r4.getX()
            int r4 = (int) r4
            r2 = r3[r2]
            float r2 = r2.getY()
        L63:
            int r2 = (int) r2
            r3 = r4
            r4 = r6
            goto L9
        L67:
            r2 = 4
            r4 = r3[r2]
            float r4 = r4.getX()
            int r4 = (int) r4
            r2 = r3[r2]
            float r2 = r2.getY()
            goto L63
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.detector.Detector.detect(boolean, com.google.zxing.common.BitMatrix):java.util.List");
    }
}
