package com.tencent.thumbplayer.tcmedia.g;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.tencent.thumbplayer.tcmedia.g.b.c;
import com.tencent.thumbplayer.tcmedia.g.h.d;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10615a;
    public boolean b;
    private c c;
    private com.tencent.thumbplayer.tcmedia.g.a.a d;
    private boolean g;
    private final String h;
    private EnumC0230b i;
    private boolean f = true;
    private final com.tencent.thumbplayer.tcmedia.g.g.a e = new com.tencent.thumbplayer.tcmedia.g.g.a(b());

    /* loaded from: classes6.dex */
    public static abstract class a {
        public abstract void onError(b bVar, MediaCodec.CodecException codecException);

        public abstract void onInputBufferAvailable(b bVar, int i);

        public abstract void onOutputBufferAvailable(b bVar, int i, MediaCodec.BufferInfo bufferInfo);

        public abstract void onOutputFormatChanged(b bVar, MediaFormat mediaFormat);
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public enum EnumC0230b {
        CreateByName,
        CreateByType
    }

    /* loaded from: classes6.dex */
    public static final class c extends MediaCodec.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final b f10620a;
        private final a b;

        public c(b bVar, a aVar) {
            this.f10620a = bVar;
            this.b = aVar;
        }

        @Override // android.media.MediaCodec.Callback
        public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onError(this.f10620a, codecException);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onInputBufferAvailable(this.f10620a, i);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onOutputBufferAvailable(this.f10620a, i, bufferInfo);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onOutputFormatChanged(this.f10620a, mediaFormat);
            }
        }
    }

    private b(String str, EnumC0230b enumC0230b) {
        this.h = str;
        this.i = enumC0230b;
    }

    private void m() {
        this.e.b(this.b);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.g.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.c != null) {
                    b.this.c.a(b.this.d);
                }
                if (b.this.d != null) {
                    b.this.d.onCreate(Boolean.valueOf(b.this.b));
                }
            }
        });
    }

    private void n() {
        this.e.c();
    }

    private void o() {
        this.e.d();
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.g.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.d != null) {
                    b.this.d.onStarted(Boolean.valueOf(b.this.b), b.this.e.e());
                }
            }
        });
    }

    public final int a(long j) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a(j);
        }
        return -1000;
    }

    public final Image b(int i) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a().getOutputImage(i);
        }
        return null;
    }

    public final com.tencent.thumbplayer.tcmedia.g.a.a c() {
        return this.d;
    }

    public final void d(int i) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return;
        }
        a2.setVideoScalingMode(i);
    }

    public final void e() {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TMediaCodec", "start codecWrapper:" + this.c);
        }
        n();
        c cVar = this.c;
        if (cVar != null) {
            cVar.d();
        }
        o();
    }

    public final void f() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.f();
        }
    }

    public final void g() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.g();
        }
    }

    public final void h() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.e();
        }
    }

    public final MediaFormat i() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            return a2.getOutputFormat();
        }
        return null;
    }

    public final ByteBuffer[] j() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            return a2.getInputBuffers();
        }
        return null;
    }

    public final ByteBuffer[] k() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            return a2.getOutputBuffers();
        }
        return null;
    }

    public final String l() {
        return this.h;
    }

    public final int a(MediaCodec.BufferInfo bufferInfo, long j) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a(bufferInfo, j);
        }
        return -1000;
    }

    public final boolean d() {
        return this.f;
    }

    private void b(Surface surface) {
        this.f10615a = com.tencent.thumbplayer.tcmedia.g.a.a().a(this, surface);
        this.e.a();
        this.e.b();
        this.e.a(this.f10615a);
    }

    public final EnumC0230b a() {
        return this.i;
    }

    public final ByteBuffer c(int i) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a().getInputBuffer(i);
        }
        return null;
    }

    public final boolean b() {
        return com.tencent.thumbplayer.tcmedia.g.h.c.a(this.h);
    }

    public static b a(String str) {
        return new b(str, EnumC0230b.CreateByName);
    }

    public final ByteBuffer a(int i) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return null;
        }
        return a2.getOutputBuffer(i);
    }

    public final void a(int i, int i2, int i3, long j, int i4) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(i, i2, i3, j, i4);
        }
    }

    public final void a(int i, int i2, MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return;
        }
        a2.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
    }

    public final void a(int i, boolean z) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(i, z);
        }
    }

    public final void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        MediaFormat mediaFormat2;
        if (this.g) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d("TMediaCodec", "configure ignored, mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i + " stack:" + Log.getStackTraceString(new Throwable()));
            return;
        }
        this.g = true;
        b(surface);
        try {
            mediaFormat2 = mediaFormat;
        } catch (IOException e) {
            e = e;
            mediaFormat2 = mediaFormat;
        }
        try {
            this.c = com.tencent.thumbplayer.tcmedia.g.a.a().a(mediaFormat2, surface, mediaCrypto, i, this);
        } catch (IOException e2) {
            e = e2;
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TMediaCodec", "createCodec mediaFormat:".concat(String.valueOf(mediaFormat2)), e);
            m();
        }
        m();
    }

    public final void a(Bundle bundle) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return;
        }
        a2.setParameters(bundle);
    }

    public final void a(Surface surface) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(surface);
        }
    }

    public final void a(com.tencent.thumbplayer.tcmedia.g.a.a aVar) {
        this.d = aVar;
    }

    public final void a(a aVar, Handler handler) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return;
        }
        a2.setCallback(new c(this, aVar), handler);
    }

    public final void a(boolean z) {
        this.f = z;
    }
}
