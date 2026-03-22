package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* renamed from: com.facebook.ads.redexgen.X.7s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04587s implements InterfaceC1823kk {
    public final long A00;
    public final long[] A01;
    public final long[] A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, Long> A00(long j, long[] jArr, long[] jArr2) {
        int A0L = AbstractC03624a.A0L(jArr, j, true, true);
        long j2 = jArr[A0L];
        long j3 = jArr2[A0L];
        int i = A0L + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr2[i] - j3) * (j4 == j2 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : (j - j2) / (j4 - j2)))) + j3));
    }

    public C04587s(long[] jArr, long[] jArr2, long j) {
        this.A01 = jArr;
        this.A02 = jArr2;
        this.A00 = j == -9223372036854775807L ? AbstractC03624a.A0O(jArr2[jArr2.length - 1]) : j;
    }

    public static C04587s A01(long j, MlltFrame mlltFrame, long j2) {
        int length = mlltFrame.A03.length;
        int referenceCount = length + 1;
        long[] jArr = new long[referenceCount];
        int referenceCount2 = length + 1;
        long[] jArr2 = new long[referenceCount2];
        jArr[0] = j;
        jArr2[0] = 0;
        long j3 = 0;
        for (int i = 1; i <= length; i++) {
            int referenceCount3 = i - 1;
            j += mlltFrame.A00 + mlltFrame.A03[referenceCount3];
            int referenceCount4 = i - 1;
            j3 += mlltFrame.A01 + mlltFrame.A04[referenceCount4];
            jArr[i] = j;
            jArr2[i] = j3;
        }
        return new C04587s(jArr, jArr2, j2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1823kk
    public final long A7b() {
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final C0680Gv A8t(long j) {
        Pair<Long, Long> A00 = A00(AbstractC03624a.A0P(AbstractC03624a.A0T(j, 0L, this.A00)), this.A02, this.A01);
        return new C0680Gv(new C0682Gx(AbstractC03624a.A0O(((Long) A00.first).longValue()), ((Long) A00.second).longValue()));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1823kk
    public final long A99(long j) {
        Pair<Long, Long> positionAndTimeMs = A00(j, this.A01, this.A02);
        return AbstractC03624a.A0O(((Long) positionAndTimeMs.second).longValue());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final boolean AAa() {
        return true;
    }
}
