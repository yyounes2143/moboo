package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class QuantizerWsmeans {
    private static final int MAX_ITERATIONS = 10;
    private static final double MIN_MOVEMENT_DISTANCE = 3.0d;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class Distance implements Comparable<Distance> {
        int index = -1;
        double distance = -1.0d;

        @Override // java.lang.Comparable
        public int compareTo(Distance distance) {
            return Double.valueOf(this.distance).compareTo(Double.valueOf(distance.distance));
        }
    }

    private QuantizerWsmeans() {
    }

    public static Map<Integer, Integer> quantize(int[] iArr, int[] iArr2, int i) {
        double[][] dArr;
        boolean z = true;
        HashMap hashMap = new HashMap();
        double[][] dArr2 = new double[iArr.length];
        int[] iArr3 = new int[iArr.length];
        PointProviderLab pointProviderLab = new PointProviderLab();
        int i2 = 0;
        for (int i3 : iArr) {
            Integer num = (Integer) hashMap.get(Integer.valueOf(i3));
            if (num == null) {
                dArr2[i2] = pointProviderLab.fromInt(i3);
                iArr3[i2] = i3;
                i2++;
                hashMap.put(Integer.valueOf(i3), 1);
            } else {
                hashMap.put(Integer.valueOf(i3), Integer.valueOf(num.intValue() + 1));
            }
        }
        int[] iArr4 = new int[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            iArr4[i4] = ((Integer) hashMap.get(Integer.valueOf(iArr3[i4]))).intValue();
        }
        int min = Math.min(i, i2);
        if (iArr2.length != 0) {
            min = Math.min(min, iArr2.length);
        }
        double[][] dArr3 = new double[min];
        int i5 = 0;
        for (int i6 = 0; i6 < iArr2.length; i6++) {
            dArr3[i6] = pointProviderLab.fromInt(iArr2[i6]);
            i5++;
        }
        int i7 = min - i5;
        if (i7 > 0) {
            for (int i8 = 0; i8 < i7; i8++) {
            }
        }
        int[] iArr5 = new int[i2];
        for (int i9 = 0; i9 < i2; i9++) {
            iArr5[i9] = (int) Math.floor(Math.random() * min);
        }
        int[][] iArr6 = new int[min];
        for (int i10 = 0; i10 < min; i10++) {
            iArr6[i10] = new int[min];
        }
        Distance[][] distanceArr = new Distance[min];
        for (int i11 = 0; i11 < min; i11++) {
            distanceArr[i11] = new Distance[min];
            for (int i12 = 0; i12 < min; i12++) {
                distanceArr[i11][i12] = new Distance();
            }
        }
        int[] iArr7 = new int[min];
        int i13 = 0;
        while (true) {
            if (i13 < 10) {
                int i14 = 0;
                while (i14 < min) {
                    int i15 = i14 + 1;
                    int i16 = i15;
                    while (i16 < min) {
                        boolean z2 = z;
                        int[] iArr8 = iArr4;
                        double distance = pointProviderLab.distance(dArr3[i14], dArr3[i16]);
                        Distance distance2 = distanceArr[i16][i14];
                        distance2.distance = distance;
                        distance2.index = i14;
                        Distance distance3 = distanceArr[i14][i16];
                        distance3.distance = distance;
                        distance3.index = i16;
                        i16++;
                        iArr4 = iArr8;
                        iArr5 = iArr5;
                        z = z2;
                    }
                    int[] iArr9 = iArr4;
                    int[] iArr10 = iArr5;
                    boolean z3 = z;
                    Arrays.sort(distanceArr[i14]);
                    for (int i17 = 0; i17 < min; i17++) {
                        iArr6[i14][i17] = distanceArr[i14][i17].index;
                    }
                    iArr4 = iArr9;
                    iArr5 = iArr10;
                    i14 = i15;
                    z = z3;
                }
                int[] iArr11 = iArr4;
                int[] iArr12 = iArr5;
                boolean z4 = z;
                int i18 = 0;
                int i19 = 0;
                while (i18 < i2) {
                    double[] dArr4 = dArr2[i18];
                    int i20 = iArr12[i18];
                    double distance4 = pointProviderLab.distance(dArr4, dArr3[i20]);
                    int i21 = i18;
                    double d = distance4;
                    int i22 = -1;
                    int i23 = 0;
                    while (i23 < min) {
                        int i24 = i19;
                        double[][] dArr5 = dArr2;
                        double[][] dArr6 = dArr3;
                        if (distanceArr[i20][i23].distance < 4.0d * distance4) {
                            double distance5 = pointProviderLab.distance(dArr4, dArr6[i23]);
                            if (distance5 < d) {
                                d = distance5;
                                i22 = i23;
                            }
                        }
                        i23++;
                        dArr2 = dArr5;
                        i19 = i24;
                        dArr3 = dArr6;
                    }
                    int i25 = i19;
                    double[][] dArr7 = dArr2;
                    double[][] dArr8 = dArr3;
                    if (i22 != -1 && Math.abs(Math.sqrt(d) - Math.sqrt(distance4)) > MIN_MOVEMENT_DISTANCE) {
                        i19 = i25 + 1;
                        iArr12[i21] = i22;
                    } else {
                        i19 = i25;
                    }
                    i18 = i21 + 1;
                    dArr2 = dArr7;
                    dArr3 = dArr8;
                }
                double[][] dArr9 = dArr2;
                dArr = dArr3;
                if (i19 == 0 && i13 != 0) {
                    break;
                }
                double[] dArr10 = new double[min];
                double[] dArr11 = new double[min];
                double[] dArr12 = new double[min];
                char c = 0;
                Arrays.fill(iArr7, 0);
                int i26 = 0;
                while (i26 < i2) {
                    int i27 = iArr12[i26];
                    double[] dArr13 = dArr9[i26];
                    int i28 = iArr11[i26];
                    iArr7[i27] = iArr7[i27] + i28;
                    double d2 = i28;
                    dArr10[i27] = dArr10[i27] + (dArr13[c] * d2);
                    dArr11[i27] = dArr11[i27] + (dArr13[z4 ? 1 : 0] * d2);
                    dArr12[i27] = dArr12[i27] + (dArr13[2] * d2);
                    i26++;
                    iArr6 = iArr6;
                    c = 0;
                }
                int[][] iArr13 = iArr6;
                for (int i29 = 0; i29 < min; i29++) {
                    int i30 = iArr7[i29];
                    if (i30 == 0) {
                        dArr[i29] = new double[]{FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE};
                    } else {
                        double d3 = i30;
                        double d4 = dArr10[i29] / d3;
                        double d5 = dArr11[i29] / d3;
                        double d6 = dArr12[i29] / d3;
                        double[] dArr14 = dArr[i29];
                        dArr14[0] = d4;
                        dArr14[z4 ? 1 : 0] = d5;
                        dArr14[2] = d6;
                    }
                }
                i13++;
                iArr4 = iArr11;
                iArr5 = iArr12;
                iArr6 = iArr13;
                z = z4 ? 1 : 0;
                dArr2 = dArr9;
                dArr3 = dArr;
            } else {
                dArr = dArr3;
                break;
            }
        }
        HashMap hashMap2 = new HashMap();
        for (int i31 = 0; i31 < min; i31++) {
            int i32 = iArr7[i31];
            if (i32 != 0) {
                int i33 = pointProviderLab.toInt(dArr[i31]);
                if (!hashMap2.containsKey(Integer.valueOf(i33))) {
                    hashMap2.put(Integer.valueOf(i33), Integer.valueOf(i32));
                }
            }
        }
        return hashMap2;
    }
}
