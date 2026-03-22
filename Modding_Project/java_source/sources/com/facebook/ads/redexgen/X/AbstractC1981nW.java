package com.facebook.ads.redexgen.X;

import androidx.media3.common.C;
import com.facebook.ads.redexgen.X.AbstractC1982nX;
import com.facebook.ads.redexgen.X.C1983nY;
import com.facebook.ads.redexgen.X.C5P;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.nW  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1981nW<I extends C1983nY, O extends AbstractC1982nX, E extends C5P> implements C5O<I, O, E> {
    public static byte[] A0D;
    public static String[] A0E = {"cgd1TDaxcVMzff1lRtR2y3rhLtmh1J5v", "3mVGt02Eg", "GhemOJNhIn1LMAkty7qqi4u9sWB6uqsq", "Qo0Xi3kRKf", "h5mwzI1V10xDDagqRPLzWxrZN9rQy7u9", "7mnuUFNh1uUIhw2tv7exehIC7mU2Hitk", "5ikXrDS3I2SzCX52iEXUFKqtVJtvkjlK", "jW6s0CcND"};
    public int A00;
    public int A01;
    public int A02;
    public E A03;
    public I A04;
    public boolean A05;
    public boolean A06;
    public final Thread A08;
    public final I[] A0B;
    public final O[] A0C;
    public final Object A07 = new Object();
    public final ArrayDeque<I> A09 = new ArrayDeque<>();
    public final ArrayDeque<O> A0A = new ArrayDeque<>();

    public static String A0O(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 73);
        }
        return new String(copyOfRange);
    }

    public static void A0S() {
        A0D = new byte[]{-32, 19, 10, -21, 7, -4, Ascii.DC4, 0, Ascii.CR, -43, -18, 4, 8, Ascii.VT, 7, 0, -33, 0, -2, 10, -1, 0, Ascii.CR};
    }

    public abstract E A0Y(I i, O o, boolean z);

    public abstract E A0Z(Throwable th);

    public abstract I A0a();

    public abstract O A0c();

    static {
        A0S();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x0020 */
    /* JADX WARN: Incorrect condition in loop: B:8:0x0035 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC1981nW(I[] r4, O[] r5) {
        /*
            r3 = this;
            r3.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r3.A07 = r0
            java.util.ArrayDeque r0 = new java.util.ArrayDeque
            r0.<init>()
            r3.A09 = r0
            java.util.ArrayDeque r0 = new java.util.ArrayDeque
            r0.<init>()
            r3.A0A = r0
            r3.A0B = r4
            int r0 = r4.length
            r3.A00 = r0
            r2 = 0
        L1e:
            int r0 = r3.A00
            if (r2 >= r0) goto L2d
            I extends com.facebook.ads.redexgen.X.nY[] r1 = r3.A0B
            com.facebook.ads.redexgen.X.nY r0 = r3.A0a()
            r1[r2] = r0
            int r2 = r2 + 1
            goto L1e
        L2d:
            r3.A0C = r5
            int r0 = r5.length
            r3.A01 = r0
            r2 = 0
        L33:
            int r0 = r3.A01
            if (r2 >= r0) goto L42
            O extends com.facebook.ads.redexgen.X.nX[] r1 = r3.A0C
            com.facebook.ads.redexgen.X.nX r0 = r3.A0c()
            r1[r2] = r0
            int r2 = r2 + 1
            goto L33
        L42:
            r2 = 0
            r1 = 23
            r0 = 82
            java.lang.String r1 = A0O(r2, r1, r0)
            com.facebook.ads.redexgen.X.5T r0 = new com.facebook.ads.redexgen.X.5T
            r0.<init>(r1)
            r3.A08 = r0
            java.lang.Thread r0 = r3.A08
            r0.start()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1981nW.<init>(com.facebook.ads.redexgen.X.nY[], com.facebook.ads.redexgen.X.nX[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0N */
    public final I A5j() throws C5P {
        I i;
        I i2;
        synchronized (this.A07) {
            A0Q();
            C3M.A08(this.A04 == null);
            if (this.A00 == 0) {
                i = null;
            } else {
                I[] iArr = this.A0B;
                int i3 = this.A00 - 1;
                this.A00 = i3;
                i = iArr[i3];
            }
            this.A04 = i;
            i2 = this.A04;
        }
        return i2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0P() {
        if (A0W()) {
            this.A07.notify();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0Q() throws C5P {
        E exception = this.A03;
        if (exception == null) {
            return;
        }
        throw exception;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public void A0R() {
        while (A0X()) {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0T(I inputBuffer) {
        inputBuffer.A0A();
        I[] iArr = this.A0B;
        int i = this.A00;
        this.A00 = i + 1;
        iArr[i] = inputBuffer;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0U(O outputBuffer) {
        outputBuffer.A0A();
        O[] oArr = this.A0C;
        int i = this.A01;
        this.A01 = i + 1;
        oArr[i] = outputBuffer;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private boolean A0W() {
        if (!this.A09.isEmpty()) {
            int i = this.A01;
            String[] strArr = A0E;
            if (strArr[6].charAt(21) == strArr[4].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "9DwPxvkyUmdJywitv52WFgQf7iOLAqys";
            strArr2[2] = "WYGXgkStQ9kUI1rtTWhvxjquSY9kHuMe";
            if (i > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private boolean A0X() throws InterruptedException {
        E exception;
        synchronized (this.A07) {
            while (!this.A06 && !A0W()) {
                this.A07.wait();
            }
            if (this.A06) {
                return false;
            }
            I removeFirst = this.A09.removeFirst();
            O[] oArr = this.A0C;
            int i = this.A01 - 1;
            this.A01 = i;
            O o = oArr[i];
            boolean z = this.A05;
            this.A05 = false;
            if (removeFirst.A05()) {
                o.A00(4);
            } else {
                if (removeFirst.A04()) {
                    o.A00(Integer.MIN_VALUE);
                }
                if (removeFirst.A06()) {
                    o.A00(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                try {
                    exception = A0Y(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    exception = A0Z(e);
                } catch (RuntimeException e2) {
                    exception = A0Z(e2);
                }
                if (exception != null) {
                    synchronized (this.A07) {
                        this.A03 = exception;
                    }
                    return false;
                }
            }
            synchronized (this.A07) {
                if (this.A05) {
                    o.A0B();
                } else if (o.A04()) {
                    this.A02++;
                    o.A0B();
                } else {
                    o.A00 = this.A02;
                    this.A02 = 0;
                    this.A0A.addLast(o);
                }
                A0T(removeFirst);
            }
            return true;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0b */
    public final O A5l() throws C5P {
        synchronized (this.A07) {
            A0Q();
            if (this.A0A.isEmpty()) {
                return null;
            }
            return this.A0A.removeFirst();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public final void A0d(int i) {
        C3M.A08(this.A00 == this.A0B.length);
        for (I i2 : this.A0B) {
            i2.A0C(i);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0e */
    public final void AGZ(I inputBuffer) throws C5P {
        synchronized (this.A07) {
            A0Q();
            C3M.A07(inputBuffer == this.A04);
            this.A09.addLast(inputBuffer);
            A0P();
            this.A04 = null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public void A0f(O outputBuffer) {
        synchronized (this.A07) {
            A0U(outputBuffer);
            A0P();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override // com.facebook.ads.redexgen.X.C5O
    public final void AGr() {
        synchronized (this.A07) {
            this.A06 = true;
            this.A07.notify();
        }
        try {
            this.A08.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override // com.facebook.ads.redexgen.X.C5O
    public final void flush() {
        synchronized (this.A07) {
            this.A05 = true;
            this.A02 = 0;
            if (this.A04 != null) {
                A0T(this.A04);
                this.A04 = null;
            }
            while (!this.A09.isEmpty()) {
                A0T(this.A09.removeFirst());
            }
            while (!this.A0A.isEmpty()) {
                this.A0A.removeFirst().A0B();
            }
        }
    }
}
