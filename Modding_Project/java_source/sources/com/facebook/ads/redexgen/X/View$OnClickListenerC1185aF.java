package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.aF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1185aF implements View.OnClickListener {
    public final /* synthetic */ C1188aI A00;

    public View$OnClickListenerC1185aF(C1188aI c1188aI) {
        this.A00 = c1188aI;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1187aH interfaceC1187aH;
        AbstractC1104Xm abstractC1104Xm;
        List<View> list;
        E1 e1;
        E1 e12;
        E1 e13;
        AbstractC1104Xm abstractC1104Xm2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1187aH = this.A00.A05;
            interfaceC1187aH.AE7();
            abstractC1104Xm = this.A00.A00;
            if (abstractC1104Xm != null) {
                abstractC1104Xm2 = this.A00.A00;
                XP.A0J(abstractC1104Xm2);
            }
            list = this.A00.A07;
            for (View view2 : list) {
                XP.A0L(view2, 0);
            }
            XP.A0H(this.A00);
            e1 = this.A00.A06;
            if (e1 == null) {
                return;
            }
            e12 = this.A00.A06;
            XP.A0L(e12, 0);
            e13 = this.A00.A06;
            e13.A0h(EnumC1392db.A02, 14);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
