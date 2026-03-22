package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.facebook.ads.androidx.media3.exoplayer.scheduler.Requirements;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
/* loaded from: assets/audience_network.dex */
public final class BT {
    public static byte[] A0G;
    public static String[] A0H = {"pVyOFxmsQ66MTtm1tfRFfgviAXYtJVde", "2uUwIcomsi7SFa7PXkK2f37odc1wLlYz", "QkwYj4Lqiyfn1sjUd74ET1yWKOC2yQQp", "dFCgemChCTNfDzsLBkcDawIxAoCNtdjt", "sEgyiM3VxaELP8J5ElL8PsjgrXzRWZa", "oraRcW9NweHiYSV9WAd4vPrbGQ1KpHw2", "RucdtTHsidUdQvrsj3emf0t2ky4JUHkt", "bkvUCljONwekC27QIXEAtZgyfnOfNHe"};
    public static final Requirements A0I;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public C0551Bv A05;
    public List<B8> A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final Context A0A;
    public final Handler A0B;
    public final BQ A0C;
    public final InterfaceC1916mT A0D;
    public final InterfaceC0547Br A0E;
    public final CopyOnWriteArraySet<BS> A0F;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0H[0].charAt(31) != 'e') {
                throw new RuntimeException();
            }
            A0H[1] = "Q4q55Cq4Bi7IKuCSPoembBRK5ZQkCbyv";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 123);
            i4++;
        }
    }

    public static void A03() {
        A0G = new byte[]{34, Ascii.US, 8, 55, Ascii.VT, 6, Ascii.RS, 2, Ascii.NAK, 93, 35, 8, Ascii.DLE, 9, Ascii.VT, 8, 6, 3, 42, 6, 9, 6, 0, 2, Ascii.NAK};
    }

    static {
        A03();
        A0I = new Requirements(1);
    }

    public BT(Context context, InterfaceC03744m interfaceC03744m, InterfaceC0801Ln interfaceC0801Ln, InterfaceC03844w interfaceC03844w, Executor executor) {
        this(context, new C9H(interfaceC03744m), new C1925mc(new C1714ix().A06(interfaceC0801Ln).A05(interfaceC03844w), executor));
    }

    public BT(Context context, InterfaceC1916mT interfaceC1916mT, InterfaceC0538Bh interfaceC0538Bh) {
        this.A0A = context.getApplicationContext();
        this.A0D = interfaceC1916mT;
        this.A01 = 3;
        this.A02 = 5;
        this.A07 = true;
        this.A06 = Collections.emptyList();
        this.A0F = new CopyOnWriteArraySet<>();
        Handler A0b = AbstractC03624a.A0b(new Handler.Callback() { // from class: com.facebook.ads.redexgen.X.BM
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean A0B;
                A0B = BT.this.A0B(message);
                return A0B;
            }
        });
        this.A0B = A0b;
        HandlerThread handlerThread = new HandlerThread(A01(0, 25, 28));
        handlerThread.start();
        this.A0C = new BQ(handlerThread, interfaceC1916mT, interfaceC0538Bh, A0b, this.A01, this.A02, this.A07);
        InterfaceC0547Br requirementsListener = new InterfaceC0547Br() { // from class: com.facebook.ads.redexgen.X.mb
            @Override // com.facebook.ads.redexgen.X.InterfaceC0547Br
            public final void AEz(C0551Bv c0551Bv, int i) {
                BT.this.A07(c0551Bv, i);
            }
        };
        this.A0E = requirementsListener;
        this.A05 = new C0551Bv(context, requirementsListener, A0I);
        this.A03 = this.A05.A09();
        this.A04 = 1;
        this.A0C.obtainMessage(0, this.A03, 0).sendToTarget();
    }

    public static B8 A00(B8 b8, DownloadRequest downloadRequest, int i, long j) {
        long j2;
        int i2;
        int i3 = b8.A02;
        if (i3 == 5 || b8.A02()) {
            j2 = j;
        } else {
            j2 = b8.A05;
        }
        if (i3 == 5 || i3 == 7) {
            i2 = 7;
        } else if (i != 0) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        return new B8(b8.A07.A02(downloadRequest), i2, j2, j, -1L, i, 0);
    }

    private void A02() {
        Iterator<BS> it = this.A0F.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A0H[2].charAt(11) == 'k') {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[4] = "SmTtusU6hPZNCMRD5EytmTKQlQAuGgF";
            strArr[7] = "GYCdxmdyxLWQsNM7s6qdd5Bkhe8SJ7C";
            if (hasNext) {
                BS listener = it.next();
                listener.AFv(this, this.A09);
            } else {
                return;
            }
        }
    }

    private void A04(int i, int i2) {
        this.A04 -= i;
        this.A00 = i2;
        if (A0I()) {
            Iterator<BS> it = this.A0F.iterator();
            while (it.hasNext()) {
                it.next().ADS(this);
            }
        }
    }

    private void A05(BO bo) {
        this.A06 = Collections.unmodifiableList(bo.A02);
        B8 b8 = bo.A00;
        boolean A0A = A0A();
        if (bo.A03) {
            Iterator<BS> it = this.A0F.iterator();
            while (it.hasNext()) {
                it.next().AD4(this, b8);
            }
        } else {
            Iterator<BS> it2 = this.A0F.iterator();
            while (true) {
                boolean hasNext = it2.hasNext();
                if (A0H[5].charAt(25) == 'r') {
                    throw new RuntimeException();
                }
                A0H[5] = "ysMk9cu0SrkjVTb8eZ5DX1SyqV41ya5j";
                if (!hasNext) {
                    break;
                }
                it2.next().AD3(this, b8, bo.A01);
            }
        }
        if (A0A) {
            A02();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(C0551Bv c0551Bv, int i) {
        Requirements A0A = c0551Bv.A0A();
        if (this.A03 != i) {
            this.A03 = i;
            this.A04++;
            this.A0C.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean A0A2 = A0A();
        Iterator<BS> it = this.A0F.iterator();
        while (it.hasNext()) {
            it.next().AEy(this, A0A, i);
        }
        if (A0A2) {
            A02();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0017 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A08(java.util.List<com.facebook.ads.redexgen.X.B8> r4) {
        /*
            r3 = this;
            r0 = 1
            r3.A08 = r0
            java.util.List r0 = java.util.Collections.unmodifiableList(r4)
            r3.A06 = r0
            boolean r2 = r3.A0A()
            java.util.concurrent.CopyOnWriteArraySet<com.facebook.ads.redexgen.X.BS> r0 = r3.A0F
            java.util.Iterator r1 = r0.iterator()
        L13:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L23
            java.lang.Object r0 = r1.next()
            com.facebook.ads.redexgen.X.BS r0 = (com.facebook.ads.redexgen.X.BS) r0
            r0.ADX(r3)
            goto L13
        L23:
            if (r2 == 0) goto L28
            r3.A02()
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BT.A08(java.util.List):void");
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0025 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A09(boolean r4) {
        /*
            r3 = this;
            boolean r0 = r3.A07
            if (r0 != r4) goto L5
            return
        L5:
            r3.A07 = r4
            int r0 = r3.A04
            r2 = 1
            int r0 = r0 + r2
            r3.A04 = r0
            com.facebook.ads.redexgen.X.BQ r1 = r3.A0C
            r0 = 0
            android.os.Message r0 = r1.obtainMessage(r2, r4, r0)
            r0.sendToTarget()
            boolean r2 = r3.A0A()
            java.util.concurrent.CopyOnWriteArraySet<com.facebook.ads.redexgen.X.BS> r0 = r3.A0F
            java.util.Iterator r1 = r0.iterator()
        L21:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L2b
            r1.next()
            goto L21
        L2b:
            if (r2 == 0) goto L30
            r3.A02()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BT.A09(boolean):void");
    }

    private boolean A0A() {
        boolean z = false;
        boolean waitingForRequirements = this.A07;
        if (!waitingForRequirements && this.A03 != 0) {
            int i = 0;
            while (true) {
                if (i >= this.A06.size()) {
                    break;
                } else if (this.A06.get(i).A02 == 0) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        boolean waitingForRequirements2 = this.A09;
        boolean z2 = waitingForRequirements2 != z;
        this.A09 = z;
        String[] strArr = A0H;
        if (strArr[4].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0H;
        strArr2[4] = "HT4e9GATQ3DYWsFwZyJzXpwOkn6HfQP";
        strArr2[7] = "eDZDx6DsGZ1y85uRp2IzKIBDtNa9GCG";
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0B(Message message) {
        switch (message.what) {
            case 0:
                A08((List) message.obj);
                return true;
            case 1:
                int i = message.arg1;
                int i2 = message.arg2;
                if (A0H[2].charAt(11) != 'k') {
                    String[] strArr = A0H;
                    strArr[3] = "sxyw1qPQ7JLPTOY8e9sgs42WDZnpuN2t";
                    strArr[6] = "KeBMIxstq15Te8zzUw5dJy9ueqCuctUt";
                    A04(i, i2);
                    return true;
                }
                throw new RuntimeException();
            case 2:
                BO update = (BO) message.obj;
                A05(update);
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    public final List<B8> A0D() {
        return this.A06;
    }

    public final void A0E() {
        A09(false);
    }

    public final void A0F(BS bs) {
        C3M.A01(bs);
        this.A0F.add(bs);
    }

    public final void A0G(DownloadRequest downloadRequest) {
        A0H(downloadRequest, 0);
    }

    public final void A0H(DownloadRequest downloadRequest, int i) {
        this.A04++;
        this.A0C.obtainMessage(6, i, 0, downloadRequest).sendToTarget();
    }

    public final boolean A0I() {
        return this.A00 == 0 && this.A04 == 0;
    }
}
