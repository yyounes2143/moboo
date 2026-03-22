package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.np */
/* loaded from: assets/audience_network.dex */
public final class C2000np implements InterfaceC03573v {
    public static final List<C2001nq> A01 = new ArrayList(50);
    public final Handler A00;

    public C2000np(Handler handler) {
        this.A00 = handler;
    }

    public static C2001nq A00() {
        C2001nq c2001nq;
        synchronized (A01) {
            c2001nq = A01.isEmpty() ? new C2001nq() : A01.remove(A01.size() - 1);
        }
        return c2001nq;
    }

    public static void A01(C2001nq c2001nq) {
        synchronized (A01) {
            if (A01.size() < 50) {
                A01.add(c2001nq);
            }
        }
    }

    public final boolean A03(Runnable runnable) {
        return this.A00.post(runnable);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final Looper A8J() {
        return this.A00.getLooper();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final boolean A9f(int i) {
        return this.A00.hasMessages(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final C2001nq AC7(int i) {
        return A00().A01(this.A00.obtainMessage(i), this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final C2001nq AC8(int i, int i2, int i3) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3), this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final C2001nq AC9(int i, int i2, int i3, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final C2001nq ACA(int i, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, obj), this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final void AHj(int i) {
        this.A00.removeMessages(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final boolean AIQ(int i) {
        return this.A00.sendEmptyMessage(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final boolean AIR(int i, long j) {
        return this.A00.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03573v
    public final boolean AIT(InterfaceC03563u interfaceC03563u) {
        return ((C2001nq) interfaceC03563u).A03(this.A00);
    }
}
