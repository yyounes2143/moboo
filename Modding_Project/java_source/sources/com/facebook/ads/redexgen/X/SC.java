package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: assets/audience_network.dex */
public class SC implements Callable<Boolean> {
    public static byte[] A02;
    public final SB A00;
    public final /* synthetic */ SF A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 41);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-34, -46, -29, -36, -26, -31, -25, -38, -43, -42, -32};
    }

    public SC(SF sf, SB sb) {
        this.A01 = sf;
        this.A00 = sb;
    }

    private final Boolean A00() {
        String A01;
        SQ sq;
        SQ sq2;
        InterfaceC0777Kp A03;
        Map map;
        if (AbstractC1053Vl.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            if (this.A00.A04) {
                A01 = A01(0, 6, 72);
            } else {
                A01 = A01(6, 5, 72);
            }
            String str = this.A00.A08;
            String creativeType = this.A00.A07;
            C0783Kv c0783Kv = new C0783Kv(str, creativeType, this.A00.A06, A01, this.A00.A02, this.A00.A05);
            c0783Kv.A04 = this.A00.A03;
            c0783Kv.A02 = this.A00.A01;
            c0783Kv.A05 = this.A00.A04;
            sq = this.A01.A04;
            if (SI.A06(sq)) {
                map = SF.A0F;
                map.put(this.A00.A08, c0783Kv);
            }
            sq2 = this.A01.A04;
            A03 = SF.A03(sq2.A02());
            return Boolean.valueOf(A03.AHw(c0783Kv) != null);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        if (AbstractC1053Vl.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
            return null;
        }
    }
}
