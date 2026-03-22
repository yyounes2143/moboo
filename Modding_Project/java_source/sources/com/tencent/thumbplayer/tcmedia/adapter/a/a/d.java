package com.tencent.thumbplayer.tcmedia.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.adapter.c;
import com.tencent.thumbplayer.tcmedia.adapter.g;
import com.tencent.thumbplayer.tcmedia.adapter.i;
import com.tencent.thumbplayer.tcmedia.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerState;
import com.tencent.thumbplayer.tcmedia.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.tcmedia.b.h;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class d implements com.tencent.thumbplayer.tcmedia.adapter.a.b {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.tcmedia.e.a f10494a;
    private com.tencent.thumbplayer.tcmedia.e.b b;
    private Context c;
    private com.tencent.thumbplayer.tcmedia.adapter.a.b d;
    private TPPlayerState e;
    private g f;
    private a g;
    private com.tencent.thumbplayer.tcmedia.adapter.c h;
    private i i;
    private com.tencent.thumbplayer.tcmedia.adapter.b j;
    private List<ITPMediaTrackClip> k;
    private int l = 0;
    private boolean m;
    private boolean n;
    private LinkedList<Long> o;

    /* loaded from: classes6.dex */
    public class a implements c.a, c.b, c.InterfaceC0220c, c.f, c.h, c.i, c.j, c.l, c.n, c.o, c.p {
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
            d.this.d();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.i
        public void a() {
            d.this.a();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.InterfaceC0220c
        public void b() {
            d.this.b();
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

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            d.this.a(tPVideoFrameBuffer);
        }
    }

    public d(Context context, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        com.tencent.thumbplayer.tcmedia.e.b bVar2 = new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPSystemClipPlayer");
        this.b = bVar2;
        this.f10494a = new com.tencent.thumbplayer.tcmedia.e.a(bVar2);
        this.c = context;
        this.e = new TPPlayerState();
        this.h = new com.tencent.thumbplayer.tcmedia.adapter.c();
        this.g = new a();
        this.f = new g(this.f10494a.b());
        this.i = new i(this.e);
        this.k = new ArrayList();
    }

    private ITPMediaTrackClip c() {
        return this.k.get(this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.i.b(5)) {
            if (this.e.is(7)) {
                i();
            }
            this.f.c();
        }
    }

    private com.tencent.thumbplayer.tcmedia.adapter.a.b e() {
        e eVar = new e(this.c, this.b);
        if (this.j == null) {
            this.j = new com.tencent.thumbplayer.tcmedia.adapter.b();
        }
        a(eVar);
        return eVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long b(int i) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.b(i);
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void g() {
        if (!this.i.a(1)) {
            return;
        }
        if (this.h.f()) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b e = e();
            this.d = e;
            if (e != null) {
                this.e.changeState(3);
                this.d.g();
                return;
            }
            throw new RuntimeException("error , create player failed");
        }
        throw new IOException("error , prepare , data source invalid");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void h() {
        if (!this.i.a(1)) {
            return;
        }
        if (this.h.f()) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b e = e();
            this.d = e;
            if (e != null) {
                this.e.changeState(3);
                this.d.h();
                return;
            }
            throw new RuntimeException("error , create player failed");
        }
        throw new IllegalStateException("error , prepare , state invalid , data source invalid");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void i() {
        if (!this.i.a(5)) {
            return;
        }
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

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void j() {
        if (!this.i.a(6)) {
            return;
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
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

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void k() {
        if (!this.i.a(7)) {
            return;
        }
        if (this.d != null) {
            try {
                try {
                    this.e.changeState(8);
                    this.d.k();
                    return;
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , pause ,state invalid");
                }
            } finally {
                this.e.changeState(9);
            }
        }
        throw new IllegalStateException("error , stop , player is null");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10494a;
        aVar.c("reset, current state:" + this.e);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.l();
        }
        this.h.a();
        this.f.e();
        this.e.changeState(1);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void m() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10494a;
        aVar.c("release, current state:" + this.e);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.m();
            this.d = null;
        }
        this.h.a();
        this.f.e();
        this.e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long n() {
        long j = 0;
        for (ITPMediaTrackClip iTPMediaTrackClip : this.k) {
            j += iTPMediaTrackClip.getOriginalDurationMs();
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long o() {
        long j = 0;
        for (int i = 0; i < this.k.size() && i < this.l; i++) {
            j += this.k.get(i).getOriginalDurationMs();
        }
        if (!this.i.a(12)) {
            return j;
        }
        return j + this.d.o();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long p() {
        if (!this.i.a(15)) {
            com.tencent.thumbplayer.tcmedia.adapter.b bVar = this.j;
            if (bVar != null) {
                return bVar.l();
            }
            return 0L;
        }
        return this.d.p();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.tcmedia.adapter.b bVar = this.j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.a() <= 0) {
            if (!this.i.a(13)) {
                return 0;
            }
            this.j.a(this.d.q());
        }
        return (int) this.j.a();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int r() {
        com.tencent.thumbplayer.tcmedia.adapter.b bVar = this.j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.b() <= 0) {
            if (!this.i.a(13)) {
                return 0;
            }
            this.j.b(this.d.r());
        }
        return (int) this.j.b();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPTrackInfo[] s() {
        this.f10494a.e("getTrackInfo not supported.");
        return new TPTrackInfo[0];
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPProgramInfo[] t() {
        this.f10494a.e("getProgramInfo not supported.");
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

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.i.b(7)) {
            return this.f.a(tPPostProcessFrameBuffer);
        }
        return null;
    }

    private void d(int i) {
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            long j = i;
            if (this.k.get(i2).getStartPositionMs() <= j && j <= this.k.get(i2).getStartPositionMs() + this.k.get(i2).getOriginalDurationMs()) {
                try {
                    d(i2, j - this.k.get(i2).getStartPositionMs());
                } catch (IOException e) {
                    this.f10494a.c("selectClipPlayer:" + e.toString());
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPDynamicStatisticParams c(boolean z) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        g gVar = this.f;
        if (gVar != null) {
            gVar.a(152, this.l, 0L, (Object) null);
        }
        if (!this.m) {
            if (this.i.b(1)) {
                this.e.changeState(4);
                g gVar2 = this.f;
                if (gVar2 != null) {
                    gVar2.a();
                }
                b(this.d);
                return;
            }
            return;
        }
        i();
        if (!this.n || this.f == null || com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
            return;
        }
        Long poll = this.o.poll();
        if (poll != null) {
            this.f.a(3, poll.longValue(), 0L, (Object) null);
        }
        this.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.i.b(7)) {
            return this.f.b(tPPostProcessFrameBuffer);
        }
        return null;
    }

    private void d(int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10494a;
        aVar.b("switchPlayer: clipNo:" + i + "   startPostion:" + j);
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.m();
        }
        this.m = true;
        this.l = i;
        this.h.a(this.k.get(i).getFilePath(), this.k.get(this.l).getHttpHeader());
        com.tencent.thumbplayer.tcmedia.adapter.a.b e = e();
        this.d = e;
        if (e == null) {
            throw new RuntimeException("error , create player failed");
        }
        this.d.a(new TPOptionalParam().buildLong(100, j));
        this.d.g();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public String c(int i) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        return bVar != null ? bVar.c(i) : "";
    }

    private List<ITPMediaTrackClip> b(ITPMediaAsset iTPMediaAsset) {
        boolean z = iTPMediaAsset instanceof com.tencent.thumbplayer.tcmedia.b.e;
        if (z || (iTPMediaAsset instanceof com.tencent.thumbplayer.tcmedia.b.g) || (iTPMediaAsset instanceof h)) {
            List<ITPMediaTrackClip> arrayList = new ArrayList<>();
            if (z) {
                List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.tcmedia.b.e) iTPMediaAsset).getAllAVTracks();
                if (com.tencent.thumbplayer.tcmedia.utils.b.a(allAVTracks) || allAVTracks.get(0) == null) {
                    throw new IllegalStateException("empty av tracks when set data source!");
                }
                arrayList = allAVTracks.get(0).getAllTrackClips();
            } else if (iTPMediaAsset instanceof com.tencent.thumbplayer.tcmedia.b.g) {
                arrayList = ((com.tencent.thumbplayer.tcmedia.b.g) iTPMediaAsset).getAllTrackClips();
            } else {
                arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            }
            long j = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).setStartPositionMs(j);
                j += arrayList.get(i).getOriginalDurationMs();
            }
            return arrayList;
        }
        throw new IllegalStateException("system mediaPlayer : media asset is illegal source!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(float f) {
        if (this.i.a(3)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(f);
            }
            this.h.a(f);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void c(int i, long j) {
        this.f10494a.e("selectProgram not supported.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i.b(2)) {
            if (this.l >= this.k.size() - 1) {
                this.e.changeState(7);
                this.f.b();
                return;
            }
            try {
                d(this.l + 1, 0L);
            } catch (IOException e) {
                com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10494a;
                aVar.c("handleOnComplete:" + e.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i) {
        if (this.i.a(9)) {
            long j = i;
            if (j < c().getStartPositionMs() || j > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i);
            } else if (this.d != null) {
                this.f10494a.b("seek to:".concat(String.valueOf(i)));
                this.d.a((int) (j - c().getStartPositionMs()));
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        if (this.i.a(9)) {
            long j = i;
            if (j < c().getStartPositionMs() || j > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i);
            } else if (this.d != null) {
                this.f10494a.b("seek to:" + i + "/mode=" + i2);
                this.d.a((int) (j - c().getStartPositionMs()), i2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(float f) {
        if (this.i.a(3)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.b(f);
            }
            this.h.b(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, long j, long j2) {
        if (this.i.b(4)) {
            this.f.a(i, i2, j, j2);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(int i, long j) {
        this.f10494a.e("deselectTrack not supported.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, long j) {
        this.f10494a.e("selectTrack not supported.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, Object obj) {
        if (this.i.b(3)) {
            this.f.a(i, j, j2, obj);
        }
    }

    private void b(com.tencent.thumbplayer.tcmedia.adapter.a.b bVar) {
        TPTrackInfo[] s = s();
        if (s == null) {
            return;
        }
        for (int i = 0; i < s.length; i++) {
            if (s[i].equals(this.h.a(s[i].getTrackType()))) {
                bVar.a(i, -1L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        if (this.i.b(6)) {
            this.j.b(j2);
            this.j.a(j);
            this.f.a(j, j2);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(boolean z) {
        if (this.i.a(3)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.b(z);
            }
            this.h.b(z);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.h.a(assetFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.h.a(parcelFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(Surface surface) {
        if (!this.i.a(4)) {
            throw new IllegalStateException("setSurface , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surface);
        }
        this.h.a(surface);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        if (!this.i.a(4)) {
            throw new IllegalStateException("setSurfaceHolder , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surfaceHolder);
        }
        this.h.a(surfaceHolder);
    }

    private void a(com.tencent.thumbplayer.tcmedia.adapter.a.b bVar) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar2;
        if (1 == this.h.e().g()) {
            bVar.a(this.h.e().c());
        } else if (4 == this.h.e().g()) {
            bVar.a(this.h.e().d());
        }
        if (this.h.e().g() == 0) {
            bVar.a(this.h.e().a(), this.h.e().b());
        }
        for (TPOptionalParam tPOptionalParam : this.h.o()) {
            bVar.a(tPOptionalParam);
        }
        for (c.d dVar : this.h.m()) {
            bVar.a(dVar.f10534a, dVar.d, dVar.b, dVar.c);
        }
        for (c.a aVar : this.h.n()) {
            bVar.a(aVar.f10531a, aVar.d, aVar.b, aVar.c);
        }
        if (this.h.k() != null) {
            bVar2 = bVar;
            bVar2.a(this.h.k().f10532a, this.h.k().b, this.h.k().c);
        } else {
            bVar2 = bVar;
        }
        bVar2.a(this.h.g());
        if (this.h.h() != 0.0f) {
            bVar2.a(this.h.h());
        }
        if (this.h.j() != 0.0f) {
            bVar2.b(this.h.j());
        }
        if (this.h.d() instanceof SurfaceHolder) {
            bVar2.a((SurfaceHolder) this.h.d());
        } else if (this.h.d() instanceof Surface) {
            bVar2.a((Surface) this.h.d());
        }
        bVar2.a((c.h) this.g);
        bVar2.a((c.i) this.g);
        bVar2.a((c.InterfaceC0220c) this.g);
        bVar2.a((c.f) this.g);
        bVar2.a((c.j) this.g);
        bVar2.a((c.p) this.g);
        bVar2.a((c.l) this.g);
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
        this.f.a(interfaceC0220c);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.f fVar) {
        this.f.a(fVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.h hVar) {
        this.f.a(hVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.i iVar) {
        this.f.a(iVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.j jVar) {
        this.f.a(jVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.l lVar) {
        this.f.a(lVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.m mVar) {
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
        this.f.a(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.i.b(7)) {
            this.f.a(tPAudioFrameBuffer);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam.getKey() == 100) {
            int i = (int) tPOptionalParam.getParamLong().value;
            this.f10494a.b("start position:".concat(String.valueOf(i)));
            for (int i2 = 0; i2 < this.k.size(); i2++) {
                long j = i;
                if (this.k.get(i2).getStartPositionMs() <= j && j <= this.k.get(i2).getStartPositionMs() + this.k.get(i2).getOriginalDurationMs()) {
                    this.l = i2;
                    this.h.b(this.k.get(i2).getFilePath());
                    tPOptionalParam.getParamLong().value = j - this.k.get(i2).getStartPositionMs();
                }
            }
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPOptionalParam);
        }
        this.h.a(tPOptionalParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (this.i.b(7)) {
            this.f.a(tPSubtitleData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (this.i.b(7)) {
            this.f.a(tPVideoFrameBuffer);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        List<ITPMediaTrackClip> b = b(iTPMediaAsset);
        try {
            this.k = b;
            this.h.a(b.get(this.l).getFilePath(), this.k.get(this.l).getHttpHeader());
            this.e.changeState(2);
        } catch (Exception e) {
            this.f10494a.a(e);
            throw new IllegalStateException("exception when system clip player set data source!");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        List<ITPMediaTrackClip> b = b(iTPMediaAsset);
        if (com.tencent.thumbplayer.tcmedia.utils.b.a(b)) {
            throw new IllegalStateException("exception when switch Definition with clip mediaAsset empty source!");
        }
        long o = o();
        try {
            this.k = b;
            this.n = true;
            if (com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
                this.o = new LinkedList<>();
            }
            this.o.offer(Long.valueOf(j));
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.f10494a;
            aVar.c("try to switch definition with system clip player, current clipNo:" + this.l);
            d((int) o);
        } catch (Exception e) {
            this.f10494a.a(e);
            throw new IllegalStateException("exception when system clip player switch definition!");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.f10494a.a(new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPSystemClipPlayer"));
        g gVar = this.f;
        if (gVar == null || bVar == null) {
            return;
        }
        gVar.a(this.f10494a.a().a());
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.h.a(str, map);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        this.f10494a.e("addSubtitleSource not supported.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        this.f10494a.e("addAudioTrackSource not supported.");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z) {
        if (this.i.a(3)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(z);
            }
            this.h.a(z);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z, long j, long j2) {
        boolean z2;
        long j3;
        long j4;
        if (this.i.a(3)) {
            com.tencent.thumbplayer.tcmedia.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(z, j, j2);
                j4 = j2;
                j3 = j;
                z2 = z;
            } else {
                z2 = z;
                j3 = j;
                j4 = j2;
            }
            this.h.a(z2, j3, j4);
        }
    }
}
