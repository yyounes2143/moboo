package com.tencent.thumbplayer.tcmedia.adapter.a.b;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.adapter.a.b.c;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.adapter.g;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.tcmedia.api.TPAudioAttributes;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPDashFormat;
import com.tencent.thumbplayer.tcmedia.api.TPHlsTag;
import com.tencent.thumbplayer.tcmedia.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.core.common.TPAudioFrame;
import com.tencent.thumbplayer.tcmedia.core.common.TPDetailInfo;
import com.tencent.thumbplayer.tcmedia.core.common.TPGeneralError;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaTrackHlsTag;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.tcmedia.core.common.TPPostProcessFrame;
import com.tencent.thumbplayer.tcmedia.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.tcmedia.core.common.TPVideoFrame;
import com.tencent.thumbplayer.tcmedia.core.demuxer.ITPNativeDemuxerCallback;
import com.tencent.thumbplayer.tcmedia.core.demuxer.TPNativeRemoteSdpInfo;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerAudioFrameCallback;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerEventRecordCallback;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerPostProcessFrameCallback;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerSubtitleFrameCallback;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerVideoFrameCallback;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayer;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayerInitConfig;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayerProgramInfo;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes6.dex */
public class b implements com.tencent.thumbplayer.tcmedia.adapter.a.b {

