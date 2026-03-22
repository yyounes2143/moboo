package com.tencent.thumbplayer.tcmedia.tplayer.a;

import android.content.Context;
import android.os.SystemClock;
import com.tencent.thumbplayer.tcmedia.api.TPDrmInfo;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.tplayer.a.m;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.Map;
/* loaded from: classes6.dex */
public class n extends c {
    private boolean i = true;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private m m = new m();

    private com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.b b(TPDrmInfo tPDrmInfo) {
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.b bVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.b();
        bVar.n(tPDrmInfo.drmAbility);
        bVar.q(tPDrmInfo.drmSupportSecureDecoder);
        bVar.r(tPDrmInfo.drmSupportSecureDecrypt);
        bVar.p(tPDrmInfo.drmSecureLevel);
        bVar.q(tPDrmInfo.drmComponentName);
        bVar.o(tPDrmInfo.drmType);
        bVar.c(tPDrmInfo.drmPrepareStartTimeMs);
        bVar.d(tPDrmInfo.drmPrepareEndTimeMs);
        bVar.e(tPDrmInfo.drmOpenSessionStartTimeMs);
        bVar.f(tPDrmInfo.drmOpenSessionEndTimeMs);
        bVar.g(tPDrmInfo.drmGetProvisionReqStartTimeMs);
        bVar.h(tPDrmInfo.drmGetProvisionReqEndTimeMs);
        bVar.i(tPDrmInfo.drmSendProvisionReqTimeMs);
        bVar.j(tPDrmInfo.drmRecvProvisionRespTimeMs);
        bVar.k(tPDrmInfo.drmProvideProvisionRespStartTimeMs);
        bVar.l(tPDrmInfo.drmProvideProvisionRespEndTimeMs);
        bVar.m(tPDrmInfo.drmGetKeyReqStartTimeMs);
        bVar.n(tPDrmInfo.drmGetKeyReqEndTimeMs);
        bVar.o(tPDrmInfo.drmSendKeyReqTimeMs);
        bVar.p(tPDrmInfo.drmRecvKeyRespTimeMs);
        bVar.q(tPDrmInfo.drmProvideKeyRespStartTimeMs);
        bVar.r(tPDrmInfo.drmProvideKeyRespEndTimeMs);
        this.f.b(this.m.f10646a);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar = this.m.f10646a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        bVar.a(this.m.f10646a);
        return bVar;
    }

    private void c() {
        TPLogUtil.d("TPVodReporter", "onAppForeground");
        a(this.m.f10646a.a());
    }

    private void d() {
        TPLogUtil.d("TPVodReporter", "onAppBackground");
        if (this.i) {
            return;
        }
        a("vod_flow", b(b(), a(false)));
        a("vod_end", b(SystemClock.elapsedRealtime(), 0, b()));
    }

