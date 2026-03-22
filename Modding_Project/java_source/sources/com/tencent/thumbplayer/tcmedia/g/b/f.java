package com.tencent.thumbplayer.tcmedia.g.b;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import androidx.media3.extractor.MpegAudioUtil;
import com.tencent.thumbplayer.tcmedia.g.f.a;
import com.vungle.ads.internal.protos.Sdk;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public abstract class f implements c {
    private static final Map<Surface, f> i = new ConcurrentHashMap();
    private com.tencent.thumbplayer.tcmedia.g.e.a.a B;
    public boolean b;
    public boolean c;
    public boolean d;
    public final e e;
    protected Surface f;
    protected final com.tencent.thumbplayer.tcmedia.g.b.b g;
    protected final String h;
    private final String j;
    private final a.EnumC0231a k;
    private final MediaCodec p;
    private boolean q;
    private MediaCodecInfo.CodecCapabilities s;
    private long t;
    private com.tencent.thumbplayer.tcmedia.g.a.a u;
    private boolean v;
    private boolean x;

    /* renamed from: a  reason: collision with root package name */
    public b f10623a = b.Started;
    private final HashSet<Integer> l = new HashSet<>();
    private final ArrayList<Long> m = new ArrayList<>();
    private final Set<SurfaceTexture> n = new LinkedHashSet();
    private final int[] o = new int[2];
    private a r = a.Uninitialized;
    private a.b w = a.b.KEEP_CODEC_RESULT_NO;
    private boolean y = false;
    private boolean z = false;
    private int A = 0;

    /* renamed from: com.tencent.thumbplayer.tcmedia.g.b.f$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10625a;

        static {
            int[] iArr = new int[a.b.values().length];
            f10625a = iArr;
            try {
                iArr[a.b.KEEP_CODEC_RESULT_NO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10625a[a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10625a[a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10625a[a.b.KEEP_CODEC_RESULT_YES_WITH_FLUSH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public enum a {
        Uninitialized,
        Configured,
        Error,
        Flushed,
        Running,
        EndOfStream,
        Released
    }

    /* loaded from: classes6.dex */
    public enum b {
        Started,
        DequeueIn,
        QueueIn,
        DequeueOut,
        ReleaseOut
    }

    public f(MediaCodec mediaCodec, e eVar) {
        boolean z;
        boolean z2;
        String str = "ReuseCodecWrapper[" + hashCode() + "]";
        this.j = str;
        boolean z3 = false;
        this.p = mediaCodec;
        this.e = eVar;
        this.g = new com.tencent.thumbplayer.tcmedia.g.b.b(eVar.g, eVar.h, eVar.i);
        String a2 = com.tencent.thumbplayer.tcmedia.g.h.c.a(mediaCodec);
        this.h = a2;
        this.k = com.tencent.thumbplayer.tcmedia.g.f.a.a(a2);
        if (Build.VERSION.SDK_INT == 29 && eVar.d != 0) {
            z = false;
        } else {
            z = true;
        }
        com.tencent.thumbplayer.tcmedia.g.h.b.b(str, "canCallGetCodecInfo:".concat(String.valueOf(z)));
        if (z) {
            this.s = mediaCodec.getCodecInfo().getCapabilitiesForType(eVar.j);
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.s;
        if (codecCapabilities != null && com.tencent.thumbplayer.tcmedia.g.h.c.a(codecCapabilities)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.c = z2;
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.s;
        if (codecCapabilities2 != null && com.tencent.thumbplayer.tcmedia.g.h.c.b(codecCapabilities2)) {
            z3 = true;
        }
        this.d = z3;
    }

    private int d(Surface surface) {
        if (surface == null) {
            return 10003;
        }
        return !surface.isValid() ? 10004 : 0;
    }

    private boolean n() {
        if (Thread.currentThread().getId() != this.t) {
            return true;
        }
        return false;
    }

    private void o() {
        if (this.B != null) {
            return;
        }
        com.tencent.thumbplayer.tcmedia.g.e.a.a aVar = new com.tencent.thumbplayer.tcmedia.g.e.a.a(1, 1);
        this.B = aVar;
        a(aVar.d(), true, true);
    }

    private void p() {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.b(str, this + "unBindingBackupSurface");
        }
        com.tencent.thumbplayer.tcmedia.g.e.a.a aVar = this.B;
        if (aVar != null) {
            aVar.b();
        }
        this.B = null;
    }

    private void q() {
        this.z = false;
        this.A = 0;
    }

    private void r() {
        int[] iArr = this.o;
        iArr[0] = 0;
        iArr[1] = 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public int a(long j) {
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore call method dequeueInputBuffer for isNotMyThread");
            return -1;
        }
        int i2 = 0;
        String str = null;
        try {
            int dequeueInputBuffer = this.p.dequeueInputBuffer(j);
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                str = this + ", dequeueInputBuffer state:" + this.r + " decodeState:" + this.f10623a + " , result=" + dequeueInputBuffer;
                com.tencent.thumbplayer.tcmedia.g.h.b.a(this.j, str);
            }
            this.f10623a = b.DequeueIn;
            this.r = a.Running;
            a(0, dequeueInputBuffer);
            return dequeueInputBuffer;
        } catch (Throwable th) {
            if (th instanceof IllegalStateException) {
                i2 = MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            } else if (th instanceof IllegalArgumentException) {
                i2 = 40001;
            }
            a(i2, str, th);
            throw th;
        }
    }

    public abstract a.b a(e eVar);

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public a.b b(e eVar) {
        a.b a2 = a(eVar);
        this.w = a2;
        return a2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void e() {
        int i2;
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "call method flush for isNotMyThread...");
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                str = this + ", flush state:" + this.r;
                com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, str);
            }
            this.p.flush();
            this.r = a.Flushed;
        } catch (Throwable th) {
            if (!(th instanceof MediaCodec.CodecException)) {
                if (th instanceof IllegalStateException) {
                    i2 = 90000;
                } else {
                    i2 = 0;
                }
            } else {
                i2 = 90001;
            }
            a(i2, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void f() {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.b(str, this + ", stop");
        }
        if (!j()) {
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                String str2 = this.j;
                com.tencent.thumbplayer.tcmedia.g.h.b.b(str2, this + ", codec real stop");
            }
            try {
                this.p.stop();
                this.r = a.Uninitialized;
            } catch (IllegalStateException e) {
                this.r = a.Uninitialized;
                com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, "stop failed", e);
                throw e;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void g() {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.b(str, this + " call release mHoldBufferOutIndex:" + this.l + " mReleaseCalled:" + this.q + " stack:" + Log.getStackTraceString(new Throwable()));
        }
        this.q = true;
        this.x = false;
        if (j()) {
            try {
                e();
            } catch (IllegalStateException e) {
                com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, "flush failed for not in the Executing state.", e);
            }
            o();
            com.tencent.thumbplayer.tcmedia.g.a.a().b(this);
            return;
        }
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str2 = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.d(str2, "Don't not keep the codec, release it ..., mErrorHappened:" + this.y);
        }
        com.tencent.thumbplayer.tcmedia.g.a.a().a(this);
        i();
        this.r = a.Released;
    }

    public final com.tencent.thumbplayer.tcmedia.g.a.a h() {
        return this.u;
    }

    public final void i() {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.b(str, this + ", recycle isRecycled:" + this.b + "  mSurfaceMap.size:" + i.size() + "...... stack:" + Log.getStackTraceString(new Throwable()));
        }
        if (this.b) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore recycle for has isRecycled is true.");
            return;
        }
        this.x = false;
        this.b = true;
        com.tencent.thumbplayer.tcmedia.g.h.d.a(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.g.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.p.stop();
                    f.this.p.release();
                } catch (Throwable th) {
                    com.tencent.thumbplayer.tcmedia.g.h.b.a(f.this.j, "recycle codec ignore error,", th);
                }
                if (f.this.u != null) {
                    f.this.u.onRealRelease();
                }
            }
        });
        this.r = a.Uninitialized;
    }

    public boolean j() {
        if (com.tencent.thumbplayer.tcmedia.g.a.c()) {
            if (this.y || !com.tencent.thumbplayer.tcmedia.g.a.a().e() || !com.tencent.thumbplayer.tcmedia.g.a.a().f()) {
                return false;
            }
            return true;
        } else if (this.y || !com.tencent.thumbplayer.tcmedia.g.a.a().e()) {
            return false;
        } else {
            return true;
        }
    }

    public void k() {
        this.A++;
    }

    public boolean l() {
        if (this.A >= 3) {
            return true;
        }
        return false;
    }

    public String m() {
        return this.h;
    }

    public String toString() {
        return super.toString() + " mReleaseCalled:" + this.q + " isRecycled:" + this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public int a(MediaCodec.BufferInfo bufferInfo, long j) {
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore call method dequeueOutputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        try {
            int dequeueOutputBuffer = this.p.dequeueOutputBuffer(bufferInfo, j);
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                str = this + ", dequeueOutputBuffer outIndex:" + dequeueOutputBuffer;
                if (this instanceof g) {
                    com.tencent.thumbplayer.tcmedia.g.h.b.a(this.j, str);
                }
            }
            this.l.add(Integer.valueOf(dequeueOutputBuffer));
            this.f10623a = b.DequeueOut;
            a(1, dequeueOutputBuffer);
            return dequeueOutputBuffer;
        } catch (Throwable th) {
            a(!(th instanceof MediaCodec.CodecException) ? th instanceof IllegalStateException ? 60000 : 0 : 60001, str, th);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void c() {
        q();
        if (com.tencent.thumbplayer.tcmedia.g.a.c()) {
            if (this.r == a.Running) {
                try {
                    e();
                } catch (IllegalStateException e) {
                    com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, "flush failed in prepareToReUse", e);
                }
            }
        } else if (this.r != a.Flushed) {
            e();
        }
        this.v = true;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void d() {
        a aVar = this.r;
        a aVar2 = a.Configured;
        if (aVar != aVar2) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, "start ignore:" + this.r);
            return;
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                str = this + ", start state:" + this.r;
                com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, str);
            }
            if (this.r == aVar2) {
                this.p.start();
                this.r = a.Running;
            }
        } catch (Throwable th) {
            a(!(th instanceof MediaCodec.CodecException) ? th instanceof IllegalStateException ? 20000 : 0 : Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE, str, th);
            throw th;
        }
    }

    private final void c(int i2, int i3, int i4, long j, int i5) {
        this.p.queueInputBuffer(i2, i3, i4, j, i5);
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public MediaCodec a() {
        return this.p;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void b() {
        long id = Thread.currentThread().getId();
        if (this.m.contains(Long.valueOf(id))) {
            return;
        }
        this.t = id;
        this.m.add(Long.valueOf(id));
        if (this.m.size() > 100) {
            this.m.remove(0);
        }
    }

    private final void b(int i2, int i3, int i4, long j, int i5) {
        int i6 = AnonymousClass2.f10625a[this.w.ordinal()];
        if (i6 == 1) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO");
        } else if (i6 == 2) {
            c(i2, i3, i4, j, i5);
        } else if (i6 != 3) {
        } else {
            this.p.queueInputBuffer(i2, i3, i4, j, i5);
        }
    }

    private void c(Surface surface) {
        a(surface, true, false);
    }

    public static c a(MediaCodec mediaCodec, String str, e eVar) {
        return com.tencent.thumbplayer.tcmedia.g.h.c.a(str) ? new g(mediaCodec, eVar) : new com.tencent.thumbplayer.tcmedia.g.b.a(mediaCodec, eVar);
    }

    private void b(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        String str = null;
        try {
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                str = this + ", realConfigure mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i2 + " state:" + this.r + " mHasConfigureCalled：" + this.x;
                com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, str);
            }
            this.p.configure(mediaFormat, surface, mediaCrypto, i2);
            b(surface);
            this.r = a.Configured;
        } catch (Throwable th) {
            a(!(th instanceof IllegalStateException) ? th instanceof MediaCodec.CryptoException ? 10001 : 0 : 10000, str, th, true, surface);
            throw th;
        }
    }

    private void a(int i2) {
        if (i2 < 40000) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.e(str, this + "    releaseCodecWhenError, errorCode:" + i2);
            g();
        }
    }

    private void b(Surface surface) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            String str = this.j;
            com.tencent.thumbplayer.tcmedia.g.h.b.c(str, this + ", oldSurface:" + this.f + " CodecWrapperSetSurface surface:" + surface);
        }
        this.f = surface;
    }

    private void a(int i2, int i3) {
        int i4;
        if (this.z || !b(i2, i3)) {
            return;
        }
        this.z = true;
        StringBuilder sb = new StringBuilder();
        sb.append(this);
        sb.append(", trackDecodeApi state:");
        sb.append(this.r);
        sb.append("  surfaceState:");
        Surface surface = this.f;
        sb.append(surface != null ? Boolean.valueOf(surface.isValid()) : null);
        String sb2 = sb.toString();
        if (i2 == 0) {
            i4 = 40002;
        } else if (i2 != 1) {
            return;
        } else {
            i4 = 60002;
        }
        a(i4, sb2, (Throwable) null);
    }

    private boolean b(int i2, int i3) {
        if (i3 != -1) {
            this.o[i2] = 0;
            return false;
        }
        int[] iArr = this.o;
        int i4 = iArr[i2] + 1;
        iArr[i2] = i4;
        return i4 > 100;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void a(int i2, int i3, int i4, long j, int i5) {
        String str;
        f fVar;
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore call method queueInputBuffer for isNotMyThread");
            return;
        }
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            str = this + ", queueInputBuffer index:" + i2 + " offset:" + i3 + " size:" + i4 + " presentationTimeUs:" + j + " flags:" + i5 + " state:" + this.r + " decodeState:" + this.f10623a;
            com.tencent.thumbplayer.tcmedia.g.h.b.a(this.j, str);
        } else {
            str = null;
        }
        String str2 = str;
        try {
            if (this.v) {
                b(i2, i3, i4, j, i5);
                fVar = this;
            } else {
                fVar = this;
                try {
                    fVar.p.queueInputBuffer(i2, i3, i4, j, i5);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    a(!(th2 instanceof MediaCodec.CodecException) ? !(th2 instanceof IllegalStateException) ? th2 instanceof MediaCodec.CryptoException ? 50002 : 0 : 50000 : 50001, str2, th2);
                    throw th2;
                }
            }
            fVar.f10623a = b.QueueIn;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void a(int i2, String str, Throwable th) {
        a(i2, str, th, false, this.f);
    }

    private void a(int i2, String str, Throwable th, boolean z, Surface surface) {
        int d;
        this.y = true;
        String str2 = str + " handleCoreAPIException exception:" + (th == null ? "" : th.getLocalizedMessage());
        if (z && (d = d(surface)) != 0) {
            i2 = d;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i2);
            jSONObject.put("exceptionMsg", str2);
            com.tencent.thumbplayer.tcmedia.g.a.a aVar = this.u;
            if (aVar != null) {
                aVar.onReuseCodecAPIException(jSONObject.toString(), th);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, "hasReused:" + this.v + "    errorCode:" + i2 + ", " + str2, th);
        a(i2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void a(int i2, boolean z) {
        String str;
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore call method releaseOutputBuffer for isNotMyThread");
            return;
        }
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            str = this + ", releaseOutputBuffer render:" + z;
            com.tencent.thumbplayer.tcmedia.g.h.b.a(this.j, str);
        } else {
            str = null;
        }
        try {
            this.l.remove(Integer.valueOf(i2));
            this.p.releaseOutputBuffer(i2, z);
        } catch (Throwable th) {
            if (this.r != a.Flushed) {
                com.tencent.thumbplayer.tcmedia.g.h.b.a(this.j, this + ", releaseOutputBuffer failed, ignore e:", th);
            }
            a(th instanceof MediaCodec.CodecException ? 70002 : th instanceof IllegalStateException ? 70001 : 0, str, th);
        }
        this.f10623a = b.ReleaseOut;
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        if (n()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, "ignore call method configure for isNotMyThread");
            return;
        }
        this.x = true;
        this.q = false;
        if (this.r == a.Uninitialized) {
            b(mediaFormat, surface, mediaCrypto, i2);
        } else if (surface != null) {
            r();
            c(surface);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void a(Surface surface) {
        a(surface, false, false);
    }

    private void a(Surface surface, boolean z, boolean z2) {
        String str;
        if (this.f == surface) {
            com.tencent.thumbplayer.tcmedia.g.h.b.d(this.j, this + ", innerSetOutputSurface error surface:" + surface + " is same, stack:" + Log.getStackTraceString(new Throwable()));
            return;
        }
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            str = this + " configure, call innerSetOutputSurface surface:" + surface + "  decodeState:" + this.f10623a + " callByInner:" + z;
            com.tencent.thumbplayer.tcmedia.g.h.b.b(this.j, str);
        } else {
            str = null;
        }
        String str2 = str;
        try {
            b(surface);
            this.p.setOutputSurface(surface);
            if (z2) {
                return;
            }
            p();
        } catch (Throwable th) {
            a(!(th instanceof IllegalStateException) ? th instanceof IllegalArgumentException ? Sdk.SDKError.Reason.AD_PUBLISHER_MISMATCH_VALUE : 0 : 30000, str2, th, true, surface);
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.g.b.c
    public void a(com.tencent.thumbplayer.tcmedia.g.a.a aVar) {
        this.u = aVar;
    }
}
