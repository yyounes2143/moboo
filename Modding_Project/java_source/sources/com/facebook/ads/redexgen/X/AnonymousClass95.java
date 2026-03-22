package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
/* renamed from: com.facebook.ads.redexgen.X.95  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass95 implements InterfaceC1800kN {
    public static String[] A05 = {"09FvAMDbH0ybjBvy7etGUlmvLnEax64M", "9UhXzLA65KAjnLS2nIkoWygikqgIUMi6", "7x5jjcV5dGluzAi4xLXm7mPjpISGuC5w", "OMb242EU3cjCZF5lkBhqnraDuTpVEe8I", "YkwDHYmprJhwUHAQbO7ClYxi5co4mZVB", "F0wri1MO2ggHk2Yd2fKtZmsEqFQ1SY6P", "VahsyjeijnOod8dsGLMZVGg77qfAqG3R", "hv5jyUmHRXfPhpozztfXRSgwdurH1xzL"};
    public int A00;
    public boolean A01;
    public final J5 A02 = new J5();
    public final C04497j A03 = new C04497j();
    public final Deque<AbstractC04487i> A04 = new ArrayDeque();

    public AnonymousClass95() {
        for (int i = 0; i < 2; i++) {
            this.A04.addFirst(new AbstractC04487i() { // from class: com.facebook.ads.redexgen.X.10
                @Override // com.facebook.ads.redexgen.X.AbstractC04487i, com.facebook.ads.redexgen.X.AbstractC1982nX
                public final void A0B() {
                    AnonymousClass95.this.A04(this);
                }
            });
        }
        this.A00 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A00 */
    public final C04497j A5j() throws C1799kM {
        C3M.A08(!this.A01);
        if (this.A00 != 0) {
            return null;
        }
        this.A00 = 1;
        return this.A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A01 */
    public final AbstractC04487i A5l() throws C1799kM {
        C3M.A08(!this.A01);
        if (this.A00 != 2 || this.A04.isEmpty()) {
            return null;
        }
        AbstractC04487i removeFirst = this.A04.removeFirst();
        if (this.A03.A05()) {
            String[] strArr = A05;
            if (strArr[5].charAt(13) == strArr[0].charAt(13)) {
                throw new RuntimeException();
            }
            A05[4] = "JYyYZLdoMjCFjS6FBvPaG66m4kKjUjXi";
            removeFirst.A00(4);
        } else {
            removeFirst.A0C(this.A03.A01, new C1895m7(this.A03.A01, this.A02.A02(((ByteBuffer) C3M.A01(this.A03.A02)).array())), 0L);
        }
        this.A03.A0A();
        this.A00 = 0;
        return removeFirst;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A03 */
    public final void AGZ(C04497j c04497j) throws C1799kM {
        C3M.A08(!this.A01);
        C3M.A08(this.A00 == 1);
        C3M.A07(this.A03 == c04497j);
        this.A00 = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(AbstractC04487i abstractC04487i) {
        C3M.A08(this.A04.size() < 2);
        C3M.A07(!this.A04.contains(abstractC04487i));
        abstractC04487i.A0A();
        this.A04.addFirst(abstractC04487i);
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public final void AGr() {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800kN
    public final void AIx(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public final void flush() {
        C3M.A08(!this.A01);
        this.A03.A0A();
        this.A00 = 0;
    }
}
