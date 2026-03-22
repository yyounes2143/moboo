package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.facebook.ads.RewardData;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.aI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1188aI extends FrameLayout {
    public static String[] A08 = {"Q8PK8a4jCXFMgXydViX", "2t", "0mtDJDWqZSrfiocTEOLDLA", "JwyFxt7bdt7eCUIm0ln", "fPboxvDBMmOISakSS", "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO", "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O", "3APcS373YHqcuLzV9G"};
    public AbstractC1104Xm A00;
    public YA A01;
    public final AbstractC1657hy A02;
    public final C1376dL A03;
    public final InterfaceC1105Xn A04;
    public final InterfaceC1187aH A05;
    public final E1 A06;
    public final List<View> A07;

    public C1188aI(C1214ai c1214ai, AbstractC1657hy abstractC1657hy, E1 e1, C0577Cw c0577Cw, AbstractC1165Zv abstractC1165Zv, InterfaceC1105Xn interfaceC1105Xn, InterfaceC1187aH interfaceC1187aH) {
        this(c1214ai, abstractC1657hy, e1, interfaceC1105Xn, interfaceC1187aH, c0577Cw, abstractC1165Zv);
    }

    public C1188aI(C1214ai c1214ai, AbstractC1657hy abstractC1657hy, E1 e1, InterfaceC1105Xn interfaceC1105Xn, InterfaceC1187aH interfaceC1187aH, View... viewArr) {
        this(c1214ai.A06(), c1214ai.A0C(), abstractC1657hy, e1, interfaceC1105Xn, interfaceC1187aH, viewArr);
    }

    public C1188aI(C1376dL c1376dL, AbstractC1104Xm abstractC1104Xm, AbstractC1657hy abstractC1657hy, E1 e1, InterfaceC1105Xn interfaceC1105Xn, InterfaceC1187aH interfaceC1187aH, View... viewArr) {
        super(c1376dL);
        this.A07 = new ArrayList();
        this.A03 = c1376dL;
        this.A00 = abstractC1104Xm;
        this.A02 = abstractC1657hy;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = interfaceC1105Xn;
        this.A06 = e1;
        this.A05 = interfaceC1187aH;
        A04();
    }

    private void A04() {
        String A06;
        RewardData A0p = this.A02.A0p();
        if (A0p == null) {
            A06 = this.A02.A22().A05();
        } else {
            A06 = this.A02.A22().A06(A0p.getCurrency(), A0p.getQuantity());
        }
        this.A01 = new YA(this.A03, -1, ViewCompat.MEASURED_STATE_MASK, A06, null, this.A02.A22().A04(), this.A02.A22().A03(), XY.A01(XX.REWARD_ICON));
        this.A01.A02.setOnClickListener(new View$OnClickListenerC1185aF(this));
        this.A01.A01.setOnClickListener(new View$OnClickListenerC1186aG(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A01, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A06 != null) {
            this.A06.A0g(EnumC1384dT.A07);
        }
        this.A05.ACI();
        if (!this.A02.A20().A0V()) {
            this.A02.A28(this.A04);
        }
    }

    public final void A07(ViewGroup viewGroup) {
        if (this.A06 != null && !this.A06.A0r()) {
            E1 e1 = this.A06;
            String[] strArr = A08;
            if (strArr[0].length() == strArr[3].length()) {
                String[] strArr2 = A08;
                strArr2[4] = "1Ran1dt8ESvXQPCOL";
                strArr2[1] = BidResponsed.KEY_WN;
                e1.A0m(false, false, 11);
                XP.A0L(this.A06, 4);
            }
            throw new RuntimeException();
        }
        if (this.A00 != null) {
            XP.A0F(this.A00);
        }
        Iterator<View> it = this.A07.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr3 = A08;
            if (strArr3[5].charAt(31) != strArr3[6].charAt(31)) {
                break;
            }
            String[] strArr4 = A08;
            strArr4[0] = "6LHnkwVNW3v3BurcJpp";
            strArr4[3] = "pBsoAnuzgJgS4JAM4BB";
            if (hasNext) {
                View next = it.next();
                next.clearAnimation();
                XP.A0L(next, 4);
            } else {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                viewGroup.addView(this, layoutParams);
                this.A05.AE8();
                return;
            }
        }
        throw new RuntimeException();
    }
}
