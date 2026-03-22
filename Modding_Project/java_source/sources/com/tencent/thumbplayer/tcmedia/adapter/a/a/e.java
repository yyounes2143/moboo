package com.tencent.thumbplayer.tcmedia.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.tcmedia.adapter.a.a.a;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.api.TPAudioAttributes;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.core.common.TPGeneralError;
import com.tencent.thumbplayer.tcmedia.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public class e implements com.tencent.thumbplayer.tcmedia.adapter.a.b {
    private c.l A;
    private c.m B;
    private volatile MediaPlayer C;
    private com.tencent.thumbplayer.tcmedia.a.c E;
    private Object F;
    private a J;
    private volatile EnumC0218e Q;
    private volatile EnumC0218e R;

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.tcmedia.e.a f10496a;
    private com.tencent.thumbplayer.tcmedia.adapter.a.a.a af;
    private Context b;
    private String f;
    private FileDescriptor g;
    private AssetFileDescriptor h;
    private Map<String, String> l;
    private c.i u;
    private c.InterfaceC0220c v;
    private c.h w;
    private c.f x;
    private c.j y;
    private c.p z;
    private boolean c = false;
    private long d = 0;
    private long e = 0;
    private boolean i = false;
    private float j = 1.0f;
    private float k = 1.0f;
    private int m = 0;
    private long n = -1;
    private boolean o = false;
    private long p = -1;
    private int q = -1;
    private int r = -1;
    private TPAudioAttributes s = null;
    private boolean t = true;
    private Future<?> G = null;
    private final Object H = new Object();
    private long I = 25000;
    private final Object K = new Object();
    private int L = 3;
    private int M = 30;
    private final Object N = new Object();
    private Future<?> O = null;
    private boolean P = false;
    private boolean S = false;
    private long T = 0;
    private long U = -1;
    private int V = 0;
    private int W = 0;
    private volatile boolean X = false;
    private int Y = 0;
    private int Z = -1;
    private int aa = 0;
    private int ab = -1;
    private int ac = -1;
    private List<b> ad = new ArrayList();
    private List<b> ae = new ArrayList();
    private long ag = 0;
    private f ah = null;
    private MediaPlayer.OnTimedTextListener ai = new MediaPlayer.OnTimedTextListener() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.8
        @Override // android.media.MediaPlayer.OnTimedTextListener
        public void onTimedText(MediaPlayer mediaPlayer, TimedText timedText) {
            String str;
            if (e.this.A != null) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                if (timedText != null) {
                    str = timedText.getText();
                } else {
                    str = "";
                }
                tPSubtitleData.subtitleData = str;
                tPSubtitleData.trackIndex = e.this.Z;
                tPSubtitleData.startPositionMs = e.this.o();
                e.this.A.a(tPSubtitleData);
            }
        }
    };
    private d D = new d();

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f10505a;
        Future<?> b;

        private a() {
        }
    }

    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public TPTrackInfo f10506a;
        public String b;
        public List<TPOptionalParam> c;
        public Map<String, String> d;

        private b() {
            this.b = "";
        }
    }

    /* loaded from: classes6.dex */
    public static class c implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private Handler f10507a;

        public c(Handler handler) {
            this.f10507a = handler;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            try {
                this.f10507a.handleMessage(message);
                return true;
            } catch (Exception e) {
                TPLogUtil.e("TPSystemMediaPlayer", "mediaPlayerExceptionHook, HookCallback, " + Log.getStackTraceString(e));
                return true;
            }
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public enum EnumC0218e {
        IDLE,
        INITIALIZED,
        PREPARING,
        PREPARED,
        STARTED,
        PAUSED,
        STOPPED,
        COMPLETE,
        ERROR,
        RELEASE
    }

    /* loaded from: classes6.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        int f10510a;
        long b;
        long c;
        int d;
        int e;
        int f;
        String g;
        EnumC0218e h;

        private f() {
        }
    }

    public e(Context context, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.f10496a = new com.tencent.thumbplayer.tcmedia.e.a(bVar, "TPSystemMediaPlayer");
        this.b = context;
        b bVar2 = new b();
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        bVar2.f10506a = tPTrackInfo;
        tPTrackInfo.isSelected = true;
        tPTrackInfo.name = "audio_1";
        this.ad.add(bVar2);
        b();
        com.tencent.thumbplayer.tcmedia.adapter.a.a.c cVar = new com.tencent.thumbplayer.tcmedia.adapter.a.a.c();
        this.af = cVar;
        cVar.a(new a.InterfaceC0217a() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.1
            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.InterfaceC0217a
            public void a(a.e eVar) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = eVar.f10489a;
                c.l lVar = e.this.A;
                if (lVar != null) {
                    lVar.a(tPSubtitleData);
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.InterfaceC0217a
            public void a(TPSubtitleFrame tPSubtitleFrame) {
                TPSubtitleFrameBuffer a2 = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPSubtitleFrame);
                c.m mVar = e.this.B;
                if (mVar != null) {
                    mVar.a(a2);
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.InterfaceC0217a
            public void a(String str) {
                e.this.f10496a.c("onSubtitleNote, ".concat(String.valueOf(str)));
                c.h hVar = e.this.w;
                if (hVar != null) {
                    hVar.a(506, 0L, 0L, str);
                }
            }
        });
        this.af.a(new a.d() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.2
            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.d
            public long a() {
                if (e.this.Q != EnumC0218e.PAUSED && e.this.Q != EnumC0218e.STARTED) {
                    return -1L;
                }
                return e.this.o();
            }
        });
        this.af.a(new a.c() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.3
            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.c
            public void a(int i, long j) {
                if (e.this.w != null) {
                    e.this.w.a(4, 2000L, e.g(i), Long.valueOf(j));
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.c
            public void a(long j) {
                if (e.this.Q == EnumC0218e.STARTED) {
                    e.this.af.b();
                }
                if (e.this.w != null) {
                    e.this.w.a(4, 1000L, 0L, Long.valueOf(j));
                }
            }
        });
        this.af.a(new a.b() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.4
            @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a.b
            public void a(int i, int i2) {
                if (e.this.w != null) {
                    e.this.w.a(254, i, i2, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void C() {
        synchronized (this.K) {
            a aVar = this.J;
            if (aVar != null) {
                aVar.f10505a = true;
                Future<?> future = aVar.b;
                if (future != null) {
                    future.cancel(true);
                }
                this.J.b = null;
                this.J = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        long o = o();
        long j = this.U;
        this.U = o;
        if (this.Q != EnumC0218e.STARTED) {
            if (this.Q == EnumC0218e.PAUSED && this.X) {
                this.f10496a.c("checkBuffingEvent, pause state and send end buffering");
                this.X = false;
                this.Y = 0;
                c.h hVar = this.w;
                if (hVar != null) {
                    hVar.a(201, 0L, 0L, null);
                    return;
                }
                return;
            }
            return;
        }
        if (this.c) {
            long j2 = this.e;
            if (j2 > 0 && o >= j2 && !this.P) {
                this.f10496a.c("checkBuffingEvent, loopback skip end, curPosition:" + o + ", mLoopStartPositionMs:" + this.d);
                this.C.seekTo((int) this.d);
            }
        } else if (this.n > 0 && o >= n() - this.n) {
            this.f10496a.c("checkBuffingEvent, skip end, mBaseDuration: " + this.T + ", curPosition:" + o + ", mSkipEndMilsec:" + this.n);
            this.Q = EnumC0218e.COMPLETE;
            e();
            C();
            c.InterfaceC0220c interfaceC0220c = this.v;
            if (interfaceC0220c != null) {
                interfaceC0220c.b();
                return;
            }
            return;
        }
        int i = (o > j ? 1 : (o == j ? 0 : -1));
        if (i != 0) {
            this.ag++;
        }
        if (i == 0 && o > 0) {
            int i2 = this.Y + 1;
            this.Y = i2;
            if (i2 >= this.L && !this.X) {
                this.X = true;
                this.f10496a.c("checkBuffingEvent, position no change,send start buffering");
                c.h hVar2 = this.w;
                if (hVar2 != null) {
                    hVar2.a(200, o, this.T, Long.valueOf(this.ag));
                }
            }
            if (this.Y >= this.M) {
                this.f10496a.e("checkBuffingEvent post error");
                this.Q = EnumC0218e.ERROR;
                e();
                this.X = false;
                C();
                c.f fVar = this.x;
                if (fVar != null) {
                    fVar.a(2001, g(-110), 0L, 0L);
                    return;
                }
                return;
            }
            return;
        }
        if (this.X) {
            this.f10496a.c("checkBuffingEvent, position change, send end buffering");
            c.h hVar3 = this.w;
            if (hVar3 != null) {
                hVar3.a(201, o, this.T, Long.valueOf(this.ag));
            }
        }
        this.X = false;
        this.Y = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        synchronized (this.N) {
            try {
                if (this.O == null) {
                    this.O = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.7
                        @Override // java.lang.Runnable
                        public void run() {
                            if (e.this.Q != EnumC0218e.PAUSED && e.this.X) {
                                e.this.f10496a.e("startCheckBufferTimeOutByInfo, buffer last too long");
                                e.this.Q = EnumC0218e.ERROR;
                                e.this.e();
                                e.this.X = false;
                                e.this.F();
                                c.f fVar = e.this.x;
                                if (fVar != null) {
                                    fVar.a(2001, e.g(-110), 0L, 0L);
                                }
                            }
                        }
                    }, this.M * 400, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void F() {
        synchronized (this.N) {
            Future<?> future = this.O;
            if (future != null) {
                future.cancel(true);
                this.O = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        if (this.o) {
            return false;
        }
        return this.t;
    }

    private int f(int i) {
        if (2 == i) {
            return 2;
        }
        if (1 == i) {
            return 1;
        }
        return 4 == i ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(int i) {
        long j = i;
        long j2 = i < 0 ? 10000000 - j : 10000000 + j;
        if (j2 >= 2147483647L) {
            j2 = 2147483647L;
        }
        return (int) j2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPDynamicStatisticParams c(boolean z) {
        return null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void h() {
        x();
        this.f10496a.c("prepareAsync ");
        EnumC0218e enumC0218e = EnumC0218e.PREPARING;
        this.Q = enumC0218e;
        this.R = enumC0218e;
        this.C.prepareAsync();
        z();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public synchronized void j() {
        try {
            this.f10496a.c("pause ");
            if (this.S) {
                f fVar = this.ah;
                if (fVar != null) {
                    fVar.h = EnumC0218e.PAUSED;
                }
                this.f10496a.d("system player is busy.");
                return;
            }
            com.tencent.thumbplayer.tcmedia.adapter.a.a.a aVar = this.af;
            if (aVar != null) {
                aVar.c();
            }
            this.C.pause();
            EnumC0218e enumC0218e = EnumC0218e.PAUSED;
            this.Q = enumC0218e;
            this.R = enumC0218e;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public synchronized void k() {
        this.f10496a.c("stop ");
        A();
        C();
        F();
        this.Q = EnumC0218e.STOPPED;
        c();
        this.aa = 0;
        this.ab = -1;
        this.ah = null;
        this.Z = -1;
        this.ac = -1;
        this.af.d();
        this.ag = 0L;
        this.f10496a.c("stop over.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public synchronized void l() {
        this.f10496a.c("reset ");
        EnumC0218e enumC0218e = EnumC0218e.IDLE;
        this.Q = enumC0218e;
        this.R = enumC0218e;
        this.af.e();
        this.C.reset();
        this.m = 0;
        this.n = -1L;
        this.o = false;
        this.p = -1L;
        this.q = -1;
        this.r = -1;
        this.s = null;
        A();
        C();
        F();
        this.f10496a.c("reset over.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long o() {
        int i;
        if (this.o) {
            return 0L;
        }
        if (this.S || this.Q == EnumC0218e.ERROR) {
            long j = this.U;
            if (j != -1) {
                return j;
            }
        } else if (this.Q != EnumC0218e.IDLE && this.Q != EnumC0218e.INITIALIZED && this.Q != EnumC0218e.PREPARING && this.Q != EnumC0218e.STOPPED && this.Q != EnumC0218e.PREPARED) {
            i = this.C.getCurrentPosition();
            return i;
        }
        i = this.m;
        return i;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long p() {
        return 0L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("getVideoWidth, width:" + this.V);
        return this.V;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int r() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("getVideoHeight, height:" + this.W);
        return this.W;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A() {
        synchronized (this.H) {
            Future<?> future = this.G;
            if (future != null) {
                future.cancel(true);
                this.G = null;
            }
        }
    }

    private void B() {
        synchronized (this.K) {
            try {
                if (!G()) {
                    this.f10496a.c("startCheckBufferingTimer, forbidden check buffer by position");
                } else if (this.J == null) {
                    final a aVar = new a();
                    this.J = aVar;
                    aVar.f10505a = false;
                    aVar.b = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.6
                        @Override // java.lang.Runnable
                        public void run() {
                            while (!aVar.f10505a) {
                                e.this.D();
                                try {
                                    Thread.sleep(400L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }, 0L, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private MediaPlayer a() {
        com.tencent.thumbplayer.tcmedia.adapter.a.a.b bVar = new com.tencent.thumbplayer.tcmedia.adapter.a.a.b();
        bVar.setOnPreparedListener(this.D);
        bVar.setOnCompletionListener(this.D);
        bVar.setOnErrorListener(this.D);
        bVar.setOnInfoListener(this.D);
        bVar.setOnBufferingUpdateListener(this.D);
        bVar.setOnSeekCompleteListener(this.D);
        bVar.setOnVideoSizeChangedListener(this.D);
        bVar.setOnTimedTextListener(this.ai);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        y();
        c();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        try {
            f fVar = this.ah;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.c("playerResetEnd, actionInfo:" + fVar + ", mSuspend:" + this.S);
            if (fVar == null || !this.S) {
                if (this.m > 0 && !this.P) {
                    com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.f10496a;
                    aVar2.c("onPrepared(), and seekto:" + this.m);
                    try {
                        this.C.seekTo(this.m);
                    } catch (Exception e) {
                        this.f10496a.a(e);
                    }
                }
                this.Q = EnumC0218e.PREPARED;
                c.i iVar = this.u;
                if (iVar != null) {
                    iVar.a();
                }
                return;
            }
            c.h hVar = this.w;
            int i = fVar.f10510a == 1 ? 3 : 4;
            if (hVar != null) {
                hVar.a(i, 1000L, 0L, Long.valueOf(fVar.b));
            }
            if (fVar.e > 0) {
                this.C.selectTrack(fVar.e);
            }
            if (fVar.f > 0) {
                this.C.selectTrack(fVar.f);
            }
            if (fVar.c > 0 && !this.P) {
                com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.f10496a;
                aVar3.c("playerResetEnd, onPrepared(), and seek to:" + fVar.c);
                try {
                    this.C.seekTo((int) fVar.c);
                } catch (Exception e2) {
                    this.f10496a.a(e2);
                }
            }
            com.tencent.thumbplayer.tcmedia.e.a aVar4 = this.f10496a;
            aVar4.c("playerResetEnd, restore state:" + fVar.h);
            EnumC0218e enumC0218e = fVar.h;
            if (enumC0218e != EnumC0218e.IDLE && enumC0218e != EnumC0218e.INITIALIZED && enumC0218e != EnumC0218e.PREPARING) {
                if (enumC0218e != EnumC0218e.PREPARED && enumC0218e != EnumC0218e.PAUSED) {
                    EnumC0218e enumC0218e2 = EnumC0218e.STARTED;
                    if (enumC0218e == enumC0218e2) {
                        this.f10496a.c("playerResetEnd,  MediaPlayer.start().");
                        this.C.start();
                        this.Q = fVar.h;
                        this.R = enumC0218e2;
                        B();
                    } else {
                        com.tencent.thumbplayer.tcmedia.e.a aVar5 = this.f10496a;
                        aVar5.e("illegal state, state:" + fVar.h);
                        this.Q = EnumC0218e.ERROR;
                        e();
                        c.f fVar2 = this.x;
                        if (fVar2 != null) {
                            fVar2.a(2000, g(-10004), 0L, 0L);
                        }
                    }
                    this.S = false;
                    this.ah = null;
                    return;
                }
                this.Q = enumC0218e;
                this.S = false;
                this.ah = null;
                return;
            }
            this.Q = EnumC0218e.PREPARED;
            c.i iVar2 = this.u;
            if (iVar2 != null) {
                iVar2.a();
            }
            this.S = false;
            this.ah = null;
            return;
        } catch (Throwable th) {
            throw th;
        }
        throw th;
    }

    private void x() {
        a(this.s);
    }

    private void y() {
        this.C.setOnPreparedListener(null);
        this.C.setOnCompletionListener(null);
        this.C.setOnErrorListener(null);
        this.C.setOnInfoListener(null);
        this.C.setOnBufferingUpdateListener(null);
        this.C.setOnSeekCompleteListener(null);
        this.C.setOnVideoSizeChangedListener(null);
    }

    private void z() {
        this.f10496a.c("startCheckPrepareTimeoutTimer");
        synchronized (this.H) {
            try {
                if (this.G == null) {
                    this.G = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.5
                        @Override // java.lang.Runnable
                        public void run() {
                            if (e.this.Q == EnumC0218e.PREPARING) {
                                e.this.f10496a.e("startCheckPrepareTimeoutTimer, post error");
                                e.this.Q = EnumC0218e.ERROR;
                                e.this.e();
                                e.this.A();
                                c.f fVar = e.this.x;
                                if (fVar != null) {
                                    fVar.a(2001, e.g(-110), 0L, 0L);
                                }
                            }
                        }
                    }, this.I, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long b(int i) {
        return -1L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void g() {
        if (this.R == EnumC0218e.COMPLETE) {
            this.f10496a.d("call prepare() on mMediaPlayerState==COMPLETE");
            return;
        }
        x();
        this.f10496a.c("prepare ");
        EnumC0218e enumC0218e = EnumC0218e.PREPARING;
        this.Q = enumC0218e;
        this.R = enumC0218e;
        this.C.prepare();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void i() {
        com.tencent.thumbplayer.tcmedia.e.a aVar;
        String str;
        this.f10496a.c("start ");
        if (this.S) {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.h = EnumC0218e.STARTED;
            }
            aVar = this.f10496a;
            str = "system player is busy.";
        } else if (this.Q == EnumC0218e.PREPARED || this.Q == EnumC0218e.PAUSED) {
            com.tencent.thumbplayer.tcmedia.adapter.a.a.a aVar2 = this.af;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.C.start();
            EnumC0218e enumC0218e = EnumC0218e.STARTED;
            this.Q = enumC0218e;
            this.R = enumC0218e;
            float f2 = this.k;
            if (f2 != 1.0d) {
                b(f2);
            }
            B();
            return;
        } else {
            aVar = this.f10496a;
            str = "start(), illegal state, state:" + this.Q;
        }
        aVar.d(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public synchronized void m() {
        this.f10496a.c("release ");
        this.af.f();
        A();
        C();
        F();
        this.Q = EnumC0218e.RELEASE;
        e();
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.F = null;
        this.f10496a.c("release over.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long n() {
        if (this.o) {
            return 0L;
        }
        if (this.S) {
            return this.T;
        }
        if (this.Q == EnumC0218e.PREPARED || this.Q == EnumC0218e.STARTED || this.Q == EnumC0218e.PAUSED) {
            if (this.T <= 0) {
                this.T = this.C.getDuration();
            }
            long j = this.p;
            if (j > 0) {
                long j2 = this.T;
                if (j2 <= 0) {
                    this.T = j;
                } else {
                    long j3 = this.p;
                    if ((Math.abs(j - j2) * 100) / j3 > 1) {
                        this.T = j3;
                    }
                }
            }
            return this.T;
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[LOOP:0: B:27:0x0059->B:29:0x005f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[LOOP:1: B:31:0x0073->B:33:0x0079, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090 A[LOOP:2: B:39:0x008e->B:40:0x0090, LOOP_END] */
    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.thumbplayer.tcmedia.api.TPTrackInfo[] s() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.s():com.tencent.thumbplayer.tcmedia.api.TPTrackInfo[]");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPProgramInfo[] t() {
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long[] u() {
        return new long[]{-1, -1};
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPGeneralPlayFlowParams v() {
        return null;
    }

    private void d() {
        if (b(this.R)) {
            this.R = EnumC0218e.RELEASE;
            this.f10496a.c("MediaPlayer release.");
            this.C.release();
        }
    }

    private void e(int i) {
        if (i <= 0) {
            return;
        }
        b bVar = this.ad.get(i);
        c.h hVar = this.w;
        if (hVar != null) {
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
            tPAudioTrackInfo.audioTrackUrl = bVar.b;
            tPAudioTrackInfo.paramData = bVar.c;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.c("handleDataSource, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
            hVar.a(1011, 0L, 0L, tPAudioTrackInfo);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            r5 = this;
            r5.A()
            r5.C()
            r5.F()
            r5.e()
            com.tencent.thumbplayer.tcmedia.adapter.a.a.b r0 = new com.tencent.thumbplayer.tcmedia.adapter.a.a.b
            r0.<init>()
            r5.C = r0
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnPreparedListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnCompletionListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnErrorListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnInfoListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnBufferingUpdateListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnSeekCompleteListener(r1)
            android.media.MediaPlayer r0 = r5.C
            com.tencent.thumbplayer.tcmedia.adapter.a.a.e$d r1 = r5.D
            r0.setOnVideoSizeChangedListener(r1)
            android.media.MediaPlayer r0 = r5.C
            android.media.MediaPlayer$OnTimedTextListener r1 = r5.ai
            r0.setOnTimedTextListener(r1)
            boolean r0 = r5.i
            if (r0 == 0) goto L56
            android.media.MediaPlayer r0 = r5.C
            r1 = 0
        L52:
            r0.setVolume(r1, r1)
            goto L63
        L56:
            float r0 = r5.j
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L63
            android.media.MediaPlayer r0 = r5.C
            float r1 = r5.j
            goto L52
        L63:
            float r0 = r5.k
            double r1 = (double) r0
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L6f
            r5.b(r0)
        L6f:
            boolean r0 = r5.c
            if (r0 == 0) goto L7a
            android.media.MediaPlayer r0 = r5.C
            boolean r1 = r5.c
            r0.setLooping(r1)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.f():void");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public String c(int i) {
        return null;
    }

    private void c() {
        if (a(this.R)) {
            this.R = EnumC0218e.STOPPED;
            this.f10496a.c("MediaPlayer stop.");
            this.C.stop();
        }
    }

    private void d(int i, long j) {
        f fVar = new f();
        fVar.b = j;
        fVar.d = i;
        fVar.f10510a = 2;
        fVar.g = this.f;
        a(fVar);
    }

    private void e(int i, long j) {
        this.af.e();
        b bVar = this.ae.get(i);
        this.af.a(bVar.b, bVar.d, j);
        this.af.a();
    }

    private void f(int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("deselectSubTrack, trackIndex:" + i + ", opaque:" + j);
        this.af.e();
    }

    private void b() {
        this.C = a();
        EnumC0218e enumC0218e = EnumC0218e.IDLE;
        this.Q = enumC0218e;
        this.R = enumC0218e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(float f2) {
        this.f10496a.c("setAudioGainRatio, : ".concat(String.valueOf(f2)));
        this.j = f2;
        try {
            if (this.C != null) {
                MediaPlayer mediaPlayer = this.C;
                float f3 = this.j;
                mediaPlayer.setVolume(f3, f3);
            }
        } catch (IllegalStateException e) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.c("setAudioGainRatio ex : " + e.toString());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void c(int i, long j) {
        this.f10496a.e("selectProgram, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i) {
        this.f10496a.c("seekTo, position: ".concat(String.valueOf(i)));
        if (this.P) {
            this.f10496a.c("current media is not seekable, ignore");
        } else if (!this.S) {
            if (this.R == EnumC0218e.COMPLETE) {
                this.Q = EnumC0218e.STARTED;
            }
            this.C.seekTo(i);
        } else {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.c = i;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(float f2) {
        this.f10496a.c("setPlaySpeedRatio, : ".concat(String.valueOf(f2)));
        this.k = f2;
        this.f10496a.c("setPlaySpeedRatio play speed:".concat(String.valueOf(f2)));
        try {
            PlaybackParams playbackParams = this.C.getPlaybackParams();
            if (playbackParams.getSpeed() != f2) {
                playbackParams.setSpeed(f2);
                this.C.setPlaybackParams(playbackParams);
            }
        } catch (Exception e) {
            this.f10496a.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("seekTo, position: " + i + ", mode: " + i2);
        if (this.P) {
            this.f10496a.c("current media is not seekable, ignore");
        } else if (!this.S) {
            a(this.C, i, i2);
        } else {
            f fVar = this.ah;
            if (fVar != null) {
                fVar.c = i;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(int i, long j) {
        this.f10496a.c("deselectTrack, trackID ".concat(String.valueOf(i)));
        int size = this.ad.size();
        int size2 = this.ae.size();
        if (i < size || i >= size2 + size) {
            this.C.deselectTrack(i);
            return;
        }
        int i2 = i - size;
        try {
            f(i2, j);
        } catch (Exception e) {
            this.f10496a.a(e);
        }
        this.ae.get(i2).f10506a.isSelected = false;
        this.ab = -1;
    }

    private void b(AssetFileDescriptor assetFileDescriptor) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.C.setDataSource(assetFileDescriptor);
        } else {
            this.C.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, long j) {
        MediaPlayer.TrackInfo[] trackInfoArr;
        int i2;
        int g;
        Long valueOf;
        int i3;
        long j2;
        long j3;
        int i4;
        this.f10496a.c("selectTrack, trackID:" + i + ", opaque:" + j);
        int size = this.ad.size();
        int size2 = this.ae.size();
        this.ad.size();
        c.h hVar = this.w;
        if (i >= 0 && i < size) {
            try {
                d(i, j);
                this.ad.get(this.aa).f10506a.isSelected = false;
                this.ad.get(i).f10506a.isSelected = true;
                this.aa = i;
                return;
            } catch (Exception e) {
                this.f10496a.a(e);
                if (hVar == null) {
                    return;
                }
                g = g(-10000);
            }
        } else if (i < size || i >= size + size2) {
            int i5 = i - (size + size2);
            if (this.Q == EnumC0218e.PREPARED || this.Q == EnumC0218e.STARTED || this.Q == EnumC0218e.PAUSED) {
                try {
                    trackInfoArr = this.C.getTrackInfo();
                } catch (Exception unused) {
                    this.f10496a.e("getTrackInfo, android getTrackInfo crash");
                    trackInfoArr = null;
                }
                if (trackInfoArr != null && trackInfoArr.length > i5) {
                    MediaPlayer.TrackInfo trackInfo = trackInfoArr[i5];
                    if (trackInfo.getTrackType() == 2) {
                        this.ac = i5;
                    } else if (trackInfo.getTrackType() == 4) {
                        this.Z = i5;
                    } else if (hVar == null) {
                        return;
                    } else {
                        i2 = -10003;
                    }
                    this.C.selectTrack(i5);
                    if (hVar != null) {
                        valueOf = Long.valueOf(j);
                        i3 = 4;
                        j2 = 1000;
                        j3 = 0;
                        hVar.a(i3, j2, j3, valueOf);
                    }
                    return;
                } else if (hVar == null) {
                    return;
                } else {
                    i2 = -10002;
                }
                g = g(i2);
            } else {
                this.f10496a.e("selectTrack, illegal state:" + this.Q);
                return;
            }
        } else {
            int i6 = i - size;
            try {
                e(i6, j);
            } catch (Exception e2) {
                this.f10496a.a(e2);
                if (hVar != null) {
                    i4 = i6;
                    hVar.a(4, 2000L, g(-10000), Long.valueOf(j));
                }
            }
            i4 = i6;
            int i7 = this.ab;
            if (i7 >= 0 && i7 < size2) {
                this.ae.get(i7).f10506a.isSelected = false;
            }
            this.ae.get(i4).f10506a.isSelected = true;
            this.ab = i;
            return;
        }
        j3 = g;
        valueOf = Long.valueOf(j);
        i3 = 4;
        j2 = 2000;
        hVar.a(i3, j2, j3, valueOf);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            this.f10496a.c("setDataSource afd is null ");
            throw new IllegalArgumentException("afd is null");
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("setDataSource afd， afd: " + assetFileDescriptor.toString());
        this.h = assetFileDescriptor;
        b(assetFileDescriptor);
        this.E = new com.tencent.thumbplayer.tcmedia.a.c(assetFileDescriptor);
        EnumC0218e enumC0218e = EnumC0218e.INITIALIZED;
        this.Q = enumC0218e;
        this.R = enumC0218e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(boolean z) {
        this.f10496a.c("setLoopback, : ".concat(String.valueOf(z)));
        this.c = z;
        this.C.setLooping(z);
    }

    private void a(MediaPlayer mediaPlayer) {
        try {
            Field declaredField = MediaPlayer.class.getDeclaredField("mEventHandler");
            declaredField.setAccessible(true);
            Handler handler = (Handler) declaredField.get(mediaPlayer);
            Field declaredField2 = Handler.class.getDeclaredField("mCallback");
            declaredField2.setAccessible(true);
            if (((Handler.Callback) declaredField2.get(handler)) == null) {
                declaredField2.set(handler, new c(handler));
            }
        } catch (Exception e) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.e("mediaPlayerExceptionHook, " + Log.getStackTraceString(e));
        }
    }

    private boolean b(EnumC0218e enumC0218e) {
        return enumC0218e != EnumC0218e.RELEASE;
    }

    private void a(MediaPlayer mediaPlayer, int i, @TPCommonEnum.TPSeekMode int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 26) {
            this.f10496a.c("os ver is too low, current sdk int:" + i3 + ", is less than 26, use seekTo(int positionMs) instead");
            mediaPlayer.seekTo(i);
            return;
        }
        int i4 = 1;
        try {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        i4 = 2;
                    }
                }
                mediaPlayer.seekTo(i, i4);
                return;
            }
            mediaPlayer.seekTo(i, i4);
            return;
        } catch (Exception e) {
            this.f10496a.a(e);
            try {
                if (this.R == EnumC0218e.COMPLETE) {
                    this.Q = EnumC0218e.STARTED;
                }
                mediaPlayer.seekTo(i);
                return;
            } catch (Exception e2) {
                this.f10496a.a(e2);
                return;
            }
        }
        i4 = 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            this.f10496a.c("setDataSource pfd is null ");
            throw new IllegalArgumentException("pfd is null");
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("setDataSource pfd， pfd: " + parcelFileDescriptor.toString());
        this.g = parcelFileDescriptor.getFileDescriptor();
        this.C.setDataSource(parcelFileDescriptor.getFileDescriptor());
        this.E = new com.tencent.thumbplayer.tcmedia.a.c(parcelFileDescriptor.getFileDescriptor());
        EnumC0218e enumC0218e = EnumC0218e.INITIALIZED;
        this.Q = enumC0218e;
        this.R = enumC0218e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(Surface surface) {
        this.f10496a.c("setSurface, surface: ".concat(String.valueOf(surface)));
        this.F = surface;
        this.C.setSurface(surface);
        this.f10496a.c("setSurface over, surface: ".concat(String.valueOf(surface)));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        this.f10496a.c("setSurfaceHolder, sh: ".concat(String.valueOf(surfaceHolder)));
        this.F = surfaceHolder;
        this.C.setDisplay(surfaceHolder);
        this.f10496a.c("setSurfaceHolder over, sh: ".concat(String.valueOf(surfaceHolder)));
    }

    private synchronized void a(f fVar) {
        int i;
        try {
            String str = fVar.g;
            fVar.c = o();
            fVar.h = this.Q;
            fVar.e = this.ac;
            fVar.f = this.Z;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.c("playerResetStart, pos:" + fVar.c + ", state:" + fVar.h);
            this.S = true;
            f();
            this.R = EnumC0218e.IDLE;
            if (this.g != null) {
                this.C.setDataSource(this.g);
            } else {
                AssetFileDescriptor assetFileDescriptor = this.h;
                if (assetFileDescriptor != null) {
                    b(assetFileDescriptor);
                } else {
                    e(fVar.d);
                    Map<String, String> map = this.l;
                    if (map == null || map.isEmpty()) {
                        this.C.setDataSource(str);
                    } else {
                        this.C.setDataSource(this.b, Uri.parse(str), this.l);
                    }
                }
            }
            this.R = EnumC0218e.INITIALIZED;
            Object obj = this.F;
            if (obj == null) {
                this.C.setDisplay(null);
            } else if (obj instanceof SurfaceHolder) {
                this.C.setDisplay((SurfaceHolder) this.F);
            } else if (obj instanceof Surface) {
                this.C.setSurface((Surface) this.F);
            }
            f fVar2 = this.ah;
            if (fVar2 != null && (i = fVar2.f10510a) != fVar.f10510a) {
                c.h hVar = this.w;
                int i2 = i == 1 ? 3 : 4;
                if (hVar != null) {
                    hVar.a(i2, fVar2.b, 0L, null);
                }
                fVar.h = fVar2.h;
                fVar.c = fVar2.c;
            }
            this.ah = fVar;
            EnumC0218e enumC0218e = fVar.h;
            if (enumC0218e == EnumC0218e.PREPARING || enumC0218e == EnumC0218e.PREPARED || enumC0218e == EnumC0218e.STARTED || enumC0218e == EnumC0218e.PAUSED) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.a aVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio frame out");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.b bVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.InterfaceC0220c interfaceC0220c) {
        this.v = interfaceC0220c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.f fVar) {
        this.x = fVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.h hVar) {
        this.w = hVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.i iVar) {
        this.u = iVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.j jVar) {
        this.y = jVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.l lVar) {
        this.A = lVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.m mVar) {
        this.B = mVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.n nVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video frame out");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.o oVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.p pVar) {
        this.z = pVar;
    }

    private void a(TPAudioAttributes tPAudioAttributes) {
        if (tPAudioAttributes == null) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        this.C.setAudioAttributes(this.s.toAndroidMediaAudioAttributes());
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("set audio attributes into MediaPlayer, API:" + i + ">=21, " + this.s.toString());
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        if (this.E == null) {
            tPCaptureCallBack.onCaptureVideoFailed(TPGeneralError.UNMATCHED_STATE);
            return;
        }
        TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
        tPImageGeneratorParams.width = tPCaptureParams.width;
        tPImageGeneratorParams.height = tPCaptureParams.height;
        tPImageGeneratorParams.format = tPCaptureParams.format;
        tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
        tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
        this.E.a(o(), tPImageGeneratorParams, tPCaptureCallBack);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        int key = tPOptionalParam.getKey();
        if (key == 1) {
            this.p = tPOptionalParam.getParamLong().value;
        } else if (key == 2) {
            this.r = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
            aVar.c("setPlayerOptionalParam, video width:" + this.r);
        } else if (key == 3) {
            this.q = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.f10496a;
            aVar2.c("setPlayerOptionalParam, video height:" + this.q);
        } else if (key == 4) {
            this.o = tPOptionalParam.getParamBoolean().value;
            this.P = true;
            com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.f10496a;
            aVar3.c("setPlayerOptionalParam, is live:" + this.o);
        } else if (key == 5) {
            this.t = tPOptionalParam.getParamBoolean().value;
        } else if (key == 7) {
            this.L = (int) (tPOptionalParam.getParamLong().value / 400);
            com.tencent.thumbplayer.tcmedia.e.a aVar4 = this.f10496a;
            aVar4.c("setPlayerOptionalParam, on buffer timeout:" + tPOptionalParam.getParamLong().value + "(ms)");
        } else if (key == 100) {
            this.m = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar5 = this.f10496a;
            aVar5.c("setPlayerOptionalParam, start position:" + this.m);
        } else if (key == 107) {
            this.M = (int) ((tPOptionalParam.getParamLong().value + 400) / 400);
            com.tencent.thumbplayer.tcmedia.e.a aVar6 = this.f10496a;
            aVar6.c("setPlayerOptionalParam, buffer timeout:" + tPOptionalParam.getParamLong().value + "(ms)");
        } else if (key == 128) {
            this.I = tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar7 = this.f10496a;
            aVar7.c("setPlayerOptionalParam, prepare timeout:" + this.I + "(ms)");
        } else if (key == 414) {
            this.s = (TPAudioAttributes) tPOptionalParam.getParamObject().objectValue;
            com.tencent.thumbplayer.tcmedia.e.a aVar8 = this.f10496a;
            aVar8.c("setPlayerOptionalParam, " + this.s.toString());
        } else if (key == 450) {
            int i = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.adapter.a.a.a aVar9 = this.af;
            if (aVar9 != null) {
                aVar9.a(i);
            }
            TPLogUtil.i("TPSystemMediaPlayer", "setPlayerOptionalParam, subtitle type:" + tPOptionalParam.getParamLong().value);
        } else if (key == 500) {
            this.n = tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar10 = this.f10496a;
            aVar10.c("setPlayerOptionalParam, skip end position:" + this.n);
        } else if (key != 507) {
        } else {
            TPSubtitleRenderModel tPSubtitleRenderModel = (TPSubtitleRenderModel) tPOptionalParam.getParamObject().objectValue;
            com.tencent.thumbplayer.tcmedia.adapter.a.a.a aVar11 = this.af;
            if (aVar11 != null) {
                aVar11.a(tPSubtitleRenderModel);
            }
            TPLogUtil.i("TPSystemMediaPlayer", "setPlayerOptionalParam, subtitle render model");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        throw new IllegalArgumentException("setDataSource by asset, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.f10496a.a(new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPSystemMediaPlayer"));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str) {
        this.f10496a.c("setAudioNormalizeVolumeParams not supported.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        this.f10496a.c("switchDefinition, defUrl: ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            this.f10496a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f = str;
        f fVar = new f();
        fVar.b = j;
        fVar.d = this.aa;
        fVar.f10510a = 1;
        fVar.g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.f10496a.c("setDataSource httpHeader, url: ".concat(String.valueOf(str)));
        this.f = str;
        this.l = map;
        this.C.setDataSource(this.b, Uri.parse(str), this.l);
        this.E = new com.tencent.thumbplayer.tcmedia.a.c(str);
        EnumC0218e enumC0218e = EnumC0218e.INITIALIZED;
        this.Q = enumC0218e;
        this.R = enumC0218e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        this.f10496a.c("switchDefinition, defUrl: ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            this.f10496a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f = str;
        f fVar = new f();
        fVar.b = j;
        fVar.d = this.aa;
        fVar.f10510a = 1;
        fVar.g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            this.f10496a.e("addSubtitleSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str3;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 3;
        b bVar = new b();
        bVar.f10506a = tPTrackInfo;
        bVar.b = str;
        bVar.d = map;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("addSubtitleSource, name:" + tPTrackInfo.name + ", url:" + str3);
        this.ae.add(bVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            this.f10496a.e("addAudioTrackSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str2;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 2;
        b bVar = new b();
        bVar.f10506a = tPTrackInfo;
        bVar.b = str;
        bVar.d = map;
        bVar.c = list;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("addAudioTrackSource, name:" + tPTrackInfo.name + ", url:" + str2);
        this.ad.add(bVar);
    }

    /* loaded from: classes6.dex */
    public class d implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        private d() {
        }

        private int a(int i) {
            if (e.this.r > 0) {
                return e.this.r;
            }
            return i;
        }

        private int b(int i) {
            if (e.this.q > 0) {
                return e.this.q;
            }
            return i;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (e.this.o) {
                e.this.f10496a.d("onCompletion, unknown err.");
                return;
            }
            e.this.f10496a.c("onCompletion.");
            e.this.R = EnumC0218e.COMPLETE;
            e.this.C();
            c.InterfaceC0220c interfaceC0220c = e.this.v;
            if (interfaceC0220c != null) {
                interfaceC0220c.b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
            if (r12 == 100) goto L21;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
        @Override // android.media.MediaPlayer.OnErrorListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onError(android.media.MediaPlayer r11, int r12, int r13) {
            /*
                r10 = this;
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r0 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.EnumC0218e.COMPLETE
                r1 = 1
                if (r11 == r0) goto L96
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r0 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.EnumC0218e.STOPPED
                if (r11 == r0) goto L96
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r0 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.EnumC0218e.RELEASE
                if (r11 == r0) goto L96
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r0 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.EnumC0218e.IDLE
                if (r11 == r0) goto L96
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r0 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.EnumC0218e.ERROR
                if (r11 != r0) goto L34
                goto L96
            L34:
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.e.a r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "onError, what: "
                r2.<init>(r3)
                r2.append(r12)
                java.lang.String r3 = ", extra: "
                r2.append(r3)
                r2.append(r13)
                java.lang.String r2 = r2.toString()
                r11.c(r2)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e.h(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e.q(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e.a(r11, r0)
                r11 = -1010(0xfffffffffffffc0e, float:NaN)
                r0 = 2000(0x7d0, float:2.803E-42)
                if (r13 == r11) goto L7b
                r11 = -1007(0xfffffffffffffc11, float:NaN)
                if (r13 == r11) goto L7b
                r11 = -110(0xffffffffffffff92, float:NaN)
                r2 = 2001(0x7d1, float:2.804E-42)
                if (r13 == r11) goto L7d
                switch(r13) {
                    case -1005: goto L7d;
                    case -1004: goto L7d;
                    case -1003: goto L7d;
                    default: goto L75;
                }
            L75:
                if (r12 == r1) goto L7b
                r11 = 100
                if (r12 == r11) goto L7d
            L7b:
                r4 = r0
                goto L7e
            L7d:
                r4 = r2
            L7e:
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e.g(r11)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.c$f r3 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.i(r11)
                if (r3 == 0) goto L95
                int r5 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.d(r12)
                long r6 = (long) r13
                r8 = 0
                r3.a(r4, r5, r6, r8)
            L95:
                return r1
            L96:
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.e.a r11 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r2 = "onError, illegal state:"
                r0.<init>(r2)
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e r2 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.this
                com.tencent.thumbplayer.tcmedia.adapter.a.a.e$e r2 = com.tencent.thumbplayer.tcmedia.adapter.a.a.e.e(r2)
                r0.append(r2)
                java.lang.String r2 = ", what:"
                r0.append(r2)
                r0.append(r12)
                java.lang.String r12 = ", extra:"
                r0.append(r12)
                r0.append(r13)
                java.lang.String r12 = r0.toString()
                r11.c(r12)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.adapter.a.a.e.d.onError(android.media.MediaPlayer, int, int):boolean");
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            int i3;
            e.this.f10496a.c("mediaplayer, onInfo. what:" + i + ", extra:" + i2);
            if (i != 3) {
                if (i == 801) {
                    e.this.P = true;
                } else if (i != 701) {
                    if (i == 702) {
                        i3 = 201;
                    }
                } else {
                    i3 = 200;
                }
                i3 = -1;
            } else {
                i3 = 106;
            }
            if (i3 != -1) {
                if (200 != i3 && 201 != i3) {
                    if (e.this.w != null) {
                        e.this.w.a(106, 0L, 0L, null);
                    }
                } else if (!e.this.G()) {
                    e eVar = e.this;
                    if (200 == i3) {
                        eVar.X = true;
                        e.this.E();
                    } else {
                        eVar.X = false;
                        e.this.F();
                    }
                    if (e.this.w != null) {
                        e.this.w.a(i3, 0L, 0L, null);
                    }
                }
            }
            if (i3 == 106) {
                int a2 = a(mediaPlayer.getVideoWidth());
                int b = b(mediaPlayer.getVideoHeight());
                if ((b != e.this.W || a2 != e.this.V) && b > 0 && a2 > 0) {
                    e.this.W = b;
                    e.this.V = a2;
                    if (e.this.z != null) {
                        e.this.z.a(e.this.V, e.this.W);
                    }
                }
            }
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (e.this.Q != EnumC0218e.PREPARING) {
                e.this.f10496a.c("onPrepared() is called in a wrong situation, mState = " + e.this.Q);
                return;
            }
            e.this.R = EnumC0218e.PREPARED;
            long duration = e.this.C.getDuration();
            if (duration <= 0) {
                e.this.P = true;
            }
            e.this.f10496a.c("onPrepared() , mStartPositionMs=" + e.this.m + ", duration:" + duration + ", mIsLive:" + e.this.o);
            e.this.A();
            e.this.w();
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (e.this.C != null) {
                e.this.f10496a.c("onSeekComplete().");
                EnumC0218e enumC0218e = e.this.Q;
                EnumC0218e enumC0218e2 = EnumC0218e.STARTED;
                if (enumC0218e == enumC0218e2 && e.this.R == EnumC0218e.COMPLETE) {
                    e.this.Q = enumC0218e2;
                    e.this.R = enumC0218e2;
                    e.this.C.start();
                }
                if (EnumC0218e.PREPARED != e.this.Q && e.this.y != null) {
                    e.this.y.c();
                }
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            if (i == 0 || i2 == 0) {
                com.tencent.thumbplayer.tcmedia.e.a aVar = e.this.f10496a;
                aVar.e("onVideoSizeChanged() size error, width:" + i + " height:" + i2);
                return;
            }
            int a2 = a(i);
            int b = b(i2);
            try {
            } catch (Exception e) {
                e.this.f10496a.d(e.toString());
            }
            if (a2 == e.this.V) {
                if (b != e.this.W) {
                }
                e.this.V = a2;
                e.this.W = b;
                com.tencent.thumbplayer.tcmedia.e.a aVar2 = e.this.f10496a;
                aVar2.c("onVideoSizeChanged(), width:" + a2 + " height:" + b);
            }
            if (b > 0 && a2 > 0) {
                e.this.z.a(a2, b);
            }
            e.this.V = a2;
            e.this.W = b;
            com.tencent.thumbplayer.tcmedia.e.a aVar22 = e.this.f10496a;
            aVar22.c("onVideoSizeChanged(), width:" + a2 + " height:" + b);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z) {
        com.tencent.thumbplayer.tcmedia.e.a aVar;
        String str;
        this.f10496a.c("setOutputMute, : ".concat(String.valueOf(z)));
        this.i = z;
        try {
            if (z) {
                this.C.setVolume(0.0f, 0.0f);
                aVar = this.f10496a;
                str = "setOutputMute, true";
            } else {
                MediaPlayer mediaPlayer = this.C;
                float f2 = this.j;
                mediaPlayer.setVolume(f2, f2);
                aVar = this.f10496a;
                str = "setOutputMute, false, mAudioGain: " + this.j;
            }
            aVar.c(str);
        } catch (Exception e) {
            this.f10496a.c("setOutputMute, Exception: " + e.toString());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z, long j, long j2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10496a;
        aVar.c("setLoopback, : " + z + ", loopStart: " + j + ", loopEnd: " + j2);
        if (j >= 0) {
            long j3 = this.T;
            if (j <= j3 && j2 <= j3) {
                this.c = z;
                this.d = j;
                this.e = j2;
                this.C.setLooping(z);
                return;
            }
        }
        throw new IllegalArgumentException("position error, must more than 0 and less than duration");
    }

    private boolean a(EnumC0218e enumC0218e) {
        return enumC0218e == EnumC0218e.PREPARED || enumC0218e == EnumC0218e.STARTED || enumC0218e == EnumC0218e.PAUSED;
    }
}
