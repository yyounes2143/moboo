package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.2i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C03182i extends IOException {
    public int A00;
    public boolean A01;

    @Deprecated
    public C03182i() {
    }

    @Deprecated
    public C03182i(String str) {
        super(str);
    }

    public C03182i(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.A01 = z;
        this.A00 = i;
    }

    public static C03182i A00(String str) {
        return new C03182i(str, null, false, 1);
    }

    public static C03182i A01(String str, Throwable th) {
        return new C03182i(str, th, true, 1);
    }

    public static C03182i A02(String str, Throwable th) {
        return new C03182i(str, th, true, 0);
    }
}
