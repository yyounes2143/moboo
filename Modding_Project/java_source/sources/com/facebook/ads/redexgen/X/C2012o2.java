package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
/* renamed from: com.facebook.ads.redexgen.X.o2  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2012o2 implements C1S {
    public final float A00;
    public final float A01;
    public final float A02;
    public final float A03;
    public final float A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final Bitmap A0C;
    public final Layout.Alignment A0D;
    public final Layout.Alignment A0E;
    public final CharSequence A0F;
    public final boolean A0G;
    public static String[] A0H = {"KUNE", "raA8kdJusqhSRQUihDErH9yYSlb7Q0pc", "a1YC1OeN6dpIjzX6IUyhBFBaZFiOBPar", "NtybfxE4AhM4u1v", "wsqusZh9gWXwGZdOs5jqqsOsuYO68ouK", "hrWhj8FC8bQIQnfwmhsxP3BdiVuQ0H3H", "RcL5HtL", "cuPzI7wmuuTc6v"};
    public static final C2012o2 A0J = new C3C().A0G("").A0H();
    public static final String A0U = AbstractC03624a.A0h(0);
    public static final String A0V = AbstractC03624a.A0h(1);
    public static final String A0P = AbstractC03624a.A0h(2);
    public static final String A0K = AbstractC03624a.A0h(3);
    public static final String A0M = AbstractC03624a.A0h(4);
    public static final String A0O = AbstractC03624a.A0h(5);
    public static final String A0N = AbstractC03624a.A0h(6);
    public static final String A0Q = AbstractC03624a.A0h(7);
    public static final String A0R = AbstractC03624a.A0h(8);
    public static final String A0X = AbstractC03624a.A0h(9);
    public static final String A0W = AbstractC03624a.A0h(10);
    public static final String A0T = AbstractC03624a.A0h(11);
    public static final String A0L = AbstractC03624a.A0h(12);
    public static final String A0Z = AbstractC03624a.A0h(13);
    public static final String A0a = AbstractC03624a.A0h(14);
    public static final String A0Y = AbstractC03624a.A0h(15);
    public static final String A0S = AbstractC03624a.A0h(16);
    public static final C1R<C2012o2> A0I = new C1R() { // from class: com.facebook.ads.redexgen.X.o3
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C2012o2 A00;
            A00 = C2012o2.A00(bundle);
            return A00;
        }
    };

    public C2012o2(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            C3M.A01(bitmap);
        } else {
            C3M.A07(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.A0F = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.A0F = charSequence.toString();
        } else {
            this.A0F = null;
        }
        this.A0E = alignment;
        this.A0D = alignment2;
        this.A0C = bitmap;
        this.A01 = f;
        this.A07 = i;
        this.A06 = i2;
        this.A02 = f2;
        this.A08 = i3;
        this.A04 = f4;
        this.A00 = f5;
        this.A0G = z;
        this.A0B = i5;
        this.A09 = i4;
        this.A05 = f3;
        this.A0A = i6;
        this.A03 = f6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0110, code lost:
        if (r5.containsKey(r4) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0112, code lost:
        r3.A0C(r5.getInt(com.facebook.ads.redexgen.X.C2012o2.A0Z));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0122, code lost:
        if (r5.getBoolean(com.facebook.ads.redexgen.X.C2012o2.A0a, false) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0124, code lost:
        r3.A02();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012d, code lost:
        if (r5.containsKey(com.facebook.ads.redexgen.X.C2012o2.A0Y) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012f, code lost:
        r3.A0B(r5.getInt(com.facebook.ads.redexgen.X.C2012o2.A0Y));
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013e, code lost:
        if (r5.containsKey(com.facebook.ads.redexgen.X.C2012o2.A0S) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0140, code lost:
        r3.A05(r5.getFloat(com.facebook.ads.redexgen.X.C2012o2.A0S));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014d, code lost:
        return r3.A0H();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0152, code lost:
        if (r5.containsKey(r4) != false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.facebook.ads.redexgen.X.C2012o2 A00(android.os.Bundle r5) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2012o2.A00(android.os.Bundle):com.facebook.ads.redexgen.X.o2");
    }

    public final C3C A02() {
        return new C3C(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2012o2 c2012o2 = (C2012o2) obj;
        if (TextUtils.equals(this.A0F, c2012o2.A0F) && this.A0E == c2012o2.A0E && this.A0D == c2012o2.A0D && (this.A0C != null ? !(c2012o2.A0C == null || !this.A0C.sameAs(c2012o2.A0C)) : c2012o2.A0C == null) && this.A01 == c2012o2.A01 && this.A07 == c2012o2.A07 && this.A06 == c2012o2.A06) {
            float f = this.A02;
            if (A0H[4].charAt(16) == 'F') {
                throw new RuntimeException();
            }
            A0H[6] = "OaHYrPsvOOcaJ1wPKUjhJjBsa";
            if (f == c2012o2.A02 && this.A08 == c2012o2.A08 && this.A04 == c2012o2.A04 && this.A00 == c2012o2.A00 && this.A0G == c2012o2.A0G && this.A0B == c2012o2.A0B && this.A09 == c2012o2.A09 && this.A05 == c2012o2.A05 && this.A0A == c2012o2.A0A && this.A03 == c2012o2.A03) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return BX.A00(this.A0F, this.A0E, this.A0D, this.A0C, Float.valueOf(this.A01), Integer.valueOf(this.A07), Integer.valueOf(this.A06), Float.valueOf(this.A02), Integer.valueOf(this.A08), Float.valueOf(this.A04), Float.valueOf(this.A00), Boolean.valueOf(this.A0G), Integer.valueOf(this.A0B), Integer.valueOf(this.A09), Float.valueOf(this.A05), Integer.valueOf(this.A0A), Float.valueOf(this.A03));
    }
}
