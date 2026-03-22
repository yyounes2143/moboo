package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: com.facebook.ads.redexgen.X.g1  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1540g1 extends AbstractC0870Oh {
    public final AbstractC0870Oh A00 = new C1541g2(this);
    public final C04206g A01;

    public C1540g1(C04206g c04206g) {
        this.A01 = c04206g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0870Oh
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C04206g.class.getName());
        if ((view instanceof C04206g) && !A0B()) {
            C04206g c04206g = (C04206g) view;
            if (c04206g.getLayoutManager() != null) {
                c04206g.getLayoutManager().A1v(accessibilityEvent);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0870Oh
    public final void A08(View view, PS ps) {
        super.A08(view, ps);
        ps.A0O(C04206g.class.getName());
        if (!A0B() && this.A01.getLayoutManager() != null) {
            this.A01.getLayoutManager().A1H(ps);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0870Oh
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            return true;
        }
        if (!A0B() && this.A01.getLayoutManager() != null) {
            return this.A01.getLayoutManager().A1X(i, bundle);
        }
        return false;
    }

    public final AbstractC0870Oh A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1r();
    }
}
