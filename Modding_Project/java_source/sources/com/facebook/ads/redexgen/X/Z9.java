package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.Locale;
/* loaded from: assets/audience_network.dex */
public abstract class Z9 {
    public static ImageView A00(final C1376dL c1376dL, final C1017Ua c1017Ua, final AbstractC1657hy abstractC1657hy, final InterfaceC1105Xn interfaceC1105Xn, final Z5 z5, Handler handler, Z6 z6) {
        c1376dL.A0F().AAv(z5.name().toLowerCase(Locale.US));
        return abstractC1657hy.A2F() ? new Z4(c1376dL, handler, z6, abstractC1657hy.A1y(), new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.Z7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Z9.A04(C1376dL.this, c1017Ua, interfaceC1105Xn, z5, r4.A25(), abstractC1657hy.A23());
            }
        }) : new ZA(c1376dL, new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.Z8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Z9.A04(C1376dL.this, c1017Ua, interfaceC1105Xn, z5, r4.A25(), abstractC1657hy.A23());
            }
        });
    }

    public static ImageView A01(C1376dL c1376dL, C1017Ua c1017Ua, AbstractC1657hy abstractC1657hy, Z5 z5, InterfaceC1105Xn interfaceC1105Xn, Handler handler) {
        return A00(c1376dL, c1017Ua, abstractC1657hy, interfaceC1105Xn, z5, handler, Z6.A03);
    }

    public static void A04(C1376dL c1376dL, C1017Ua c1017Ua, InterfaceC1105Xn interfaceC1105Xn, Z5 z5, String str, N9 n9) {
        if (c1017Ua != null) {
            c1017Ua.A04(UZ.A0A, null);
        }
        c1376dL.A0F().AAu(z5.name().toLowerCase(Locale.US));
        if (O3.A00(c1376dL.A02()).A0O(c1376dL.A02(), true)) {
            interfaceC1105Xn.AAf(str, n9);
        } else if (TextUtils.isEmpty(n9.A00())) {
        } else {
            WN.A0O(new WN(), c1376dL, WQ.A00(n9.A00()), str);
        }
    }
}
