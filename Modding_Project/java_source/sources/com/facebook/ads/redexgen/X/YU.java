package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YU implements InterfaceC1051Vj {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1051Vj
    public final void AHp(Throwable th, Object obj) {
        if (obj instanceof SM) {
            C1376dL adContext = ((SM) obj).A6e();
            if (adContext != null) {
                adContext.A0Q(th);
            }
        } else if (!(obj instanceof View)) {
        } else {
            Context context = ((View) obj).getContext();
            if (!(context instanceof C1376dL)) {
                return;
            }
            ((C1376dL) context).A0Q(th);
        }
    }
}
