package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2102pm {
    public static String[] A0E = {"hvB6Y5lFyDpOUo5WE2d6RBuRXgbY5ZUm", "NE", "ywY8EvofFV55395JkJDayoeTErGWKbkG", "zJ8LsRBLLSys8CPHp", "gH0zTalybZGhm0qBmcsXdCP28l4r1an9", "kduBCn7ltQGfodptcqURcnO6EcdnH0I2", "cBbzau3JoVbeDspRwe3LG6GIj8yddyUH", "tX"};
    public InterfaceC2105pp A00;
    public boolean A01;
    public final Rect A02;
    public final Rect A03;
    public final Handler A04;
    public final InterfaceC1558gK A05;
    public final InterfaceC2113px A06;
    public final A7 A07;
    public final C2104po A08;
    public final A6 A09;
    public final Runnable A0A;
    public final List<Rect> A0B;
    public final List<InterfaceC2090pa> A0C;
    public final List<C2110pu<?, ?>> A0D;

    public C2102pm(A7 a7, InterfaceC2113px interfaceC2113px, InterfaceC1558gK interfaceC1558gK, A6 a6, C2104po c2104po, Handler handler) {
        this(a7, interfaceC2113px, interfaceC1558gK, a6, c2104po, handler, 100);
    }

    public C2102pm(A7 a7, InterfaceC2113px interfaceC2113px, InterfaceC1558gK interfaceC1558gK, A6 a6, C2104po c2104po, Handler handler, int i) {
        this.A03 = new Rect();
        this.A02 = new Rect();
        this.A0C = new ArrayList();
        this.A0D = new ArrayList();
        this.A0B = new ArrayList();
        this.A01 = false;
        this.A07 = a7;
        this.A06 = interfaceC2113px;
        this.A05 = interfaceC1558gK;
        this.A09 = a6;
        this.A08 = c2104po;
        this.A04 = handler;
        this.A0A = new RunnableC2103pn(this, i, new Exception());
    }

    public static Activity A00(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    private void A04(long j) {
        if (this.A0C.isEmpty()) {
            this.A06.A9R(this.A0B);
            this.A09.A4Z(j, this.A0B);
            this.A09.A6H(null);
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(long j) {
        this.A06.A9R(this.A0B);
        this.A09.A4Z(j, this.A0B);
        if (this.A0C.isEmpty()) {
            if (this.A0D.isEmpty()) {
                this.A08.A0A(this.A0C, this.A0D);
                for (final InterfaceC2090pa interfaceC2090pa : this.A0C) {
                    if (this.A07.A00) {
                        this.A08.A09(interfaceC2090pa, new InterfaceC05009v() { // from class: com.facebook.ads.redexgen.X.1I
                            @Override // com.facebook.ads.redexgen.X.InterfaceC05009v
                            public final Object AAB(Object obj) {
                                return C2102pm.this.A0B(interfaceC2090pa, (C2110pu) obj);
                            }
                        });
                    } else {
                        A07(interfaceC2090pa, this.A08.A04(interfaceC2090pa));
                    }
                }
                A6 a6 = this.A09;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) == strArr[4].charAt(3)) {
                    String[] strArr2 = A0E;
                    strArr2[2] = "nrcH38GFR0AnNATGilmIDxGLEfq4UsQc";
                    strArr2[5] = "6vipxWZV3AO1VWKwqmDQLGTjEEAJtLqC";
                    a6.A6H(this.A0D);
                    if (this.A00 != null) {
                        this.A00.AF8();
                    }
                    this.A0C.clear();
                    if (A0E[0].charAt(13) != 'n') {
                        A0E[0] = "FnmTy5Nmh2EcYtYiSa9Vz9TfA3yApsYC";
                        this.A0D.clear();
                        return;
                    }
                }
                throw new RuntimeException();
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    private void A07(InterfaceC2090pa interfaceC2090pa, C2110pu<?, ?> c2110pu) {
        for (Rect rect : this.A0B) {
            Rect containerRect = this.A03;
            if (interfaceC2090pa.A9Q(containerRect, this.A02, rect) && c2110pu != C2110pu.A0B) {
                A6 a6 = this.A09;
                Rect rect2 = this.A03;
                Rect rect3 = this.A02;
                A7 a7 = this.A07;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) != strArr[4].charAt(3)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "vG";
                strArr2[7] = "kB";
                a6.A3y(c2110pu, rect2, rect3, a7.A01);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A08() {
        Context context = this.A06.A7M();
        if (context == null) {
            return true;
        }
        Activity A00 = A00(context);
        if (A00 != null) {
            boolean isDestroyed = A00.isDestroyed();
            if (A0E[3].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[2] = "bz230dZZFwB5VtBTUF6Wd1FYETvWTo5q";
            strArr[5] = "SaD2YYriklneEcKSamPXZGVrEiYqxj4X";
            if (isDestroyed) {
                return true;
            }
        }
        return false;
    }

    public final /* synthetic */ C2084pL A0B(InterfaceC2090pa interfaceC2090pa, C2110pu c2110pu) {
        A07(interfaceC2090pa, c2110pu);
        return null;
    }

    public final void A0C() {
        if (this.A00 != null) {
            this.A00.AF8();
        }
        if (this.A01) {
            this.A04.removeCallbacks(this.A0A);
            A04(this.A05.AC6());
        }
        this.A01 = false;
    }

    public final void A0D() {
        if (!this.A01) {
            this.A01 = true;
            this.A04.post(this.A0A);
        }
    }

    public final void A0E(InterfaceC2107pr interfaceC2107pr) {
        this.A09.AJA(interfaceC2107pr);
    }

    public final void A0F(InterfaceC2105pp interfaceC2105pp) {
        this.A00 = interfaceC2105pp;
    }
}
