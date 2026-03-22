package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.mK */
/* loaded from: assets/audience_network.dex */
public final class C1907mK implements InterfaceC0616Ej, CD {
    public static String[] A0E = {"SSDELygzudefytBtRYlDWoyFfpg", "4SEnazR2Nu4dPKZqq", "4H9jqKlT7lQdtxWBQl9xa6akogWkCWsp", "Wknx73gM1GoPE2GN1snRYal1oMjUwY3P", "7txELYcTJwThSLRxJ5dUM1K4qPQ", "gA7GGJKubAjwOro28", "9KdodW4K4GXGszeM7wnefptXiT4TjY3", ""};
    public long A00;
    public AnonymousClass56 A01;
    public H1 A02;
    public boolean A04;
    public final Uri A06;
    public final C3W A07;
    public final C04809b A08;
    public final InterfaceC0556Cb A09;
    public final GY A0A;
    public volatile boolean A0C;
    public final /* synthetic */ C9A A0D;
    public final C0678Gt A0B = new C0678Gt();
    public boolean A03 = true;
    public final long A05 = CE.A00();

    public C1907mK(C9A c9a, Uri uri, InterfaceC1996nl interfaceC1996nl, InterfaceC0556Cb interfaceC0556Cb, GY gy, C3W c3w) {
        this.A0D = c9a;
        this.A06 = uri;
        this.A08 = new C04809b(interfaceC1996nl);
        this.A09 = interfaceC0556Cb;
        this.A0A = gy;
        this.A07 = c3w;
    }

    public static /* synthetic */ long A00(C1907mK c1907mK) {
        return c1907mK.A05;
    }

    public static /* synthetic */ long A01(C1907mK c1907mK) {
        return c1907mK.A00;
    }

    public static /* synthetic */ AnonymousClass56 A02(C1907mK c1907mK) {
        return c1907mK.A01;
    }

    public static /* synthetic */ C04809b A03(C1907mK c1907mK) {
        return c1907mK.A08;
    }

    public void A04(long j, long j2) {
        this.A0B.A00 = j;
        this.A00 = j2;
        this.A03 = true;
        this.A04 = false;
    }

