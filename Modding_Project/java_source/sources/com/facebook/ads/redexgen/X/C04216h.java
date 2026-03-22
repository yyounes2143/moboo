package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.6h  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04216h extends AbstractC1537fy {
    public static String[] A02 = {"ZvwGPtqIyq", "yiAZi4T0ry", "MW2e2TOPDP9pjEe4rTD", "HlrRgmhjIEURNOsi3rdB558cP", "dU7euze3hj2U1ev62XjIRTQ2vrQriAnf", "8gl08jl5gi3EpiFcU", "SXjkVQ4wGxN0zpwvt09Xfw5qzXSeRw0d", "Y5nQdyuIxyo1Orqk0oN6DnQ8XCev4LBn"};
    public Q8 A00;
    public Q8 A01;

    private int A00(QO qo, View view, Q8 q8) {
        int containerCenter;
        int A0F = q8.A0F(view) + (q8.A0D(view) / 2);
        if (qo.A1V()) {
            int A0A = q8.A0A();
            int childCenter = q8.A0B();
            containerCenter = A0A + (childCenter / 2);
        } else {
            int childCenter2 = q8.A06();
            containerCenter = childCenter2 / 2;
        }
        return A0F - containerCenter;
    }

    private View A01(QO qo, Q8 q8) {
        int i;
        int A0Y = qo.A0Y();
        if (A0Y == 0) {
            return null;
        }
        View view = null;
        if (qo.A1V()) {
            int A0A = q8.A0A();
            int childCount = q8.A0B();
            i = A0A + (childCount / 2);
        } else {
            int childCount2 = q8.A06();
            i = childCount2 / 2;
        }
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < A0Y; i3++) {
            View A0v = qo.A0v(i3);
            int A0F = q8.A0F(A0v);
            int childCount3 = q8.A0D(A0v);
            int childCount4 = Math.abs((A0F + (childCount3 / 2)) - i);
            if (childCount4 < i2) {
                i2 = childCount4;
                String[] strArr = A02;
                String str = strArr[0];
                String str2 = strArr[1];
                int length = str.length();
                int childCount5 = str2.length();
                if (length != childCount5) {
                    throw new RuntimeException();
                }
                A02[5] = "j4bRVUHHACnikA";
                view = A0v;
            }
        }
        return view;
    }

    private View A02(QO qo, Q8 q8) {
        int A0Y = qo.A0Y();
        if (A0Y == 0) {
            return null;
        }
        View view = null;
        int i = Integer.MAX_VALUE;
        if (A02[7].charAt(21) != '9') {
            A02[7] = "DwjJFjjR1ioErHTPj2QZ0AbXqU5bWHnc";
            for (int childCount = 0; childCount < A0Y; childCount++) {
                View A0v = qo.A0v(childCount);
                int A0F = q8.A0F(A0v);
                if (A0F < i) {
                    i = A0F;
                    view = A0v;
                }
            }
            return view;
        }
        throw new RuntimeException();
    }

    private Q8 A03(QO qo) {
        if (this.A00 == null || this.A00.A02 != qo) {
            this.A00 = Q8.A00(qo);
        }
        return this.A00;
    }

    private Q8 A04(QO qo) {
        if (this.A01 == null || this.A01.A02 != qo) {
            this.A01 = Q8.A01(qo);
        }
        return this.A01;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
        if (r0 < 0) goto L26;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC1537fy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A0C(com.facebook.ads.redexgen.X.QO r8, int r9, int r10) {
        /*
            r7 = this;
            int r6 = r8.A0b()
            r2 = -1
            if (r6 != 0) goto L8
            return r2
        L8:
            r1 = 0
            boolean r0 = r8.A23()
            if (r0 == 0) goto L1a
            com.facebook.ads.redexgen.X.Q8 r0 = r7.A04(r8)
            android.view.View r1 = r7.A02(r8, r0)
        L17:
            if (r1 != 0) goto L29
            return r2
        L1a:
            boolean r0 = r8.A22()
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.Q8 r0 = r7.A03(r8)
            android.view.View r1 = r7.A02(r8, r0)
            goto L17
        L29:
            int r5 = r8.A0r(r1)
            if (r5 != r2) goto L30
            return r2
        L30:
            boolean r0 = r8.A22()
            r4 = 0
            if (r0 == 0) goto L66
            if (r9 <= 0) goto L64
            r3 = 1
        L3a:
            r1 = 0
            boolean r0 = r8 instanceof com.facebook.ads.redexgen.X.InterfaceC0915Qa
            if (r0 == 0) goto L58
            com.facebook.ads.redexgen.X.Qa r8 = (com.facebook.ads.redexgen.X.InterfaceC0915Qa) r8
            int r0 = r6 + (-1)
            android.graphics.PointF r2 = r8.A4y(r0)
            if (r2 == 0) goto L58
            float r0 = r2.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L56
            float r0 = r2.y
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L57
        L56:
            r4 = 1
        L57:
            r1 = r4
        L58:
            if (r1 == 0) goto L5f
            if (r3 == 0) goto L5e
            int r5 = r5 + (-1)
        L5e:
            return r5
        L5f:
            if (r3 == 0) goto L5e
            int r5 = r5 + 1
            goto L5e
        L64:
            r3 = 0
            goto L3a
        L66:
            if (r10 <= 0) goto L6a
            r3 = 1
            goto L3a
        L6a:
            r3 = 0
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C04216h.A0C(com.facebook.ads.redexgen.X.QO, int, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1537fy
    public final View A0D(QO qo) {
        if (qo.A23()) {
            return A01(qo, A04(qo));
        }
        if (qo.A22()) {
            View A01 = A01(qo, A03(qo));
            if (A02[4].charAt(24) != 'v') {
                throw new RuntimeException();
            }
            A02[5] = "ku3zp";
            return A01;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1537fy
    public final C1555gH A0E(QO qo) {
        if (!(qo instanceof InterfaceC0915Qa)) {
            return null;
        }
        final Context context = super.A00.getContext();
        return new C1555gH(context) { // from class: com.facebook.ads.redexgen.X.6i
            @Override // com.facebook.ads.redexgen.X.C1555gH, com.facebook.ads.redexgen.X.AbstractC0916Qb
            public final void A0I(View view, C0918Qd c0918Qd, QZ qz) {
                int[] A0H = C04216h.this.A0H(((AbstractC1537fy) C04216h.this).A00.getLayoutManager(), view);
                int time = A0H[0];
                int dy = A0H[1];
                int dx = A0M(Math.max(Math.abs(time), Math.abs(dy)));
                if (dx > 0) {
                    qz.A04(time, dy, dx, ((C1555gH) this).A04);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C1555gH
            public final float A0J(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // com.facebook.ads.redexgen.X.C1555gH
            public final int A0L(int i) {
                return Math.min(100, super.A0L(i));
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1537fy
    public final int[] A0H(QO qo, View view) {
        int[] iArr = new int[2];
        if (qo.A22()) {
            iArr[0] = A00(qo, view, A03(qo));
        } else {
            iArr[0] = 0;
        }
        if (qo.A23()) {
            iArr[1] = A00(qo, view, A04(qo));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
