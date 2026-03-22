package com.mbridge.msdk.thrid.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class j implements s, AutoCloseable {
    private final e b;
    private final Inflater c;
    private final k d;

    /* renamed from: a  reason: collision with root package name */
    private int f9638a = 0;
    private final CRC32 e = new CRC32();

    public j(s sVar) {
        if (sVar != null) {
            Inflater inflater = new Inflater(true);
            this.c = inflater;
            e a2 = l.a(sVar);
            this.b = a2;
            this.d = new k(a2, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void a(c cVar, long j, long j2) {
        int i;
        o oVar = cVar.f9633a;
        while (true) {
            long j3 = oVar.c - oVar.b;
            if (j < j3) {
                break;
            }
            j -= j3;
            oVar = oVar.f;
        }
        while (j2 > 0) {
            int min = (int) Math.min(oVar.c - i, j2);
            this.e.update(oVar.f9646a, (int) (oVar.b + j), min);
            j2 -= min;
            oVar = oVar.f;
            j = 0;
        }
    }

    private void d() throws IOException {
        boolean z;
        this.b.e(10L);
        byte f = this.b.a().f(3L);
        if (((f >> 1) & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            a(this.b.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.b.readShort());
        this.b.skip(8L);
        if (((f >> 2) & 1) == 1) {
            this.b.e(2L);
            if (z) {
                a(this.b.a(), 0L, 2L);
            }
            long g = this.b.a().g();
            this.b.e(g);
            if (z) {
                a(this.b.a(), 0L, g);
            }
            this.b.skip(g);
        }
        if (((f >> 3) & 1) == 1) {
            long a2 = this.b.a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    a(this.b.a(), 0L, a2 + 1);
                }
                this.b.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((f >> 4) & 1) == 1) {
            long a3 = this.b.a((byte) 0);
            if (a3 != -1) {
                if (z) {
                    a(this.b.a(), 0L, a3 + 1);
                }
                this.b.skip(a3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            a("FHCRC", this.b.g(), (short) this.e.getValue());
            this.e.reset();
        }
    }

    private void h() throws IOException {
        a("CRC", this.b.e(), (int) this.e.getValue());
        a("ISIZE", this.b.e(), (int) this.c.getBytesWritten());
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j) throws IOException {
        j jVar;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f9638a == 0) {
                d();
                this.f9638a = 1;
            }
            if (this.f9638a == 1) {
                long j2 = cVar.b;
                long b = this.d.b(cVar, j);
                if (b != -1) {
                    a(cVar, j2, b);
                    return b;
                }
                jVar = this;
                jVar.f9638a = 2;
            } else {
                jVar = this;
            }
            if (jVar.f9638a == 2) {
                h();
                jVar.f9638a = 3;
                if (!jVar.b.f()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.d.close();
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.b.b();
    }
}