    public static /* synthetic */ void A05(C1907mK c1907mK, long j, long j2) {
        c1907mK.A04(j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0616Ej
    public final void A4j() {
        this.A0C = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0616Ej
    public final void AAi() throws IOException {
        String str;
        IcyHeaders icyHeaders;
        IcyHeaders icyHeaders2;
        long j;
        Handler handler;
        Runnable runnable;
        IcyHeaders icyHeaders3;
        IcyHeaders icyHeaders4;
        C2061or c2061or;
        int i = 0;
        while (i == 0 && !this.A0C) {
            try {
                long j2 = this.A0B.A00;
                Uri uri = this.A06;
                str = this.A0D.A0b;
                this.A01 = new AnonymousClass56(uri, j2, -1L, str);
                long AFy = this.A08.AFy(this.A01);
                if (AFy != -1) {
                    AFy += j2;
                    this.A0D.A0G();
                }
                this.A0D.A09 = null;
                InterfaceC1996nl interfaceC1996nl = this.A08;
                icyHeaders = this.A0D.A09;
                if (icyHeaders != null) {
                    icyHeaders3 = this.A0D.A09;
                    if (icyHeaders3.A01 != -1) {
                        C04809b c04809b = this.A08;
                        icyHeaders4 = this.A0D.A09;
                        interfaceC1996nl = new InterfaceC1996nl(c04809b, icyHeaders4.A01, this) { // from class: com.facebook.ads.redexgen.X.9B
                            public int A00;
                            public final int A01;
                            public final InterfaceC1996nl A02;
                            public final CD A03;
                            public final byte[] A04;

                            {
                                C3M.A07(r4 > 0);
                                this.A02 = c04809b;
                                this.A01 = r4;
                                this.A03 = this;
                                this.A04 = new byte[1];
                                this.A00 = r4;
                            }

                            private boolean A00() throws IOException {
                                int bytesRead = this.A02.read(this.A04, 0, 1);
                                if (bytesRead == -1) {
                                    return false;
                                }
                                int bytesRead2 = this.A04[0];
                                int metadataLength = (bytesRead2 & 255) << 4;
                                if (metadataLength == 0) {
                                    return true;
                                }
                                int i2 = 0;
                                int i3 = metadataLength;
                                byte[] bArr = new byte[metadataLength];
                                while (i3 > 0) {
                                    int bytesRead3 = this.A02.read(bArr, i2, i3);
                                    if (bytesRead3 == -1) {
                                        return false;
                                    }
                                    i2 += bytesRead3;
                                    i3 -= bytesRead3;
                                }
                                while (metadataLength > 0) {
                                    int bytesRead4 = metadataLength - 1;
                                    if (bArr[bytesRead4] != 0) {
                                        break;
                                    }
                                    metadataLength--;
                                }
                                if (metadataLength > 0) {
                                    this.A03.ADR(new C4J(bArr, metadataLength));
                                }
                                return true;
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC1996nl
                            public final void A3v(C5H c5h) {
                                C3M.A01(c5h);
                                this.A02.A3v(c5h);
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC1996nl
                            public final Map<String, List<String>> A8l() {
                                return this.A02.A8l();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC1996nl
                            public final Uri A9H() {
                                return this.A02.A9H();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC1996nl
                            public final long AFy(AnonymousClass56 anonymousClass56) {
                                throw new UnsupportedOperationException();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC1996nl
                            public final void close() {
                                throw new UnsupportedOperationException();
                            }

                            @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                            public final int read(byte[] bArr, int i2, int i3) throws IOException {
                                if (this.A00 == 0) {
                                    if (!A00()) {
                                        return -1;
                                    }
                                    this.A00 = this.A01;
                                }
                                int read = this.A02.read(bArr, i2, Math.min(this.A00, i3));
                                if (read != -1) {
                                    int bytesRead = this.A00;
                                    this.A00 = bytesRead - read;
                                }
                                return read;
                            }
                        };
                        this.A02 = this.A0D.A0Z();
                        H1 h1 = this.A02;
                        c2061or = C9A.A0g;
                        h1.A6W(c2061or);
                    }
                }
                this.A09.AA3(interfaceC1996nl, this.A06, this.A08.A8l(), j2, AFy, this.A0A);
                icyHeaders2 = this.A0D.A09;
                if (icyHeaders2 != null) {
                    this.A09.A5q();
                }
                if (this.A03) {
                    this.A09.AIM(j2, this.A00);
                    this.A03 = false;
                }
                while (i == 0 && !this.A0C) {
                    try {
                        this.A07.A00();
                        i = this.A09.AGc(this.A0B);
                        long position = this.A09.A7S();
                        j = this.A0D.A0M;
                        if (position > j + j2) {
                            j2 = position;
                            this.A07.A02();
                            handler = this.A0D.A0O;
                            runnable = this.A0D.A0a;
                            handler.post(runnable);
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                if (i == 1) {
                    i = 0;
                } else {
                    long A7S = this.A09.A7S();
                    String[] strArr = A0E;
                    if (strArr[2].charAt(24) != strArr[3].charAt(24)) {
                        throw new RuntimeException();
                    }
                    A0E[6] = "OKjnlHtv3KbBLefZQYMpPe9SdH47QI1";
                    if (A7S != -1) {
                        this.A0B.A00 = this.A09.A7S();
                    }
                }
                AnonymousClass51.A00(this.A08);
            } catch (Throwable th) {
                if (i != 1 && this.A09.A7S() != -1) {
                    this.A0B.A00 = this.A09.A7S();
                }
                AnonymousClass51.A00(this.A08);
                throw th;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CD
    public final void ADR(C4J c4j) {
        long A03;
        long max;
        if (this.A04) {
            A03 = this.A0D.A03(true);
            max = Math.max(A03, this.A00);
        } else {
            max = this.A00;
        }
        int A07 = c4j.A07();
        H1 h1 = (H1) C3M.A01(this.A02);
        h1.AI7(c4j, A07);
        h1.AIA(max, 1, A07, 0, null);
        this.A04 = true;
    }
}
