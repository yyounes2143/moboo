package com.facebook.ads.redexgen.X;

import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* renamed from: com.facebook.ads.redexgen.X.7h  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC04477h implements InterfaceC1800kN {
    public static String[] A06 = {"A1ZwXb6JdBVxSPYV1ZzpyUVQy2gRfJA9", "vkvPFBYHwcZnb4NzphHjmgFJFbjiYwSo", "W7sj7Up3ABI8RZFTAAZOEHe7srfTkl57", "fls3PiASqtk6GqNgTZFqwBZFoYeyHn2V", "1yDmXHBn42mad7W8CPx8A7RWKYn1BqT7", "CjPJSc8sfbO2R56Y3Yx9Z137FYjSqvlb", "2KSypf5DjPiLYF3nQ7brfSsHONTUzR5A", "k5ePLg8NJJ"};
    public long A00;
    public long A01;
    public C02790t A02;
    public final ArrayDeque<C02790t> A03 = new ArrayDeque<>();
    public final ArrayDeque<AbstractC04487i> A04;
    public final PriorityQueue<C02790t> A05;

    public abstract C1795kI A0Z();

    public abstract void A0b(C04497j c04497j);

    public abstract boolean A0d();

    public AbstractC04477h() {
        for (int i = 0; i < 10; i++) {
            this.A03.add(new C02790t());
        }
        this.A04 = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            ArrayDeque<AbstractC04487i> arrayDeque = this.A04;
            final C5S c5s = new C5S() { // from class: com.facebook.ads.redexgen.X.kL
                @Override // com.facebook.ads.redexgen.X.C5S
                public final void AGz(AbstractC1982nX abstractC1982nX) {
                    AbstractC04477h.this.A0c((C02780s) abstractC1982nX);
                }
            };
            arrayDeque.add(new AbstractC04487i(c5s) { // from class: com.facebook.ads.redexgen.X.0s
                public C5S<C02780s> A00;

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5S != com.facebook.ads.androidx.media3.decoder.DecoderOutputBuffer$Owner<com.facebook.ads.androidx.media3.extractor.text.cea.CeaDecoder$CeaOutputBuffer> */
                {
                    this.A00 = c5s;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC04487i, com.facebook.ads.redexgen.X.AbstractC1982nX
                public final void A0B() {
                    this.A00.AGz(this);
                }
            });
        }
        this.A05 = new PriorityQueue<>();
    }

    private void A0U(C02790t c02790t) {
        c02790t.A0A();
        this.A03.add(c02790t);
    }

    public final long A0V() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0W */
    public C04497j A5j() throws C1799kM {
        C3M.A08(this.A02 == null);
        if (this.A03.isEmpty()) {
            return null;
        }
        this.A02 = this.A03.pollFirst();
        return this.A02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
        return null;
     */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.facebook.ads.redexgen.X.AbstractC04487i A5l() throws com.facebook.ads.redexgen.X.C1799kM {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC04477h.A5l():com.facebook.ads.redexgen.X.7i");
    }

    public final AbstractC04487i A0Y() {
        return this.A04.pollFirst();
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0a */
    public void AGZ(C04497j c04497j) throws C1799kM {
        C3M.A07(c04497j == this.A02);
        C02790t c02790t = (C02790t) c04497j;
        if (c02790t.A04()) {
            A0U(c02790t);
        } else {
            long j = this.A01;
            this.A01 = 1 + j;
            c02790t.A00 = j;
            this.A05.add(c02790t);
        }
        if (A06[7].length() != 10) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[0] = "rj1eyhsOe6SuoM1rYy40tvsoNCkJE80J";
        strArr[1] = "ibYLffFAaVDMN4cD1vowu1tbJEM8Lkom";
        this.A02 = null;
    }

    public final void A0c(AbstractC04487i abstractC04487i) {
        abstractC04487i.A0A();
        this.A04.add(abstractC04487i);
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800kN
    public void AIx(long j) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public void flush() {
        this.A01 = 0L;
        this.A00 = 0L;
        while (!this.A05.isEmpty()) {
            A0U((C02790t) AbstractC03624a.A0f(this.A05.poll()));
        }
        if (this.A02 != null) {
            A0U(this.A02);
            this.A02 = null;
        }
    }
}
