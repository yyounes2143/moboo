package com.tencent.thumbplayer.tcmedia.adapter;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.adapter.c;
import com.tencent.thumbplayer.tcmedia.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPDrmInfo;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerState;
import com.tencent.thumbplayer.tcmedia.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPVideoInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.f.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class d implements com.tencent.thumbplayer.tcmedia.adapter.a, c.k {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.tcmedia.e.b f10535a;
    private com.tencent.thumbplayer.tcmedia.e.a b;
    private Context c;
    private com.tencent.thumbplayer.tcmedia.adapter.a.b d;
    private TPPlayerState e;
    private boolean f;
    private int g = 0;
    private g h;
    private a i;
    private c j;
    private i k;
    private com.tencent.thumbplayer.tcmedia.adapter.strategy.a l;
    private b m;
    private int n;
    private com.tencent.thumbplayer.tcmedia.f.a o;

    /* loaded from: classes6.dex */
    public class a implements c.a, c.b, c.InterfaceC0220c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.l, c.m, c.n, c.o, c.p {
        private a() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.a(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.b(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.j
        public void c() {
            d.this.z();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.d
        public void d() {
            d.this.A();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i) {
            return d.this.a(str, i);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.InterfaceC0220c
        public void b() {
            d.this.y();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.i
        public void a() {
            d.this.w();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.f
        public void a(int i, int i2, long j, long j2) {
            d.this.a(i, i2, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            d.this.a(i, j, j2, obj);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.p
        public void a(long j, long j2) {
            d.this.a(j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            d.this.a(tPAudioFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            d.this.a(tPDrmInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            d.this.a(tPPlayerDetailInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            d.this.a(tPSubtitleFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            d.this.a(tPVideoFrameBuffer);
        }
    }

    public d(Context context, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        com.tencent.thumbplayer.tcmedia.e.b bVar2 = new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPPlayerAdapter");
        this.f10535a = bVar2;
        this.b = new com.tencent.thumbplayer.tcmedia.e.a(bVar2);
        this.c = context;
        TPPlayerState tPPlayerState = new TPPlayerState();
        this.e = tPPlayerState;
        tPPlayerState.setOnPlayerStateChangeListener(this);
        this.j = new c();
        this.i = new a();
        this.h = new g(this.f10535a.a());
        this.k = new i(this.e);
        this.m = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar;
        if (this.k.a(11) && (bVar = this.d) != null) {
            long n = bVar.n();
            b bVar2 = this.m;
            if (bVar2 != null) {
                bVar2.g(n);
            }
        }
    }

    private int B() {
        if (this.l == null) {
            this.l = a(this.j);
        }
        return this.l.a(this.m);
    }

    private boolean C() {
        int i = this.n;
        if (i != 2 && i != 3) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        this.h.a(1000, this.n, 0L, (Object) null);
        if (this.f) {
            if (this.e.innerPlayState() != 3) {
                this.b.d("handleOnPrepared, invalid state, mIsRetrying.");
                return;
            }
        } else if (!this.k.b(1)) {
            this.b.c("handleOnPrepared, invalid state");
            return;
        }
        x();
        a(this.d);
        if (this.f) {
            this.f = false;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.b;
            aVar.c("handleOnPrepared, mIsRetrying, recoverState, state:" + this.e.state());
            int state = this.e.state();
            this.e.changeState(4);
            if (this.e.lastState() == 3) {
                this.h.a();
            }
            if (this.g == 1) {
                this.h.a(1014, 0L, 0L, (Object) null);
            } else {
                this.h.a(201, 0L, 0L, (Object) null);
            }
            this.g = 0;
            d(state);
            return;
        }
        this.e.setInnerPlayStateState(4);
        this.e.changeState(4);
        this.h.a();
    }

    private void x() {
        if (C()) {
            b a2 = b.a(c(0));
            this.m = a2;
            a2.e((int) this.d.b(204));
            this.m.a((int) this.d.b(203));
            this.m.c((int) this.d.b(102));
            this.m.g((int) this.d.b(201));
            this.m.b((int) this.d.b(210));
        }
        if (this.m == null) {
            this.m = new b();
        }
        this.m.g(this.d.n());
        TPOptionalParam b = this.j.b(100);
        if (b != null) {
            this.m.f(b.getParamLong().value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (!this.k.b(2)) {
            this.b.c("handleOnComplete, invalid state");
            return;
        }
        this.e.changeState(7);
        this.h.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (!this.k.b(5)) {
            return;
        }
        this.h.c();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public int a() {
        b bVar = this.m;
        if (bVar != null) {
            return bVar.m();
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public int b() {
        return this.e.state();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPDynamicStatisticParams c(boolean z) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar == null) {
            return null;
        }
        return bVar.c(z);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public int d() {
        return this.n;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public b e() {
        return this.m;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void f() {
        c(this.n, 2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void g() {
        if (this.k.a(1)) {
            if (this.j.f()) {
                com.tencent.thumbplayer.tcmedia.adapter.a.b a2 = a(B(), this.f10535a);
                this.d = a2;
                if (a2 != null) {
                    this.e.setInnerPlayStateState(3);
                    this.e.changeState(3);
                    this.d.g();
                    return;
                }
                throw new RuntimeException("error , create player failed");
            }
            throw new IOException("error , prepare , data source invalid");
        }
        throw new IllegalStateException("error , prepare , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void h() {
        if (this.k.a(1)) {
            if (this.j.f()) {
                com.tencent.thumbplayer.tcmedia.adapter.a.b a2 = a(B(), this.f10535a);
                this.d = a2;
                if (a2 != null) {
                    this.e.setInnerPlayStateState(3);
                    this.e.changeState(3);
                    this.d.h();
                    return;
                }
                throw new RuntimeException("error , create player failed");
            }
            throw new IllegalStateException("error , prepare , state invalid , data source invalid");
        }
        throw new IllegalStateException("error , prepare , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void i() {
        if (this.k.a(5)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                try {
                    bVar.i();
                    this.e.changeState(5);
                    return;
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , start ,state invalid");
                }
            }
            throw new IllegalStateException("error , start , player is null");
        }
        throw new IllegalStateException("error , start , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void j() {
        if (this.k.a(6)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                if (this.f) {
                    this.e.changeState(6);
                    return;
                }
                try {
                    bVar.j();
                    this.e.changeState(6);
                    return;
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , pause ,state invalid");
                }
            }
            throw new IllegalStateException("error , pause , player is null");
        }
        throw new IllegalStateException("error , pause , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void k() {
        if (this.k.a(7)) {
            if (this.d != null) {
                try {
                    try {
                        this.e.changeState(8);
                        this.d.k();
                        return;
                    } catch (IllegalStateException unused) {
                        throw new IllegalStateException("error , stop ,state invalid");
                    }
                } finally {
                    this.e.changeState(9);
                }
            }
            throw new IllegalStateException("error , stop , player is null");
        }
        throw new IllegalStateException("error , stop , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.b;
        aVar.c("reset, current state :" + this.e);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.l();
            this.d.m();
            this.d = null;
        }
        this.j.a();
        this.m.o();
        this.l = null;
        this.f = false;
        this.e.changeState(1);
        this.e.setLastState(1);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void m() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.b;
        aVar.c("release, current state :" + this.e);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.m();
            this.d = null;
        }
        this.j.a();
        this.h.e();
        this.l = null;
        this.f = false;
        this.e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long n() {
        b bVar = this.m;
        if (bVar != null && bVar.k() > 0) {
            return this.m.k();
        }
        if (!this.k.a(11)) {
            return 0L;
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
        if (bVar2 == null) {
            this.b.d("getDurationMs, mPlayerBase = null, return 0!");
            return 0L;
        }
        long n = bVar2.n();
        b bVar3 = this.m;
        if (bVar3 != null) {
            bVar3.g(n);
        }
        return n;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long o() {
        if (!this.k.a(12)) {
            b bVar = this.m;
            if (bVar == null) {
                return 0L;
            }
            return bVar.i();
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
        if (bVar2 == null) {
            this.b.d("getCurrentPositionMs, mPlayerBase = null, return 0!");
            return 0L;
        }
        long o = bVar2.o();
        b bVar3 = this.m;
        if (bVar3 != null) {
            bVar3.f(o);
        }
        return o;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long p() {
        if (!this.k.a(12)) {
            return 0L;
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar == null) {
            this.b.d("getBufferedDurationMs, mPlayerBase = null, return 0!");
            return 0L;
        }
        long p = bVar.p();
        b bVar2 = this.m;
        if (bVar2 != null) {
            bVar2.h(p);
        }
        return p;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.tcmedia.e.a aVar;
        String str;
        b bVar = this.m;
        if (bVar != null && bVar.a() > 0) {
            return (int) this.m.a();
        }
        if (!this.k.a(13)) {
            aVar = this.b;
            str = "getVideoWidth, state error!";
        } else {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
            if (bVar2 == null) {
                aVar = this.b;
                str = "getVideoWidth, mPlayerBase = null, return 0!";
            } else {
                int q = bVar2.q();
                b bVar3 = this.m;
                if (bVar3 != null) {
                    bVar3.a(q);
                }
                return q;
            }
        }
        aVar.d(str);
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int r() {
        com.tencent.thumbplayer.tcmedia.e.a aVar;
        String str;
        b bVar = this.m;
        if (bVar != null && bVar.b() > 0) {
            return (int) this.m.b();
        }
        if (!this.k.a(13)) {
            aVar = this.b;
            str = "getVideoHeight, state error!";
        } else {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
            if (bVar2 == null) {
                aVar = this.b;
                str = "getVideoHeight, mPlayerBase = null, return 0!";
            } else {
                int r = bVar2.r();
                b bVar3 = this.m;
                if (bVar3 != null) {
                    bVar3.b(r);
                }
                return r;
            }
        }
        aVar.d(str);
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPTrackInfo[] s() {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.s();
        }
        return (TPTrackInfo[]) this.j.b().toArray(new TPTrackInfo[0]);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPProgramInfo[] t() {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null && bVar.t() != null) {
            return this.d.t();
        }
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long[] u() {
        if (!this.k.a(19)) {
            b bVar = this.m;
            if (bVar != null) {
                return bVar.j();
            }
        } else {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
            if (bVar2 == null) {
                this.b.d("getDemuxerOffsetInFile, mPlayerBase = null, return 0!");
            } else {
                long[] u = bVar2.u();
                b bVar3 = this.m;
                if (bVar3 != null) {
                    bVar3.a(u);
                }
                return u;
            }
        }
        return new long[]{-1, -1};
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPGeneralPlayFlowParams v() {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar == null) {
            return null;
        }
        return bVar.v();
    }

    private com.tencent.thumbplayer.tcmedia.adapter.a.b a(int i, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2;
        Context context;
        try {
        } catch (Exception e) {
            this.b.c("to create Player," + e.toString());
        }
        if (i == 1) {
            this.b.c("to create androidPlayer");
            bVar2 = com.tencent.thumbplayer.tcmedia.adapter.a.d.a(this.c, this.j.p(), bVar);
        } else {
            if (i == 2) {
                this.b.c("to create thumbPlayer");
                context = this.c;
            } else if (i == 3) {
                this.b.c("to create thumbPlayer software dec");
                context = this.c;
            } else {
                this.b.c("to create no Player");
                bVar2 = null;
            }
            bVar2 = com.tencent.thumbplayer.tcmedia.adapter.a.d.a(context, bVar);
        }
        if (bVar2 == null) {
            this.b.c("play is null!");
            return null;
        }
        this.n = i;
        b(bVar2);
        return bVar2;
    }

    private void d(int i) {
        if (i != 5) {
            return;
        }
        try {
            this.d.i();
            this.e.changeState(5);
        } catch (IllegalStateException e) {
            this.b.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long b(int i) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.b(i);
        }
        this.b.d("getPropertyLong, mPlayerBase = null, return !");
        return -1L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public String c(int i) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.c(i);
        }
        this.b.d("getPropertyString, mPlayerBase = null, return !");
        return "";
    }

    private com.tencent.thumbplayer.tcmedia.adapter.strategy.a a(c cVar) {
        com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a aVar;
        try {
            aVar = new com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a(cVar);
        } catch (IllegalArgumentException unused) {
            aVar = new com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a(null);
        }
        return com.tencent.thumbplayer.tcmedia.adapter.strategy.e.a(aVar);
    }

    private void c(int i, int i2) {
        if (i2 == 1) {
            this.h.a(1013, i, 0L, (Object) null);
        } else {
            this.h.a(200, 0L, 0L, (Object) null);
        }
        this.g = i2;
        TPPlayerState tPPlayerState = this.e;
        tPPlayerState.setLastState(tPPlayerState.state());
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            long o = bVar.o();
            this.b.c("switchPlayer, current position:".concat(String.valueOf(o)));
            this.m.f(o);
            this.m.h(this.d.p());
            this.d.l();
            this.d.m();
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b a2 = a(i, this.f10535a);
        this.d = a2;
        if (a2 == null) {
            throw new RuntimeException("error , create player failed");
        }
        this.f = true;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.b;
        aVar.c("switch player to type:" + this.n);
        if (this.m != null) {
            this.d.a(new TPOptionalParam().buildLong(100, this.m.i()));
        }
        this.e.setInnerPlayStateState(3);
        this.d.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.k.b(7)) {
            return this.h.b(tPPostProcessFrameBuffer);
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void c(int i, long j) {
        if (!this.k.a(18)) {
            throw new IllegalStateException("error : selectProgram , state invalid");
        }
        TPProgramInfo[] t = t();
        if (t == null) {
            t = new TPProgramInfo[0];
        }
        if (i < 0 || i > t.length - 1) {
            throw new IllegalArgumentException("error : program index not found");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.c(i, j);
        }
        this.j.a(t[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.k.b(7)) {
            return this.h.a(tPPostProcessFrameBuffer);
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(float f) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setPlaySpeedRatio , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.b(f);
        } else {
            this.b.c("setPlaySpeedRatio, mPlayerBase = null!");
        }
        this.j.b(f);
        com.tencent.thumbplayer.tcmedia.f.a aVar = this.o;
        if (aVar != null) {
            try {
                aVar.a(f);
            } catch (Exception unused) {
                this.b.d("setPlaySpeedRatio, rich media processor setPlaySpeedRatio err.");
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.k
    public void b(int i, int i2) {
        this.h.b(i, i2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public boolean c() {
        TPPlayerState tPPlayerState = this.e;
        return tPPlayerState != null && tPPlayerState.state() == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPRemoteSdpInfo a(String str, int i) {
        return this.h.a(str, i);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(int i, long j) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error : deselectTrack , state invalid");
        }
        TPTrackInfo[] s = s();
        if (s == null) {
            this.b.e("fatal err, tpTrackInfos is null");
        } else if (i < 0 || i > s.length - 1) {
            throw new IllegalArgumentException("error : track not found");
        } else {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.b(i, j);
            }
            this.j.b(i, j, s[i]);
        }
    }

    private void b(com.tencent.thumbplayer.tcmedia.adapter.a.b bVar) {
        String a2;
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2;
        bVar.a((c.h) this.i);
        bVar.a((c.i) this.i);
        bVar.a((c.InterfaceC0220c) this.i);
        bVar.a((c.f) this.i);
        bVar.a((c.j) this.i);
        bVar.a((c.p) this.i);
        bVar.a((c.l) this.i);
        bVar.a((c.m) this.i);
        bVar.a((c.e) this.i);
        bVar.a((c.g) this.i);
        bVar.a((c.d) this.i);
        if (C()) {
            bVar.a((c.n) this.i);
            bVar.a((c.a) this.i);
            bVar.a((c.o) this.i);
            bVar.a((c.b) this.i);
        }
        if (1 == this.j.e().g()) {
            bVar.a(this.j.e().c());
        } else if (4 == this.j.e().g()) {
            bVar.a(this.j.e().d());
        } else if (3 == this.j.e().g()) {
            int i = this.n;
            if (i == 2) {
                a2 = this.j.e().f().b();
            } else if (i == 1) {
                a2 = this.j.e().f().a();
            }
            bVar.a(a2, this.j.e().b());
        } else if (2 == this.j.e().g()) {
            bVar.a(this.j.e().e());
        }
        for (TPOptionalParam tPOptionalParam : this.j.o()) {
            bVar.a(tPOptionalParam);
        }
        for (int i2 = 0; i2 < this.j.b().size(); i2++) {
            TPTrackInfo tPTrackInfo = this.j.b().get(i2);
            int i3 = tPTrackInfo.trackType;
            if (i3 == 3) {
                Iterator<c.d> it = this.j.m().iterator();
                while (true) {
                    if (it.hasNext()) {
                        c.d next = it.next();
                        if (!TextUtils.isEmpty(next.c) && next.c.equals(tPTrackInfo.name)) {
                            bVar.a(next.f10534a, next.d, next.b, next.c);
                            break;
                        }
                    }
                }
            } else if (i3 == 2) {
                Iterator<c.a> it2 = this.j.n().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        c.a next2 = it2.next();
                        if (!TextUtils.isEmpty(next2.b) && next2.b.equals(tPTrackInfo.name)) {
                            bVar.a(next2.f10531a, next2.d, next2.b, next2.c);
                            break;
                        }
                    }
                }
            }
        }
        ArrayList<c.C0221c> c = this.j.c();
        int size = c.size();
        int i4 = 0;
        while (i4 < size) {
            c.C0221c c0221c = c.get(i4);
            i4++;
            c.C0221c c0221c2 = c0221c;
            if (c0221c2.c.isSelected) {
                TPTrackInfo[] s = bVar.s();
                if (s == null) {
                    this.b.e("playerTrackInfoList is null.");
                } else {
                    for (int i5 = 0; i5 < s.length; i5++) {
                        if (c0221c2.c.name.equals(s[i5].name)) {
                            bVar.a(i5, c0221c2.b);
                        }
                    }
                }
            }
        }
        if (this.j.k() != null) {
            bVar2 = bVar;
            bVar2.a(this.j.k().f10532a, this.j.k().b, this.j.k().c);
        } else {
            bVar2 = bVar;
        }
        bVar2.a(this.j.g());
        if (this.j.h() != 0.0f) {
            bVar2.a(this.j.h());
        }
        if (this.j.j() != 0.0f) {
            bVar2.b(this.j.j());
        }
        if (!"".equals(this.j.i())) {
            bVar2.a(this.j.i());
        }
        if (this.j.d() instanceof SurfaceHolder) {
            bVar2.a((SurfaceHolder) this.j.d());
        } else if (this.j.d() instanceof Surface) {
            bVar2.a((Surface) this.j.d());
        }
        bVar2.a(new TPOptionalParam().buildQueueInt(204, this.l.a()));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(float f) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setAudioGainRatio , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(f);
        } else {
            this.b.c("setAudioGainRatio, mPlayerBase = null!");
        }
        this.j.a(f);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i) {
        if (!this.k.a(9)) {
            throw new IllegalStateException("error , seek to , state invalid , current state :" + this.e);
        } else if (this.d == null) {
            this.b.d("seekTo, mPlayerBase = null!");
        } else {
            if (this.e.state() == 7) {
                this.e.changeState(5);
            }
            this.d.a(i);
            com.tencent.thumbplayer.tcmedia.f.a aVar = this.o;
            if (aVar != null) {
                try {
                    aVar.a(i);
                } catch (Exception unused) {
                    this.b.d("seekTo, rich media processor seek err.");
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        if (!this.k.a(9)) {
            throw new IllegalStateException("error , seek to , state invalid , current state :" + this.e);
        } else if (this.d == null) {
            this.b.d("seekTo, mPlayerBase = null!");
        } else {
            if (this.e.state() == 7) {
                this.e.changeState(5);
            }
            this.d.a(i, i2);
            com.tencent.thumbplayer.tcmedia.f.a aVar = this.o;
            if (aVar != null) {
                try {
                    aVar.a(i);
                } catch (Exception unused) {
                    this.b.d("seekTo, rich media processor seek err.");
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void b(TPVideoInfo tPVideoInfo) {
        if (!this.k.a(3)) {
            this.b.e("updateVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.m.b(tPVideoInfo.getHeight());
            this.m.a(tPVideoInfo.getWidth());
            this.m.c(tPVideoInfo.getDefinition());
            this.m.g(tPVideoInfo.getVideoCodecId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, long j, long j2) {
        if (this.k.b(4)) {
            com.tencent.thumbplayer.tcmedia.adapter.strategy.a aVar = this.l;
            b bVar = this.m;
            int a2 = aVar.a(bVar, new com.tencent.thumbplayer.tcmedia.adapter.strategy.a.b(this.n, i, i2, bVar.d()));
            if (a2 == 0) {
                this.e.changeState(10);
                this.h.a(i, i2, j, j2);
                return;
            }
            try {
                c(a2, 1);
            } catch (IOException e) {
                this.b.a(e);
                this.e.changeState(10);
                this.h.a(i, i2, j, j2);
            } catch (IllegalStateException e2) {
                this.b.a(e2);
                this.e.changeState(10);
                this.h.a(i, i2, j, j2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(boolean z) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.b(z);
        } else {
            this.b.c("setLoopback, mPlayerBase = null!");
        }
        this.j.b(z);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, long j) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error : selectTrack , state invalid");
        }
        TPTrackInfo[] s = s();
        if (s == null) {
            this.b.e("fatal err, tpTrackInfos is null");
        } else if (i < 0 || i > s.length - 1) {
            throw new IllegalArgumentException("error : track not found");
        } else {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(i, j);
            }
            this.j.a(i, j, s[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, Object obj) {
        b bVar;
        if (this.f) {
            this.b.c("handleOnInfo, mIsReopening");
            return;
        }
        if (i == 152 && (bVar = this.m) != null) {
            bVar.f(((int) j) + 1);
        }
        this.h.a(i, j, j2, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        if (!this.k.b(6)) {
            this.b.c("handleOnVideoSizeChange, invalid state");
            return;
        }
        this.m.b(j2);
        this.m.a(j);
        this.h.a(j, j2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (!this.k.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (assetFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , afd invalid");
        }
        this.j.a(assetFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (!this.k.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , pfd invalid");
        }
        this.j.a(parcelFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surface);
        }
        this.j.a(surface);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surfaceHolder);
        }
        this.j.a(surfaceHolder);
    }

    private void a(com.tencent.thumbplayer.tcmedia.adapter.a.b bVar) {
        TPProgramInfo l;
        TPProgramInfo tPProgramInfo;
        TPProgramInfo[] t = t();
        if (t == null || (l = this.j.l()) == null) {
            return;
        }
        for (int i = 0; i < t.length; i++) {
            if (!TextUtils.isEmpty(l.url) && (tPProgramInfo = t[i]) != null && l.url.equals(tPProgramInfo.url)) {
                bVar.c(i, -1L);
                return;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.a aVar) {
        this.h.a(aVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.b bVar) {
        this.h.a(bVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.InterfaceC0220c interfaceC0220c) {
        this.h.a(interfaceC0220c);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.d dVar) {
        this.h.a(dVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.e eVar) {
        this.h.a(eVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.f fVar) {
        this.h.a(fVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.g gVar) {
        this.h.a(gVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.h hVar) {
        this.h.a(hVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.i iVar) {
        this.h.a(iVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.j jVar) {
        this.h.a(jVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(c.k kVar) {
        this.h.a(kVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.l lVar) {
        this.h.a(lVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.m mVar) {
        this.h.a(mVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.n nVar) {
        this.h.a(nVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.o oVar) {
        this.h.a(oVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.p pVar) {
        this.h.a(pVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar) {
        a(eVar, (Map<String, String>) null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar, int i, long j) {
        if (!this.k.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
        }
        this.j.a(eVar, (Map<String, String>) null);
        if (this.d == null) {
            this.b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        int i2 = this.n;
        this.d.a(i2 == 2 ? eVar.b() : i2 == 1 ? eVar.a() : "", i, j);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar, Map<String, String> map) {
        if (!this.k.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        this.j.a(eVar, map);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar, Map<String, String> map, int i, long j) {
        if (!this.k.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
        }
        this.j.a(eVar, map);
        if (this.d == null) {
            this.b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        int i2 = this.n;
        this.d.a(i2 == 2 ? eVar.b() : i2 == 1 ? eVar.a() : "", map, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.k.b(7)) {
            this.h.a(tPAudioFrameBuffer);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
            return;
        }
        throw new IllegalStateException("error , no player for capture :" + this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPDrmInfo tPDrmInfo) {
        this.h.a(tPDrmInfo);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("setPlayerOptionalParam , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPOptionalParam);
        }
        this.j.a(tPOptionalParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.h.a(tPPlayerDetailInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (this.k.b(7)) {
            this.h.a(tPSubtitleData);
        } else {
            this.b.c("handleOnSubtitleData, invalid state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        if (this.k.b(7)) {
            this.h.a(tPSubtitleFrameBuffer);
        } else {
            this.b.c("handleOnSubtitleFrameOut, invalid state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (this.k.b(7)) {
            this.h.a(tPVideoFrameBuffer);
        } else {
            this.b.c("handleOnVideoFrameOut, invalid state");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (!this.k.a(2)) {
            this.b.e("setVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.m.b(tPVideoInfo.getHeight());
            this.m.a(tPVideoInfo.getWidth());
            this.m.c(tPVideoInfo.getDefinition());
            this.m.g(tPVideoInfo.getVideoCodecId());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        if (!this.k.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (iTPMediaAsset == null) {
            throw new IllegalArgumentException("error : setDataSource , mediaAsset invalid");
        }
        this.j.a(iTPMediaAsset);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        if (!this.k.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
        }
        this.j.a(iTPMediaAsset);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(iTPMediaAsset, i, j);
        } else {
            this.b.d("switchDefinition, mPlayerBase = null!");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a
    public void a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        if (iTPRichMediaSynchronizer == null) {
            com.tencent.thumbplayer.tcmedia.f.a aVar = this.o;
            if (aVar != null) {
                aVar.a((a.InterfaceC0226a) null);
            }
            this.o = null;
        } else if (iTPRichMediaSynchronizer instanceof com.tencent.thumbplayer.tcmedia.f.a) {
            com.tencent.thumbplayer.tcmedia.f.a aVar2 = (com.tencent.thumbplayer.tcmedia.f.a) iTPRichMediaSynchronizer;
            this.o = aVar2;
            aVar2.a(new a.InterfaceC0226a() { // from class: com.tencent.thumbplayer.tcmedia.adapter.d.1
                @Override // com.tencent.thumbplayer.tcmedia.f.a.InterfaceC0226a
                public long a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer2) {
                    return d.this.o();
                }
            });
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.f10535a.a(bVar, "TPPlayerAdapter");
        this.b.a(this.f10535a);
        this.h.a(this.f10535a.a());
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(this.f10535a);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setAudioNormalizeVolumeParams , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(str);
        } else {
            this.b.c("setAudioGainRatio, mPlayerBase = null!");
        }
        this.j.a(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, int i, long j) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error : addSubtitleSource, state invalid");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(str, map, str2, str3);
        }
        this.j.a(str, map, str2, str3);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error : addAudioTrackSource, state invalid");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(str, map, str2, list);
        }
        this.j.a(str, map, str2, list);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setOutputMute , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(z);
        } else {
            this.b.c("setOutputMute, mPlayerBase = null!");
        }
        this.j.a(z);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z, long j, long j2) {
        if (!this.k.a(3)) {
            throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.e);
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(z, j, j2);
        } else {
            this.b.c("setLoopback, mPlayerBase = null!");
        }
        this.j.a(z, j, j2);
    }
}
