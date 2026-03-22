package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* loaded from: assets/audience_network.dex */
public final class A8 implements InterfaceC2115pz {
    public static boolean A07;
    public static byte[] A08;
    public static String[] A09 = {"BoSaZzMMCoBoab6kFzr2tWGVTni5", "Vk9jbaVPkS6rtGXBWv67wEIKcLe3GnXQ", "GJsVZyBqNYZRU43kGmqANe", "Uv9MZIJr", "GbPwVrzkFOEMxWNTB1P9oG5CUgrItJXy", "gWutc4DO", "1FOrRj10jdO8", "rnakDij4LZYpzXru71B"};
    public InterfaceC2118q2 A00;
    public InterfaceC2105pp A01;
    public C2091pb A02;
    public final InterfaceC2106pq A04;
    public final A7 A05;
    public final LinkedHashMap<Integer, Runnable> A06 = new LinkedHashMap<>();
    public final InterfaceC2105pp A03 = new A9(this);

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A08 = new byte[]{-28};
    }

    static {
        A04();
        A07 = false;
    }

    public A8(A7 a7, InterfaceC2118q2 interfaceC2118q2, InterfaceC2106pq interfaceC2106pq) {
        this.A05 = a7;
        this.A00 = interfaceC2118q2;
        this.A04 = interfaceC2106pq;
    }

    public static A8 A01() {
        return new A8(new A7(), new AC(), null);
    }

    private void A05(AbstractC2108ps abstractC2108ps, InterfaceC2113px interfaceC2113px, A6 a6) {
        this.A02 = C2091pb.A00(this.A05, abstractC2108ps, interfaceC2113px, a6);
        if (0 != 0) {
            this.A02.A01(null);
        }
        this.A02.A02(this.A03);
        String[] strArr = A09;
        if (strArr[4].charAt(11) == strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        A09[7] = "2MhPhimmgHBptxasGUILH2";
    }

    private void A06(InterfaceC2090pa interfaceC2090pa, C2116q0 c2116q0) {
        C2091pb c2091pb = this.A02;
        if (c2091pb != null && interfaceC2090pa != null) {
            if (this.A05.A00 && c2116q0 != null) {
                c2091pb.A04(interfaceC2090pa, c2116q0);
            } else {
                c2091pb.A03(interfaceC2090pa);
            }
        }
    }

    private void A07(InterfaceC2090pa interfaceC2090pa, C2116q0 c2116q0, C2110pu c2110pu) {
        C2091pb c2091pb = this.A02;
        if (c2091pb != null && interfaceC2090pa != null && c2110pu != null) {
            if (this.A05.A00 && c2116q0 != null) {
                c2110pu.A02 = interfaceC2090pa.hashCode() + A02(0, 1, 27) + c2110pu.A08 + c2116q0;
                c2091pb.A05(interfaceC2090pa, c2116q0, c2110pu);
                return;
            }
            c2091pb.A06(interfaceC2090pa, c2110pu);
        }
    }

    public final void A08(View view) {
        A06(view != null ? A5.A00(view) : null, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public final void A09(View view, C2110pu<?, ?> c2110pu) {
        A07(view != null ? A5.A00(view) : null, null, c2110pu);
    }

    public final void A0A(AbstractC2108ps abstractC2108ps, View view) {
        if (abstractC2108ps != null && view != null) {
            A05(abstractC2108ps, new AA(view, this.A00), new C1H(null));
        }
    }
}
