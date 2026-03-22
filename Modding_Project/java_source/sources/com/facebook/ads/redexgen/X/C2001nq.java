package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Message;
/* renamed from: com.facebook.ads.redexgen.X.nq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2001nq implements InterfaceC03563u {
    public Message A00;
    public C2000np A01;

    public C2001nq() {
    }

    private void A00() {
        this.A00 = null;
        this.A01 = null;
        C2000np.A02(this);
    }

    public final C2001nq A01(Message message, C2000np c2000np) {
        this.A00 = message;
        this.A01 = c2000np;
        return this;
    }

    public final void A02() {
        ((Message) C3M.A01(this.A00)).sendToTarget();
        A00();
    }

    public final boolean A03(Handler handler) {
        boolean success = handler.sendMessageAtFrontOfQueue((Message) C3M.A01(this.A00));
        A00();
        return success;
    }
}
