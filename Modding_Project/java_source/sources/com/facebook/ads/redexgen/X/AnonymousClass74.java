package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.74  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass74 extends AbstractC1657hy {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{52, 59, 46, 51, 44, 63};
    }

    public AnonymousClass74(List<C0828Mp> list) {
        super(list);
    }

    public static AnonymousClass74 A00(JSONObject jSONObject, C1376dL c1376dL) {
        AnonymousClass74 anonymousClass74 = new AnonymousClass74(AbstractC1657hy.A08(jSONObject, c1376dL, new C1645hm()));
        anonymousClass74.A29(jSONObject);
        anonymousClass74.A1I(A01(0, 6, 107));
        return anonymousClass74;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0827Mo
    public final int A0l() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0827Mo
    public final int A0m() {
        return 0;
    }
}