    /* renamed from: a  reason: collision with root package name */
    static final Set<Integer> f10513a = new HashSet<Integer>() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.8
        {
            add(503);
        }
    };
    private TPNativePlayer b;
    private TPNativePlayerInitConfig c;
    private a d;
    private g e;
    private com.tencent.thumbplayer.tcmedia.adapter.a.a f;
    private com.tencent.thumbplayer.tcmedia.e.a g;
    private ITPNativePlayerMessageCallback h = new ITPNativePlayerMessageCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.1
        private void a(int i, Object obj) {
            if (b.this.d != null) {
                Message.obtain(b.this.d, i, obj).sendToTarget();
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback
        public void onASyncCallResult(int i, long j, int i2, int i3) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.g;
            aVar.b("onASyncCallResult, callType:" + i + ", opaque:" + j + ", errorType:" + i2 + ", errorCode:" + i3);
            C0219b c0219b = new C0219b();
            c0219b.f10522a = i;
            c0219b.b = j;
            c0219b.c = i2;
            c0219b.d = i3;
            a(1, c0219b);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback
        public void onDetailInfo(TPDetailInfo tPDetailInfo) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.g;
            aVar.b("onDetailInfo, type:" + tPDetailInfo.type + ", time:" + tPDetailInfo.timeSince1970Us);
            a(5, tPDetailInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback
        public void onError(int i, int i2) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.g;
            aVar.c("onError, msgType:" + i + ", errorCode:" + i2);
            c cVar = new c();
            cVar.f10523a = i;
            cVar.b = i2;
            a(4, cVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback
        public void onInfoLong(int i, long j, long j2) {
            if (i == 253) {
                com.tencent.thumbplayer.tcmedia.adapter.a.b.a.b(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, (int) j));
                return;
            }
            d dVar = new d();
            dVar.f10524a = i;
            dVar.b = j;
            dVar.c = j2;
            a(2, dVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback
        public void onInfoObject(int i, Object obj, long j, long j2) {
            if (!b.this.d(i)) {
                com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.g;
                aVar.b("onInfoObject, infoType:" + i + ", objParam:" + obj);
            }
            e eVar = new e();
            eVar.f10525a = i;
            eVar.b = obj;
            eVar.c = j;
            eVar.d = j2;
            a(3, eVar);
        }
    };
    private ITPNativePlayerAudioFrameCallback i = new ITPNativePlayerAudioFrameCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.2
        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerAudioFrameCallback
        public void onAudioFrame(TPAudioFrame tPAudioFrame, int i) {
            b.this.e.a(com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPAudioFrame));
        }
    };
    private ITPNativePlayerVideoFrameCallback j = new ITPNativePlayerVideoFrameCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.3
        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerVideoFrameCallback
        public void onVideoFrame(TPVideoFrame tPVideoFrame, int i) {
            b.this.e.a(com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPVideoFrame));
        }
    };
    private ITPNativePlayerSubtitleFrameCallback k = new ITPNativePlayerSubtitleFrameCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.4
        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerSubtitleFrameCallback
        public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame, int i) {
            b.this.e.a(com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPSubtitleFrame));
        }
    };
    private ITPNativePlayerPostProcessFrameCallback l = new ITPNativePlayerPostProcessFrameCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.5
        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerPostProcessFrameCallback
        public TPPostProcessFrame onPostProcessFrame(TPPostProcessFrame tPPostProcessFrame, int i) {
            TPPostProcessFrameBuffer b;
            TPPostProcessFrameBuffer a2 = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPPostProcessFrame);
            a2.eventFlag = i;
            int i2 = tPPostProcessFrame.mediaType;
            if (i2 == 0) {
                b = b.this.e.a(a2);
            } else if (i2 == 1) {
                b = b.this.e.b(a2);
            } else {
                return null;
            }
            return com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(b);
        }
    };
    private ITPNativeDemuxerCallback m = new ITPNativeDemuxerCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.6
        @Override // com.tencent.thumbplayer.tcmedia.core.demuxer.ITPNativeDemuxerCallback
        public void onDurationUpdated() {
            b.this.e.d();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.demuxer.ITPNativeDemuxerCallback
        public TPNativeRemoteSdpInfo onSdpExchange(String str, int i) {
            return com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(b.this.e.a(str, i));
        }
    };
    private ITPNativePlayerEventRecordCallback n = new ITPNativePlayerEventRecordCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.b.7
        @Override // com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerEventRecordCallback
        public void onDrmInfo(TPGeneralPlayFlowParams.TPPlayerDrmParams tPPlayerDrmParams) {
            if (tPPlayerDrmParams == null) {
                b.this.g.e("Native DrmInfo is null!");
                return;
            }
            b.this.g.c("onDrmInfo");
            b.this.e.a(com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPPlayerDrmParams));
        }
    };

    /* loaded from: classes6.dex */
    public class a extends Handler {
        private WeakReference<b> b;

        public a(Looper looper, b bVar) {
            super(looper);
            this.b = new WeakReference<>(bVar);
        }

        private void a(@TPCommonEnum.NativeErrorType int i, int i2) {
            b.this.e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapErrorType.class, i), i2, 0L, 0L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.b.get() == null) {
                b.this.g.e("mWeakRef is null");
                return;
            }
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.g;
                                aVar.d("message :" + message.what + "  not recognition");
                                return;
                            }
                            a((TPDetailInfo) message.obj);
                            return;
                        }
                        c cVar = (c) message.obj;
                        a(cVar.f10523a, cVar.b);
                        return;
                    }
                    a((e) message.obj);
                    return;
                }
                a((d) message.obj);
                return;
            }
            a((C0219b) message.obj);
        }

        private void a(C0219b c0219b) {
            int i = c0219b.f10522a;
            if (i == 1) {
                b.this.b();
            } else if (i == 2) {
                b.this.c();
            } else {
                b.this.a(c0219b);
            }
        }

        private void a(d dVar) {
            int i = dVar.f10524a;
            if (i == 154) {
                b.this.d();
            } else if (i != 250) {
                b.this.a(i, dVar);
            } else {
                b.this.a(dVar.b, dVar.c);
            }
        }

        private void a(e eVar) {
            int i = eVar.f10525a;
            if (i != 502) {
                b.this.a(i, eVar);
            } else if (eVar.b instanceof String) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = (String) eVar.b;
                tPSubtitleData.trackIndex = eVar.c;
                b.this.e.a(tPSubtitleData);
            }
        }

        private void a(TPDetailInfo tPDetailInfo) {
            b.this.e.a(com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPDetailInfo));
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.adapter.a.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0219b {
        @TPCommonEnum.NativeMsgInfo

        /* renamed from: a  reason: collision with root package name */
        int f10522a;
        long b;
        int c;
        int d;
    }

    /* loaded from: classes6.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int f10523a;
        int b;
    }

    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f10524a;
        long b;
        long c;
    }

    /* loaded from: classes6.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        int f10525a;
        Object b;
        long c;
        long d;
    }

    public b(Context context, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.g = new com.tencent.thumbplayer.tcmedia.e.a(bVar, "TPThumbPlayer");
        TPNativePlayer tPNativePlayer = new TPNativePlayer(context);
        this.b = tPNativePlayer;
        tPNativePlayer.setMessageCallback(this.h);
        this.b.setAudioFrameCallback(this.i);
        this.b.setVideoFrameCallback(this.j);
        this.b.setSubtitleFrameCallback(this.k);
        this.b.setPostProcessFrameCallback(this.l);
        this.b.setDemuxerCallback(this.m);
        this.b.setEventRecordCallback(this.n);
        this.c = new TPNativePlayerInitConfig();
        this.e = new g(this.g.b());
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.d = new a(myLooper, this);
            return;
        }
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            this.d = new a(mainLooper, this);
        } else {
            this.d = null;
        }
    }

    private TPProgramInfo a(TPNativePlayerProgramInfo tPNativePlayerProgramInfo) {
        if (tPNativePlayerProgramInfo != null) {
            TPProgramInfo tPProgramInfo = new TPProgramInfo();
            tPProgramInfo.url = tPNativePlayerProgramInfo.url;
            tPProgramInfo.bandwidth = tPNativePlayerProgramInfo.bandwidth;
            tPProgramInfo.resolution = tPNativePlayerProgramInfo.resolution;
            tPProgramInfo.programId = tPNativePlayerProgramInfo.programId;
            tPProgramInfo.actived = tPNativePlayerProgramInfo.actived;
            return tPProgramInfo;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.e.b();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long b(int i) {
        a();
        int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i);
        if (nativeIntValue < 0) {
            this.g.d("paramId not found, return -1");
            return -1L;
        }
        return this.b.getPropertyLong(nativeIntValue);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void g() {
        this.g.c("prepare");
        a();
        this.b.setInitConfig(this.c);
        if (this.b.prepare() == 0) {
            return;
        }
        throw new IllegalStateException("prepare failed!!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void h() {
        this.g.c("prepareAsync");
        a();
        this.b.setInitConfig(this.c);
        if (this.b.prepareAsync() == 0) {
            return;
        }
        throw new IllegalStateException("prepareAsync failed!!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void i() {
        this.g.c("start");
        a();
        if (this.b.start() == 0) {
            return;
        }
        throw new IllegalStateException("start failed!!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void j() {
        this.g.c(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        a();
        if (this.b.pause() == 0) {
            return;
        }
        throw new IllegalStateException("pause failed!!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void k() {
        this.g.c("stop");
        a();
        this.g.c("stop before");
        int stop = this.b.stop();
        this.g.c("stop after");
        if (stop == 0) {
            return;
        }
        throw new IllegalStateException("stop failed!!");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void l() {
        this.g.c("reset");
        if (this.b == null) {
            this.g.d("reset, player has released.");
            return;
        }
        this.g.c("reset before");
        this.b.reset();
        a aVar = this.d;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
        this.g.c("reset after");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void m() {
        this.g.c("release");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer != null) {
            tPNativePlayer.release();
            this.b = null;
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.a aVar = this.f;
        if (aVar != null) {
            aVar.a();
            this.f = null;
        }
        a aVar2 = this.d;
        if (aVar2 != null) {
            aVar2.removeCallbacksAndMessages(null);
            this.d = null;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long n() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getDurationMs();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long o() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getCurrentPositionMs();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long p() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getBufferedDurationMs() + this.b.getCurrentPositionMs();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int q() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return 0;
        }
        return tPNativePlayer.getVideoWidth();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public int r() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return 0;
        }
        return tPNativePlayer.getVideoHeight();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPTrackInfo[] s() {
        TPNativePlayer tPNativePlayer = this.b;
        TPTrackInfo[] tPTrackInfoArr = null;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return null;
        }
        TPMediaTrackInfo[] trackInfo = tPNativePlayer.getTrackInfo();
        if (trackInfo != null && trackInfo.length > 0) {
            tPTrackInfoArr = new TPTrackInfo[trackInfo.length];
            for (int i = 0; i < trackInfo.length; i++) {
                tPTrackInfoArr[i] = a(trackInfo[i]);
            }
        }
        return tPTrackInfoArr;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPProgramInfo[] t() {
        TPNativePlayer tPNativePlayer = this.b;
        TPProgramInfo[] tPProgramInfoArr = null;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return 0");
            return null;
        }
        TPNativePlayerProgramInfo[] programInfo = tPNativePlayer.getProgramInfo();
        if (programInfo != null && programInfo.length > 0) {
            tPProgramInfoArr = new TPProgramInfo[programInfo.length];
            for (int i = 0; i < programInfo.length; i++) {
                tPProgramInfoArr[i] = a(programInfo[i]);
            }
        }
        return tPProgramInfoArr;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public long[] u() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.c("player has released, return -1");
            return new long[]{-1, -1};
        }
        return tPNativePlayer.getDemuxerOffsetInFile();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPGeneralPlayFlowParams v() {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            return null;
        }
        return tPNativePlayer.getGeneralPlayFlowParams();
    }

    private TPTrackInfo a(TPMediaTrackInfo tPMediaTrackInfo) {
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = tPMediaTrackInfo.trackName;
        tPTrackInfo.trackType = tPMediaTrackInfo.trackType;
        int i = tPMediaTrackInfo.contianerType;
        tPTrackInfo.containerType = i;
        if (i == 1) {
            TPHlsTag tPHlsTag = tPTrackInfo.hlsTag;
            TPMediaTrackHlsTag tPMediaTrackHlsTag = tPMediaTrackInfo.hlsTag;
            tPHlsTag.name = tPMediaTrackHlsTag.name;
            tPHlsTag.bandwidth = tPMediaTrackHlsTag.bandwidth;
            tPHlsTag.resolution = tPMediaTrackHlsTag.resolution;
            tPHlsTag.framerate = tPMediaTrackHlsTag.framerate;
            tPHlsTag.codecs = tPMediaTrackHlsTag.codecs;
            tPHlsTag.groupId = tPMediaTrackHlsTag.groupId;
            String str = tPMediaTrackHlsTag.language;
            tPHlsTag.language = str;
            tPTrackInfo.language = str;
        } else if (i == 2) {
            TPDashFormat a2 = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPMediaTrackInfo.dashFormat);
            tPTrackInfo.dashFormat = a2;
            tPTrackInfo.language = a2.language;
        }
        tPTrackInfo.isExclusive = tPMediaTrackInfo.isExclusive;
        tPTrackInfo.isSelected = tPMediaTrackInfo.isSelected;
        tPTrackInfo.isInternal = tPMediaTrackInfo.isInternal;
        return tPTrackInfo;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public TPDynamicStatisticParams c(boolean z) {
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            return null;
        }
        return tPNativePlayer.getDynamicStatisticParams(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.e.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i) {
        return f10513a.contains(Integer.valueOf(i));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public String c(int i) {
        this.g.b("getPropertyString:".concat(String.valueOf(i)));
        a();
        try {
            int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i);
            if (nativeIntValue < 0) {
                com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
                aVar.d("getPropertyString, tpToNativeValue(TPNativeKeyMap.MapPropertyId.class," + i + "), return" + nativeIntValue);
                return "";
            }
            return this.b.getPropertyString(nativeIntValue);
        } catch (IllegalArgumentException unused) {
            this.g.d("paramId not found, return");
            return "";
        }
    }

    private void a() {
        if (this.b == null) {
            throw new IllegalStateException("player has release");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.e.c();
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(float f) {
        this.g.c("setPlaySpeedRatio:".concat(String.valueOf(f)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.setPlaybackRate(f);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(float f) {
        this.g.c("setAudioGainRatio:".concat(String.valueOf(f)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.setAudioVolume(f);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(int i, long j) {
        this.g.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.deselectTrackAsync(i, j);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void c(int i, long j) {
        this.g.c("selectProgram, programIndex:".concat(String.valueOf(i)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.selectProgramAsync(i, j);
        }
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.b() == 3) {
            this.b.setOptionLong(convertToNativeOptionalId.c(), optionalParamBoolean.value ? 1L : 0L, 0L);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i) {
        this.g.c("seekTo:".concat(String.valueOf(i)));
        a();
        if (this.b.seekToAsync(i, 1, 0L) == 0) {
            return;
        }
        throw new IllegalStateException("seek to position:" + i + " failed!!");
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping long is invalid, not found in array, id: ".concat(String.valueOf(i)));
            return;
        }
        int b = convertToNativeOptionalId.b();
        if (b == 1 || b == 3 || b == 4) {
            this.b.setOptionLong(convertToNativeOptionalId.c(), optionalParamLong.value, optionalParamLong.param1);
            return;
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("seekTo:" + i + " mode:" + i2);
        a();
        if (this.b.seekToAsync(i, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSeekMode.class, i2), 0L) == 0) {
            return;
        }
        throw new IllegalStateException("seek to position:" + i + " failed!!");
    }

    private void b(int i, TPOptionalParam.OptionalParamObject optionalParamObject) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId == null) {
            this.g.e("player optionaIdMapping object is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.c() == 1001) {
            this.b.setOptionObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((TPSubtitleRenderModel) optionalParamObject.objectValue));
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(int i, long j) {
        this.g.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.selectTrackAsync(i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@TPCommonEnum.NativeErrorType int i, d dVar) {
        Class cls;
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i);
        if (tPIntValue < 0) {
            this.g.d("msgType:" + i + ", cannot convert to thumbPlayer Info");
            return;
        }
        long j = dVar.b;
        long j2 = dVar.c;
        if (tPIntValue == 203) {
            cls = TPNativeKeyMap.MapAudioDecoderType.class;
        } else if (tPIntValue != 204) {
            this.g.d("unhandled thumbPlayerInfo=".concat(String.valueOf(tPIntValue)));
            this.e.a(tPIntValue, j, j2, (Object) null);
        } else {
            cls = TPNativeKeyMap.MapVideoDecoderType.class;
        }
        j = TPNativeKeyMapUtil.toTPIntValue(cls, (int) j);
        this.e.a(tPIntValue, j, j2, (Object) null);
    }

    private void b(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.b() == 2) {
            this.b.setOptionObject(convertToNativeOptionalId.c(), optionalParamString.value);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@TPCommonEnum.NativeMsgInfo int i, e eVar) {
        Object obj;
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i);
        if (tPIntValue < 0 || (obj = eVar.b) == null) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.d("msgType:" + i + ", cannot convert to thumbPlayer Info");
            return;
        }
        switch (tPIntValue) {
            case 500:
                obj = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((ITPNativePlayerMessageCallback.VideoCropInfo) obj);
                break;
            case 502:
                obj = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((ITPNativePlayerMessageCallback.MediaCodecInfo) obj);
                break;
            case 503:
                obj = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((ITPNativePlayerMessageCallback.VideoSeiInfo) obj);
                break;
            case 505:
                obj = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((ITPNativePlayerMessageCallback.MediaDrmInfo) obj);
                break;
            case 506:
                obj = (String) obj;
                this.g.b("TP_PLAYER_INFO_OBJECT_SUBTITLE_NOTE:".concat(String.valueOf(obj)));
                break;
        }
        this.e.a(tPIntValue, 0L, 0L, obj);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void b(boolean z) {
        this.g.c("setLoopback:".concat(String.valueOf(z)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.setLoopback(z, 0L, -1L);
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping boolean is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.b() == 3) {
            this.c.setBool(convertToNativeOptionalId.c(), optionalParamBoolean.value);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamFloat optionalParamFloat) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping float is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (7 == convertToNativeOptionalId.b()) {
            this.c.setFloat(convertToNativeOptionalId.c(), optionalParamFloat.value);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID:" + convertToNativeOptionalId.c() + " is not float");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping long is invalid, not found in array, id: ".concat(String.valueOf(i)));
            return;
        }
        int b = convertToNativeOptionalId.b();
        if (b == 1) {
            this.c.setLong(convertToNativeOptionalId.c(), optionalParamLong.value);
        } else if (b == 3) {
            this.c.setBool(convertToNativeOptionalId.c(), optionalParamLong.value > 0);
        } else if (b == 4) {
            this.c.setInt(convertToNativeOptionalId.c(), (int) optionalParamLong.value);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamObject optionalParamObject) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId == null) {
            this.g.e("convertToNativeOptionalId failed, key: ".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping object is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else {
            int c2 = convertToNativeOptionalId.c();
            if (c2 == 126) {
                this.c.setObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((TPJitterBufferConfig) optionalParamObject.objectValue));
            } else if (c2 == 414) {
                this.c.setObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a((TPAudioAttributes) optionalParamObject.objectValue));
            } else {
                com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
                aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
            }
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamQueueInt optionalParamQueueInt) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping queue_int is invalid, not found in array, id: ".concat(String.valueOf(i)));
            return;
        }
        int[] iArr = optionalParamQueueInt.queueValue;
        if (iArr == null || iArr.length == 0) {
            this.g.e("queueint params is empty in".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.b() == 5) {
            for (int i2 = 0; i2 < optionalParamQueueInt.queueValue.length; i2++) {
                this.c.addQueueInt(convertToNativeOptionalId.c(), optionalParamQueueInt.queueValue[i2]);
            }
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i, TPOptionalParam.OptionalParamQueueString optionalParamQueueString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping queue_string is invalid, not found in array, id: ".concat(String.valueOf(i)));
            return;
        }
        String[] strArr = optionalParamQueueString.queueValue;
        if (strArr == null || strArr.length == 0) {
            this.g.e("queue String params is empty in".concat(String.valueOf(i)));
        } else if (convertToNativeOptionalId.b() == 6) {
            for (int i2 = 0; i2 < optionalParamQueueString.queueValue.length; i2++) {
                this.c.addQueueString(convertToNativeOptionalId.c(), optionalParamQueueString.queueValue[i2]);
            }
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(int i, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i);
        if (convertToNativeOptionalId.a()) {
            this.g.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i)));
        } else if (2 == convertToNativeOptionalId.b()) {
            this.c.setString(convertToNativeOptionalId.c(), optionalParamString.value);
        } else {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
            aVar.e("optionID:" + convertToNativeOptionalId.c() + " is not string");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        this.e.a(j, j2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            throw new IllegalStateException("setDataSource url afd is null!!");
        }
        int detachFd = assetFileDescriptor.getParcelFileDescriptor().detachFd();
        long startOffset = assetFileDescriptor.getStartOffset();
        long length = assetFileDescriptor.getLength();
        ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
        int detachFd2 = fromFd.detachFd();
        fromFd.close();
        assetFileDescriptor.close();
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("setDataSource: " + assetFileDescriptor + ", playFd: " + detachFd + ", offset: " + startOffset + ", length: " + length + ", captureFd: " + detachFd2);
        a();
        if (this.b.setDataSource(detachFd, startOffset, length) != 0) {
            throw new IllegalStateException("setDataSource url afd failed!!");
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(detachFd2, startOffset, length);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalStateException("setDataSource url pfd is null!!");
        }
        int detachFd = parcelFileDescriptor.detachFd();
        ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
        int detachFd2 = fromFd.detachFd();
        fromFd.close();
        parcelFileDescriptor.close();
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("setDataSource: " + parcelFileDescriptor + ", playFd:" + detachFd + ", captureFd: " + detachFd2);
        a();
        if (this.b.setDataSource(detachFd, 0L, 0L) != 0) {
            throw new IllegalStateException("setDataSource url pfd failed!!");
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(detachFd2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        StringBuilder sb = new StringBuilder("setSurface, surface is null ? : ");
        sb.append(surface == null);
        aVar.c(sb.toString());
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else if (tPNativePlayer.setVideoSurface(surface) != 0) {
            throw new IllegalStateException("setSurface failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        StringBuilder sb = new StringBuilder("SurfaceHolder, surfaceHolder is null ? : ");
        sb.append(surfaceHolder == null);
        aVar.c(sb.toString());
        if (this.b == null) {
            this.g.d("player has released, return");
        } else if (surfaceHolder != null && surfaceHolder.getSurface() == null) {
            this.g.e("SurfaceHolder，err.");
        } else {
            if (this.b.setVideoSurface(surfaceHolder == null ? null : surfaceHolder.getSurface()) != 0) {
                throw new IllegalStateException("setSurface failed!!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0219b c0219b) {
        this.e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, c0219b.f10522a), c0219b.c, c0219b.d, Long.valueOf(c0219b.b));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.a aVar) {
        this.e.a(aVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.b bVar) {
        this.e.a(bVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.InterfaceC0220c interfaceC0220c) {
        this.e.a(interfaceC0220c);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.d dVar) {
        this.e.a(dVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.e eVar) {
        this.e.a(eVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.f fVar) {
        this.e.a(fVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.g gVar) {
        this.e.a(gVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.h hVar) {
        this.e.a(hVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.i iVar) {
        this.e.a(iVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.j jVar) {
        this.e.a(jVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.l lVar) {
        this.e.a(lVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.m mVar) {
        this.e.a(mVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.n nVar) {
        this.e.a(nVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.o oVar) {
        this.e.a(oVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(c.p pVar) {
        this.e.a(pVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        this.g.c("captureVideo, params".concat(String.valueOf(tPCaptureParams)));
        if (this.f == null) {
            tPCaptureCallBack.onCaptureVideoFailed(TPGeneralError.UNMATCHED_STATE);
            return;
        }
        TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
        tPImageGeneratorParams.width = tPCaptureParams.width;
        tPImageGeneratorParams.height = tPCaptureParams.height;
        tPImageGeneratorParams.format = tPCaptureParams.format;
        tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
        tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
        this.f.a(o(), tPImageGeneratorParams, tPCaptureCallBack);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (this.b == null) {
            this.g.d("player has released, return");
        } else if (tPOptionalParam.getParamType() == 1) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
            }
        } else if (tPOptionalParam.getParamType() == 2) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
            }
        } else if (tPOptionalParam.getParamType() == 6) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamFloat());
            }
        } else if (tPOptionalParam.getParamType() == 3) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
            }
        } else if (tPOptionalParam.getParamType() == 4) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueInt());
            }
        } else if (tPOptionalParam.getParamType() == 5) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueString());
            }
        } else if (tPOptionalParam.getParamType() == 7) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        this.g.c("setDataSource: ".concat(String.valueOf(iTPMediaAsset)));
        a();
        if (iTPMediaAsset == null) {
            throw new IllegalStateException("media asset is null!");
        }
        String url = iTPMediaAsset.getUrl();
        Map<String, String> httpHeader = iTPMediaAsset.getHttpHeader();
        if ((httpHeader == null ? this.b.setDataSource(url) : this.b.setDataSource(url, httpHeader)) != 0) {
            throw new IllegalStateException("setDataSource mediaAsset failed!!");
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(url);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("switchDefinition mediaAsset:" + iTPMediaAsset + " opaque:" + j);
        a();
        if (iTPMediaAsset != null) {
            int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i);
            Map<String, String> httpHeader = iTPMediaAsset.getHttpHeader();
            if ((httpHeader == null ? this.b.switchDefinitionAsync(iTPMediaAsset.getUrl(), nativeIntValue, j) : this.b.switchDefinitionAsync(iTPMediaAsset.getUrl(), httpHeader, nativeIntValue, j)) != 0) {
                throw new IllegalStateException("switchDefinition in invalid state");
            }
            this.f = new com.tencent.thumbplayer.tcmedia.a.d(iTPMediaAsset.getUrl());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(com.tencent.thumbplayer.tcmedia.e.b bVar) {
        this.g.a(new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPThumbPlayer"));
        if (bVar != null) {
            this.e.a(this.g.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str) {
        this.g.c("setAudioNormalizeVolumeParams:".concat(String.valueOf(str)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.setAudioNormalizeVolumeParams(str);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("switchDefinition url:" + str + " opaque:" + j);
        a();
        if (this.b.switchDefinitionAsync(str, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i), j) != 0) {
            throw new IllegalStateException("switchDefinition in invalid state");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.a();
            this.f = null;
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.g.c("setDataSource: ".concat(String.valueOf(str)));
        a();
        if (this.b.setDataSource(str, map) != 0) {
            throw new IllegalStateException("setDataSource url and header failed!!");
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("switchDefinition url:" + str + "httpHeader:" + map + " opaque:" + j);
        a();
        if (this.b.switchDefinitionAsync(str, map, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i), j) != 0) {
            throw new IllegalStateException("switchDefinition in invalid state");
        }
        com.tencent.thumbplayer.tcmedia.adapter.a.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.a();
            this.f = null;
        }
        this.f = new com.tencent.thumbplayer.tcmedia.a.d(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        this.g.c("addSubtitleSource");
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.addSubtitleTrackSource(str, str3, map);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        this.g.c("addAudioTrackSource");
        if (this.b == null) {
            this.g.d("player has released, return");
            return;
        }
        TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
        tPAudioTrackInfo.audioTrackUrl = str;
        tPAudioTrackInfo.paramData = list;
        g gVar = this.e;
        if (gVar != null) {
            gVar.a(1012, 0L, 0L, tPAudioTrackInfo);
        }
        if (TextUtils.isEmpty(tPAudioTrackInfo.proxyUrl)) {
            this.b.addAudioTrackSource(tPAudioTrackInfo.audioTrackUrl, str2, tPAudioTrackInfo.httpHeader);
        } else {
            this.b.addAudioTrackSource(tPAudioTrackInfo.proxyUrl, str2, tPAudioTrackInfo.httpHeader);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z) {
        this.g.c("setOutputMute:".concat(String.valueOf(z)));
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else {
            tPNativePlayer.setAudioMute(z);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.b
    public void a(boolean z, long j, long j2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.g;
        aVar.c("setLoopback:" + z + " loopStartPositionMs:" + j + " loopEndPositionMs:" + j2);
        TPNativePlayer tPNativePlayer = this.b;
        if (tPNativePlayer == null) {
            this.g.d("player has released, return");
        } else if (tPNativePlayer.setLoopback(z, j, j2) != 0) {
            throw new IllegalStateException("set loopback failed!!");
        }
    }
}
