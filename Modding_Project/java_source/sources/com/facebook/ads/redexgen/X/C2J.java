package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.2J */
/* loaded from: assets/audience_network.dex */
public final class C2J {
    public static String[] A05 = {"qHTDH9In90rcdwOuJSMsckDCyhXLEqXh", "sjoVkyKa6A2BCKkZrfwj87PX67VguoUI", "qImvz97oy2HsABXMHKvVYevPQzDne9wP", "UzpUk3fTqoJh79PyI9vqz", "KgRAjTCckMjKxprnKjT8aDWLldg5JvO5", "4Alk19u7jrL2h9l2ISqApHve2GAaOLRy", "kGAXwVnqzw6LSG9eyiJgo4nQQXri73zT", "O"};
    public long A00 = Long.MIN_VALUE;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;

    public static /* synthetic */ long A00(C2J c2j) {
        return c2j.A01;
    }

    public static /* synthetic */ long A01(C2J c2j) {
        return c2j.A00;
    }

    public static /* synthetic */ boolean A02(C2J c2j) {
        return c2j.A03;
    }

    public static /* synthetic */ boolean A03(C2J c2j) {
        return c2j.A02;
    }

    public static /* synthetic */ boolean A04(C2J c2j) {
        return c2j.A04;
    }

    public final C2J A05(long j) {
        C3M.A07(j == Long.MIN_VALUE || j >= 0);
        this.A00 = j;
        return this;
    }

    public final C2J A06(long j) {
        C3M.A07(j >= 0);
        this.A01 = j;
        if (A05[2].charAt(19) != 'l') {
            String[] strArr = A05;
            strArr[1] = "GlFOp7JpNqKfXRYg7N9RmxJvUWBJ1iGt";
            strArr[5] = "Rn5Ay0m12IVZQeo3EqueLf0qwBG2bayA";
            return this;
        }
        throw new RuntimeException();
    }

    public final C2J A07(boolean z) {
        this.A02 = z;
        return this;
    }

    public final C2J A08(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C2J A09(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C04969r A0A() {
        return A0B();
    }

    @Deprecated
    public final C04969r A0B() {
        return new C04969r(this);
    }
}
