package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.util.zip.Inflater;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class k implements s, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    private final e f9639a;
    private final Inflater b;
    private int c;
    private boolean d;

    public k(e eVar, Inflater inflater) {
        if (eVar != null) {
            if (inflater != null) {
                this.f9639a = eVar;
                this.b = inflater;
                return;
            }
            throw new IllegalArgumentException("inflater == null");
        }
        throw new IllegalArgumentException("source == null");
    }

    private void h() throws IOException {
        int i = this.c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.b.getRemaining();
        this.c -= remaining;
        this.f9639a.skip(remaining);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        if (r1.b != r1.c) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
        r7.f9633a = r1.b();
        com.mbridge.msdk.thrid.okio.p.a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
        return -1;
     */
    @Override // com.mbridge.msdk.thrid.okio.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long b(com.mbridge.msdk.thrid.okio.c r7, long r8) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 < 0) goto L79
            boolean r3 = r6.d
            if (r3 != 0) goto L71
            if (r2 != 0) goto Ld
            return r0
        Ld:
            boolean r0 = r6.d()
            r1 = 1
            com.mbridge.msdk.thrid.okio.o r1 = r7.b(r1)     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = r1.c     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = 8192 - r2
            long r2 = (long) r2     // Catch: java.util.zip.DataFormatException -> L38
            long r2 = java.lang.Math.min(r8, r2)     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = (int) r2     // Catch: java.util.zip.DataFormatException -> L38
            java.util.zip.Inflater r3 = r6.b     // Catch: java.util.zip.DataFormatException -> L38
            byte[] r4 = r1.f9646a     // Catch: java.util.zip.DataFormatException -> L38
            int r5 = r1.c     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = r3.inflate(r4, r5, r2)     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 <= 0) goto L3a
            int r8 = r1.c     // Catch: java.util.zip.DataFormatException -> L38
            int r8 = r8 + r2
            r1.c = r8     // Catch: java.util.zip.DataFormatException -> L38
            long r8 = r7.b     // Catch: java.util.zip.DataFormatException -> L38
            long r0 = (long) r2     // Catch: java.util.zip.DataFormatException -> L38
            long r8 = r8 + r0
            r7.b = r8     // Catch: java.util.zip.DataFormatException -> L38
            return r0
        L38:
            r7 = move-exception
            goto L6b
        L3a:
            java.util.zip.Inflater r2 = r6.b     // Catch: java.util.zip.DataFormatException -> L38
            boolean r2 = r2.finished()     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 != 0) goto L56
            java.util.zip.Inflater r2 = r6.b     // Catch: java.util.zip.DataFormatException -> L38
            boolean r2 = r2.needsDictionary()     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 == 0) goto L4b
            goto L56
        L4b:
            if (r0 != 0) goto L4e
            goto Ld
        L4e:
            java.io.EOFException r7 = new java.io.EOFException     // Catch: java.util.zip.DataFormatException -> L38
            java.lang.String r8 = "source exhausted prematurely"
            r7.<init>(r8)     // Catch: java.util.zip.DataFormatException -> L38
            throw r7     // Catch: java.util.zip.DataFormatException -> L38
        L56:
            r6.h()     // Catch: java.util.zip.DataFormatException -> L38
            int r8 = r1.b     // Catch: java.util.zip.DataFormatException -> L38
            int r9 = r1.c     // Catch: java.util.zip.DataFormatException -> L38
            if (r8 != r9) goto L68
            com.mbridge.msdk.thrid.okio.o r8 = r1.b()     // Catch: java.util.zip.DataFormatException -> L38
            r7.f9633a = r8     // Catch: java.util.zip.DataFormatException -> L38
            com.mbridge.msdk.thrid.okio.p.a(r1)     // Catch: java.util.zip.DataFormatException -> L38
        L68:
            r7 = -1
            return r7
        L6b:
            java.io.IOException r8 = new java.io.IOException
            r8.<init>(r7)
            throw r8
        L71:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "closed"
            r7.<init>(r8)
            throw r7
        L79:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "byteCount < 0: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.k.b(com.mbridge.msdk.thrid.okio.c, long):long");
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.d) {
            return;
        }
        this.b.end();
        this.d = true;
        this.f9639a.close();
    }

    public final boolean d() throws IOException {
        if (!this.b.needsInput()) {
            return false;
        }
        h();
        if (this.b.getRemaining() == 0) {
            if (this.f9639a.f()) {
                return true;
            }
            o oVar = this.f9639a.a().f9633a;
            int i = oVar.c;
            int i2 = oVar.b;
            int i3 = i - i2;
            this.c = i3;
            this.b.setInput(oVar.f9646a, i2, i3);
            return false;
        }
        throw new IllegalStateException("?");
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f9639a.b();
    }
}
