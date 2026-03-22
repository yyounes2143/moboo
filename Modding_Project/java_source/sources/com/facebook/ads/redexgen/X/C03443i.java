package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.3i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C03443i extends C0583Dc {
    public static String[] A0F = {"r3hDWnB1R9y4pEiKAURNp99h2b", "kj3t6dP2tWSOfb61zMSBvgjhGLqlygll", "", "sX8uIgx32JWe8q5WuLHBMtkPG7d", "ZlH8xHdCAMZsgB23qoj", "6lejLSjHGD", "XsRzuVWfX96s5Dei3zwO9zjz9s6FXTfu", "pCK0u"};
    public int A00;
    public C1379dO A01;
    public boolean A02;
    public final AbstractC0997Tf<C03393d> A03;
    public final AbstractC0997Tf<C3Y> A04;
    public final AbstractC0997Tf<DQ> A05;
    public final AbstractC0997Tf<C3Q> A06;
    public final AbstractC0997Tf<DL> A07;
    public final AbstractC0997Tf<DJ> A08;
    public final AbstractC0997Tf<DI> A09;
    public final AbstractC0997Tf<DD> A0A;
    public final AbstractC0997Tf<DC> A0B;
    public final E1 A0C;
    public final DN A0D;
    public final DE A0E;

    public C03443i(C1376dL c1376dL, US us, E1 e1, String str) {
        this(c1376dL, us, e1, str, 0, 0, false, null, null);
    }

    public C03443i(C1376dL c1376dL, US us, E1 e1, String str, int i, int i2, boolean z, Bundle bundle, Map<String, String> map) {
        super(c1376dL, us, e1, str, !e1.A0p(), i, i2, z, bundle, map, new C0582Db(c1376dL, e1));
        this.A0E = new DE() { // from class: com.facebook.ads.redexgen.X.3j
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DF df) {
                C03443i.this.A0f();
            }
        };
        this.A08 = new C0593Dm(this);
        this.A04 = new C0592Dl(this);
        this.A05 = new C0591Dk(this);
        this.A06 = new C0590Dj(this);
        this.A03 = new C0589Di(this);
        this.A07 = new C0588Dh(this);
        this.A0A = new C0587Dg(this);
        this.A0B = new C0586Df(this);
        this.A09 = new C0598Dr(this);
        this.A0D = new DN() { // from class: com.facebook.ads.redexgen.X.3k
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DO r3) {
                E1 e12;
                C03443i c03443i = C03443i.this;
                e12 = C03443i.this.A0C;
                c03443i.A00 = e12.getDuration();
            }
        };
        this.A02 = false;
        this.A0C = e1;
        this.A0C.getEventBus().A03(this.A0E, this.A06, this.A08, this.A05, this.A04, this.A03, this.A07, this.A0A, this.A0B, this.A0D, this.A09);
        if (U7.A2m(c1376dL)) {
            this.A01 = new C1379dO(e1, str, z, null);
        }
    }

    public C03443i(C1376dL c1376dL, US us, E1 e1, String str, Bundle bundle, Map<String, String> extraParams) {
        this(c1376dL, us, e1, str, 0, 0, false, bundle, extraParams);
    }

    @Override // com.facebook.ads.redexgen.X.C0583Dc
    public final void A0n(EnumC1383dS enumC1383dS, Map<String, String> map) {
        super.A0n(enumC1383dS, map);
        if (this.A01 != null && enumC1383dS == EnumC1383dS.A09) {
            Map<String, String> params = this.A01.A06();
            String[] strArr = A0F;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0F[2] = "tc9";
            map.putAll(params);
        }
    }

    public final void A0p() {
        C0595Do c0595Do = new C0595Do(this);
        if (this.A0C.A0t()) {
            XJ.A00(c0595Do);
            return;
        }
        E1 e1 = this.A0C;
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0F[1] = "nFCp2DExxe9bklz52WjNRol8ULAuMoj6";
        e1.getStateHandler().post(c0595Do);
    }
}
