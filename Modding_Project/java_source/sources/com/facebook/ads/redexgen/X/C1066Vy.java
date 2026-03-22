package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Vy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1066Vy {
    public static String[] A01 = {"0TBfSTrFZZIPTbjcv3YvZ5KQe5wh6M4Z", "Y", "skEIHJjGP8F0E9LHs3c03M6jOmkdnZrb", "lNiM6G1VkMzjPhI0VWbHd", "xoZoqEy9j11lJxTnOEXOmkmQN9dBXrj3", "0lNV7cA9G3CxYQK", "ZSiJ5Be21P36sCEypxWEkyax05PjjigP", "3dFveWP5h629GmfNhsyVO5v38YfKmNKK"};
    public static final ThreadLocal<C1066Vy> A02 = new ThreadLocal<>();
    public final C1049Vh A00 = new C1049Vh();

    public static C1049Vh A00() {
        return A02().A00;
    }

    public static C1049Vh A01(C1065Vx c1065Vx) {
        C1049Vh currentStackTraces = new C1049Vh(A00());
        currentStackTraces.add(c1065Vx);
        return currentStackTraces;
    }

    public static C1066Vy A02() {
        C1066Vy c1066Vy = A02.get();
        if (c1066Vy == null) {
            C1066Vy c1066Vy2 = new C1066Vy();
            A02.set(c1066Vy2);
            return c1066Vy2;
        }
        return c1066Vy;
    }

    public static void A03(AbstractRunnableC1061Vt abstractRunnableC1061Vt) {
        C1049Vh A06 = abstractRunnableC1061Vt.A06();
        if (A06 != null) {
            C1049Vh createRunnableAsyncStackTrace = A02().A00;
            createRunnableAsyncStackTrace.addAll(A06);
        }
    }

    public static void A04(AbstractRunnableC1061Vt abstractRunnableC1061Vt) {
        C1049Vh A06 = abstractRunnableC1061Vt.A06();
        if (A06 != null) {
            C1049Vh c1049Vh = A02().A00;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[0] = "6tfOksRsBjIBNQljvPHCCYkD1Hr87lb7";
            c1049Vh.removeAll(A06);
        }
    }
}
