package com.facebook.ads.redexgen.X;

import androidx.media3.common.PlaybackException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.g8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1546g8 implements InterfaceC0897Pi {
    public static byte[] A01;
    public final /* synthetic */ C04206g A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_SKIP_LIMIT_REACHED);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-10, 0, -9};
    }

    public C1546g8(C04206g c04206g) {
        this.A00 = c04206g;
    }

    private final void A02(C0898Pj c0898Pj) {
        throw new NullPointerException(A00(0, 3, 40));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0897Pi
    public final void AD2(C0898Pj c0898Pj) {
        A02(c0898Pj);
        throw null;
    }
}
