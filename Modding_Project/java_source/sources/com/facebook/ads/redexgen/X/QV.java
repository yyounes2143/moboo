package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.util.ArrayList;
/* loaded from: assets/audience_network.dex */
public class QV {
    public SparseArray<QU> A00 = new SparseArray<>();
    public int A01 = 0;

    private final long A00(long j, long j2) {
        if (j == 0) {
            return j2;
        }
        return ((j / 4) * 3) + (j2 / 4);
    }

    private QU A01(int i) {
        QU qu = this.A00.get(i);
        if (qu == null) {
            QU qu2 = new QU();
            this.A00.put(i, qu2);
            return qu2;
        }
        return qu;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void A02() {
        /*
            r2 = this;
            r1 = 0
        L1:
            android.util.SparseArray<com.facebook.ads.redexgen.X.QU> r0 = r2.A00
            int r0 = r0.size()
            if (r1 >= r0) goto L19
            android.util.SparseArray<com.facebook.ads.redexgen.X.QU> r0 = r2.A00
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.QU r0 = (com.facebook.ads.redexgen.X.QU) r0
            java.util.ArrayList<com.facebook.ads.redexgen.X.Qg> r0 = r0.A03
            r0.clear()
            int r1 = r1 + 1
            goto L1
        L19:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.QV.A02():void");
    }

    public final AbstractC0921Qg A03(int i) {
        QU qu = this.A00.get(i);
        if (qu != null && !qu.A03.isEmpty()) {
            ArrayList<AbstractC0921Qg> arrayList = qu.A03;
            return arrayList.remove(arrayList.size() - 1);
        }
        return null;
    }

    public final void A04() {
        this.A01--;
    }

    public final void A05(int i, long j) {
        QU A01 = A01(i);
        A01.A01 = A00(A01.A01, j);
    }

    public final void A06(int i, long j) {
        QU A01 = A01(i);
        A01.A02 = A00(A01.A02, j);
    }

    public final void A07(QC qc) {
        this.A01++;
    }

    public final void A08(QC qc, QC qc2, boolean z) {
        if (qc != null) {
            A04();
        }
        if (!z && this.A01 == 0) {
            A02();
        }
        if (qc2 != null) {
            A07(qc2);
        }
    }

    public final void A09(AbstractC0921Qg abstractC0921Qg) {
        int A0N = abstractC0921Qg.A0N();
        ArrayList<AbstractC0921Qg> arrayList = A01(A0N).A03;
        int i = this.A00.get(A0N).A00;
        int viewType = arrayList.size();
        if (i <= viewType) {
            return;
        }
        abstractC0921Qg.A0W();
        arrayList.add(abstractC0921Qg);
    }

    public final boolean A0A(int i, long j, long j2) {
        long j3 = A01(i).A01;
        return j3 == 0 || j + j3 < j2;
    }

    public final boolean A0B(int i, long j, long j2) {
        long j3 = A01(i).A02;
        return j3 == 0 || j + j3 < j2;
    }
}
