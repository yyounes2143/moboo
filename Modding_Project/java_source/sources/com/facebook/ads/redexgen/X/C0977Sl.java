package com.facebook.ads.redexgen.X;

import android.os.Process;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Sl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0977Sl implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final C1350cu A00;
    public final InterfaceC0984Ss A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 48);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-79, -51, -102, -74, -64, -64, -74, -69, -76, 109, -112, -68, -69, -63, -78, -59, -63, -102, -90, -92, 101, -99, -104, -102, -100, -103, -90, -90, -94, 101, -104, -101, -86, 2, 17, 0, Ascii.DC2, 7, 7, 9, -10, 8, Ascii.CR, 4, -7, -20, -18, -37, -19, -14, -23, -34, -40, -36, -24, -35, -34};
    }

    public C0977Sl(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1350cu c1350cu, InterfaceC0976Sk interfaceC0976Sk) {
        this(uncaughtExceptionHandler, c1350cu, interfaceC0976Sk, AbstractC0985St.A00());
    }

    public C0977Sl(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1350cu c1350cu, InterfaceC0976Sk interfaceC0976Sk, InterfaceC0984Ss interfaceC0984Ss) {
        this.A02 = uncaughtExceptionHandler;
        if (c1350cu != null) {
            this.A00 = c1350cu;
            this.A03 = interfaceC0976Sk.A8z(c1350cu);
            this.A01 = interfaceC0984Ss;
            return;
        }
        throw new IllegalArgumentException(A00(2, 15, 29));
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        if (this.A02 != null) {
            this.A02.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String A03 = X7.A03(this.A00, th);
            if (!TextUtils.isEmpty(A03)) {
                String stackTraceString = A00(17, 16, 7);
                if (A03.contains(stackTraceString)) {
                    Map<String, String> A02 = new C0975Sj(A03, this.A03).A02();
                    String A00 = A00(38, 7, 100);
                    String stackTraceString2 = A00(33, 5, 111);
                    A02.put(A00, stackTraceString2);
                    Throwable A002 = AbstractRunnableC1048Vg.A00();
                    String A003 = A00(45, 12, 73);
                    if (A002 == th) {
                        String stackTraceString3 = A00(1, 1, 108);
                        A02.put(A003, stackTraceString3);
                    } else {
                        String stackTraceString4 = A00(0, 1, 81);
                        A02.put(A003, stackTraceString4);
                    }
                    this.A01.AKM(new C0991Sz(this.A00.A09().A01(), this.A00.A09().A02(), A02), this.A00);
                    if (U7.A24(this.A00)) {
                        U7.A0e(this.A00);
                    }
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