    private void e(b.a aVar) {
        if (!(aVar instanceof b.j)) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause fail:params is not match");
            return;
        }
        b.j jVar = (b.j) aVar;
        if (this.l) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause has been called");
            return;
        }
        this.l = true;
        this.m.j = jVar.b();
        TPLogUtil.d("TPVodReporter", "Vod onPlayerPause timeMs:" + this.m.j);
    }

    private void f(b.a aVar) {
        if (this.i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.i = true;
        a(aVar.b(), 0, a(aVar), b(aVar));
        a(this.m.f10646a.a());
    }

    private void g(b.a aVar) {
        if (this.i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.i = true;
        if (!(aVar instanceof b.i)) {
            TPLogUtil.e("TPVodReporter", "onPlayerError fail:params is not match");
            return;
        }
        b.i iVar = (b.i) aVar;
        a(iVar.b(), iVar.e(), a(iVar), b(iVar));
        a(this.m.f10646a.a());
    }

    private void h(b.a aVar) {
        if (!(aVar instanceof b.r)) {
            TPLogUtil.e("TPVodReporter", "onSeekStart fail:params is not match");
            return;
        }
        b.r rVar = (b.r) aVar;
        if (this.k) {
            k(new b.C0225b());
        }
        if (this.j) {
            i(new b.q());
        }
        this.j = true;
        this.m.l = rVar.b();
        TPLogUtil.d("TPVodReporter", "Vod onSeekStart timeMs:" + this.m.l);
    }

    private void i(b.a aVar) {
        if (!(aVar instanceof b.q)) {
            TPLogUtil.e("TPVodReporter", "onSeekEnd fail:params is not match");
            return;
        }
        this.j = false;
        long b = ((b.q) aVar).b();
        m mVar = this.m;
        long j = b - mVar.l;
        if (j > 1200) {
            mVar.n++;
            mVar.o = (int) (mVar.o + j);
        }
        mVar.m++;
        TPLogUtil.d("TPVodReporter", "Vod onSeekEnd seekCostTimeMs:" + j + " mSeekTotalCount:" + this.m.m + " mSeekBufferingTotalCount:" + this.m.n + " mSeekBufferingTotalDurationMs:" + this.m.o);
    }

    private void j(b.a aVar) {
        if (!(aVar instanceof b.c)) {
            TPLogUtil.e("TPVodReporter", "onBufferingStart fail:params is not match");
            return;
        }
        b.c cVar = (b.c) aVar;
        this.k = true;
        if (this.j) {
            return;
        }
        this.m.p = cVar.b();
        TPLogUtil.d("TPVodReporter", "Vod onBufferingStart timeMs:" + this.m.p);
    }

    private void k(b.a aVar) {
        if (!(aVar instanceof b.C0225b)) {
            TPLogUtil.e("TPVodReporter", "onBufferingEnd fail:params is not match");
            return;
        }
        b.C0225b c0225b = (b.C0225b) aVar;
        this.k = false;
        if (!this.j) {
            long b = c0225b.b() - this.m.p;
            TPLogUtil.d("TPVodReporter", "Vod onBufferingEnd bufferingCostTimeMs:".concat(String.valueOf(b)));
            if (b <= 1200) {
                return;
            }
            m mVar = this.m;
            mVar.q++;
            mVar.r = (int) (mVar.r + b);
            com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.a aVar2 = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.a();
            aVar2.b(this.m.s);
            aVar2.c(b);
            this.f.b(this.m.f10646a);
            com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar3 = this.m.f10646a;
            int i = this.g;
            this.g = i + 1;
            aVar3.a(i);
            aVar2.a(this.m.f10646a);
            Map<String, String> b2 = aVar2.b();
            a("onBufferingEnd", b2);
            b("vod_second_buffering", b2);
            c("vod_second_buffering", b2);
        }
    }

    private void l(b.a aVar) {
        if (!(aVar instanceof b.v)) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed fail:params is not match");
            return;
        }
        this.m.s = ((b.v) aVar).d();
        TPLogUtil.d("TPVodReporter", "Vod onSetPlaySpeed mPlaySpeed:" + this.m.s);
    }

    private void m(b.a aVar) {
        if (!(aVar instanceof b.t)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackStart fail:params is not match");
            return;
        }
        b.t tVar = (b.t) aVar;
        int d = tVar.d();
        long e = tVar.e();
        TPLogUtil.d("TPVodReporter", "Vod onSelectTrackStart trackId:" + d + " trackUniqueIndex:" + e);
        if (this.m.t.containsKey(Long.valueOf(e))) {
            return;
        }
        m.a aVar2 = new m.a();
        aVar2.f10666a = d;
        aVar2.c = tVar.f();
        aVar2.b = tVar.b();
        this.m.t.put(Long.valueOf(tVar.e()), aVar2);
    }

    private void n(b.a aVar) {
        if (!(aVar instanceof b.s)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackEnd fail:params is not match");
            return;
        }
        b.s sVar = (b.s) aVar;
        int d = sVar.d();
        long e = sVar.e();
        TPLogUtil.d("TPVodReporter", "Vod onSelectTrackEnd errorCode:" + d + " trackUniqueIndex:" + e);
        a(e, sVar.b(), d);
    }

    private void o(b.a aVar) {
        if (!(aVar instanceof b.h)) {
            TPLogUtil.e("TPVodReporter", "onDrmInfo fail:params is not match");
        } else {
            a(((b.h) aVar).d());
        }
    }

    private void p(b.a aVar) {
        if (!(aVar instanceof b.e)) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        int d = ((b.e) aVar).d();
        TPLogUtil.d("TPVodReporter", "Vod onDTProcessUpdate speedKbps:".concat(String.valueOf(d)));
        this.m.b = d;
    }

    private void q(b.a aVar) {
        if (!(aVar instanceof b.d)) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        b.d dVar = (b.d) aVar;
        String d = dVar.d();
        String e = dVar.e();
        TPLogUtil.d("TPVodReporter", "Vod onDTCdnUrlUpdate cdnIp:" + d + " uIp:" + e);
        m mVar = this.m;
        mVar.c = d;
        mVar.d = e;
    }

    private void r(b.a aVar) {
        if (!(aVar instanceof b.f)) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        String d = ((b.f) aVar).d();
        TPLogUtil.d("TPVodReporter", "Vod onDTProtocolUpdate protocolVer:".concat(String.valueOf(d)));
        this.m.e = d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a() {
        super.a();
    }

    private com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.c b(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.c cVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.c();
        m mVar = this.m;
        long j2 = j - mVar.g;
        mVar.i = j2;
        cVar.c(j2);
        cVar.o(i);
        cVar.p(this.m.m);
        cVar.q(this.m.n);
        cVar.d(this.m.o);
        cVar.r(this.m.q);
        cVar.e(this.m.r);
        a(cVar, tPGeneralPlayFlowParams);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar = this.m.f10646a;
        int i2 = this.g;
        this.g = i2 + 1;
        aVar.a(i2);
        this.f.b(this.m.f10646a);
        cVar.a(this.m.f10646a);
        return cVar;
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.o)) {
            TPLogUtil.e("TPVodReporter", "onPrepareDone fail:params is not match");
            return;
        }
        b.o oVar = (b.o) aVar;
        long b = oVar.b() - this.e.c;
        this.m.f = oVar.b();
        a(this.m);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar2 = this.m.f10646a;
        int i = this.g;
        this.g = i + 1;
        aVar2.a(i);
        this.f.b(this.m.f10646a);
        b(this.m);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.d dVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.d();
        dVar.c(b);
        dVar.a(this.m.f10646a);
        Map<String, String> b2 = dVar.b();
        a("onPrepareDone", b2);
        b("vod_first_load", b2);
        c("vod_first_load", b2);
    }

    private void d(b.a aVar) {
        if (!(aVar instanceof b.m)) {
            TPLogUtil.e("TPVodReporter", "onPlayerStart fail:params is not match");
            return;
        }
        b.m mVar = (b.m) aVar;
        this.i = false;
        this.l = false;
        m mVar2 = this.m;
        if (mVar2.g == 0) {
            mVar2.g = mVar.b();
        }
        this.m.h = mVar.b();
        m mVar3 = this.m;
        if (mVar3.j > 0) {
            long j = mVar3.k;
            long b = mVar.b();
            m mVar4 = this.m;
            mVar3.k = j + (b - mVar4.j);
            mVar4.j = 0L;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(int i, b.a aVar) {
        if (i == 1001) {
            c();
        } else if (i == 1002) {
            d();
        } else {
            switch (i) {
                case 2:
                    c(aVar);
                    return;
                case 3:
                    d(aVar);
                    return;
                case 4:
                    e(aVar);
                    return;
                case 5:
                    f(aVar);
                    return;
                case 6:
                    g(aVar);
                    return;
                case 7:
                    h(aVar);
                    return;
                case 8:
                    i(aVar);
                    return;
                case 9:
                    j(aVar);
                    return;
                case 10:
                    k(aVar);
                    return;
                case 11:
                    m(aVar);
                    return;
                case 12:
                    n(aVar);
                    return;
                case 13:
                    l(aVar);
                    return;
                case 14:
                    o(aVar);
                    return;
                default:
                    switch (i) {
                        case 100:
                            p(aVar);
                            return;
                        case 101:
                            q(aVar);
                            return;
                        case 102:
                            r(aVar);
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        Map<String, String> b = b(j, i, tPGeneralPlayFlowParams).b();
        a("reportVodEndEvent", b);
        b("vod_end", b);
        c("vod_end", b);
    }

    private com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.e b(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.e eVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.e();
        eVar.c(this.e.f10665a);
        eVar.d(this.e.b);
        eVar.e(this.e.c);
        eVar.p(this.m.f);
        a(eVar, tPGeneralPlayFlowParams);
        a(eVar, tPDynamicStatisticParams);
        this.f.b(this.m.f10646a);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar = this.m.f10646a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        eVar.a(this.m.f10646a);
        return eVar;
    }

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        if (this.k) {
            k(new b.C0225b());
            this.k = false;
        }
        if (this.j) {
            i(new b.q());
            this.j = false;
        }
        if (this.l) {
            m mVar = this.m;
            if (mVar.j > 0) {
                long j2 = mVar.k;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                m mVar2 = this.m;
                mVar.k = j2 + (elapsedRealtime - mVar2.j);
                mVar2.j = 0L;
            }
            this.l = false;
        }
        TPLogUtil.d("TPVodReporter", "reportPlayerEndEvent playerStopTimeMs:" + j + " errorCode:" + i);
        a(tPGeneralPlayFlowParams, tPDynamicStatisticParams);
        a(j, i, tPGeneralPlayFlowParams);
    }

    private void a(long j, long j2, int i) {
        if (!this.m.t.containsKey(Long.valueOf(j))) {
            TPLogUtil.e("TPVodReporter", "reportSelectTrackEndEvent mSelectTrackInfoList is not contain key:".concat(String.valueOf(j)));
            return;
        }
        m.a aVar = this.m.t.get(Long.valueOf(j));
        long j3 = j2 - aVar.b;
        TPLogUtil.d("TPVodReporter", "reportSelectTrackEndEvent trackUniqueIndex:" + j + " costTimeMs:" + j3 + " trackId:" + aVar.f10666a);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.f fVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.f();
        fVar.o(i);
        fVar.c(j3);
        fVar.p(aVar.c.getTrackType());
        fVar.q(aVar.c.isInternal ? 1 : 0);
        this.f.b(this.m.f10646a);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar2 = this.m.f10646a;
        int i2 = this.g;
        this.g = i2 + 1;
        aVar2.a(i2);
        fVar.a(this.m.f10646a);
        Map<String, String> b = fVar.b();
        a("onSelectTrackEnd", b);
        b("vod_select_track", b);
        c("vod_select_track", b);
        this.m.t.remove(Long.valueOf(j));
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f.a(this.m.f10646a);
    }

    private void a(TPDrmInfo tPDrmInfo) {
        Map<String, String> b = b(tPDrmInfo).b();
        a("reportPlayerDrmInfoEvent", b);
        b("vod_drm_authentication", b);
        c("vod_drm_authentication", b);
    }

    private void a(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        Map<String, String> b = b(tPGeneralPlayFlowParams, tPDynamicStatisticParams).b();
        a("reportVodEndFlowEvent", b);
        b("vod_flow", b);
        c("vod_flow", b);
    }

    private void a(com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.c cVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        cVar.t(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoDecoderType);
        cVar.u(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioDecoderType);
        cVar.v(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoRenderType);
        cVar.w(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioRenderType);
        cVar.s(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mDemuxerType);
    }

    private void a(com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.e eVar, TPDynamicStatisticParams tPDynamicStatisticParams) {
        eVar.u(tPDynamicStatisticParams.mMaxVideoStreamBitrate);
        eVar.v(tPDynamicStatisticParams.mAvgVideoStreamBitrate);
        eVar.w(tPDynamicStatisticParams.mMinVideoStreamBitrate);
        eVar.x(tPDynamicStatisticParams.mMaxVideoDecodeCostTimeMs);
        eVar.y(tPDynamicStatisticParams.mAvgVideoDecodeCostTimeMs);
        eVar.z(tPDynamicStatisticParams.mMinVideoDecodeCostTimeMs);
        eVar.o(tPDynamicStatisticParams.mVideoDecodeFrameCount);
        eVar.p(tPDynamicStatisticParams.mVideoRenderFrameCount);
    }

    private void a(com.tencent.thumbplayer.tcmedia.tplayer.a.b.b.e eVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        eVar.f(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        eVar.g(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadPrepareTimeMs);
        eVar.h(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadPrepareTimeMs);
        eVar.i(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerOpenFileSTimeMs);
        eVar.j(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        eVar.k(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mInitFirstClipPositionETimeMs);
        eVar.l(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoPacketReadETimeMs);
        eVar.m(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioPacketReadETimeMs);
        eVar.n(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadOnPreparedTimeMs);
        eVar.o(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadOnPreparedTimeMs);
        eVar.q(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mVideoDecoderOpenedTimeMs);
        eVar.r(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoFrameRenderETimeMs);
        eVar.s(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mAudioDecoderOpenedTimeMs);
        eVar.t(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioFrameRenderETimeMs);
    }
}
