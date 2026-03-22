package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Vt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractRunnableC1061Vt implements Runnable {
    public static byte[] A01;
    public static final AtomicBoolean A02;
    public static final AtomicBoolean A03;
    public static final AtomicReference<InterfaceC1051Vj> A04;
    public final C1049Vh A00;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{44, Ascii.VT, Ascii.DLE, Ascii.DLE, Ascii.US, Ascii.FS, Ascii.DC2, Ascii.ESC, 94, Ascii.GS, Ascii.FF, Ascii.ESC, Ascii.US, 10, Ascii.ESC, Ascii.SUB, 80, 94, 42, Ascii.SYN, Ascii.FF, Ascii.ESC, Ascii.US, Ascii.SUB, 68, 94};
    }

    public abstract void A07();

    static {
        A03();
        A02 = new AtomicBoolean();
        A03 = new AtomicBoolean(false);
        A04 = new AtomicReference<>();
    }

    public AbstractRunnableC1061Vt() {
        if (A03.get()) {
            this.A00 = C1066Vy.A01(new C1065Vx(A02(0, 26, 94) + Thread.currentThread().getName()));
        } else {
            this.A00 = null;
        }
    }

    public static void A04(boolean z) {
        A03.set(z);
    }

    public static void A05(boolean z, InterfaceC1051Vj interfaceC1051Vj) {
        A02.set(z);
        A04.set(interfaceC1051Vj);
    }

    public final C1049Vh A06() {
        return this.A00;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            if (A03.get()) {
                C1066Vy.A03(this);
            }
            A07();
            if (A03.get()) {
                C1066Vy.A04(this);
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
