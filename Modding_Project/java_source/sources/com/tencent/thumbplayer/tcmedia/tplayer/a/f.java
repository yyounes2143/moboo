package com.tencent.thumbplayer.tcmedia.tplayer.a;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class f extends c {
    private b i = new b();

    private void c() {
        com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar = this.b;
        if (aVar == null) {
            TPLogUtil.e("TPPrepareFailReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a2 = aVar.a();
        this.i.f10646a.a(this.e.i);
        this.i.f10646a.f(this.e.g);
        this.i.f10646a.j(this.e.e);
        this.i.f10646a.l(TPDownloadProxyHelper.getNativeLibVersion());
        b bVar = this.i;
        bVar.f10646a.k(bVar.b);
        b bVar2 = this.i;
        bVar2.f10646a.o(bVar2.e);
        b bVar3 = this.i;
        bVar3.f10646a.m(bVar3.d);
        b bVar4 = this.i;
        bVar4.f10646a.n(bVar4.c);
        this.i.f10646a.l(this.e.h);
        this.h.put("buffermintotaldurationms", Long.valueOf(a2.mPlayerConfigParams.mBufferMinTotalDurationMs));
        this.h.put("buffermaxtotaldurationms", Long.valueOf(a2.mPlayerConfigParams.mBufferMaxTotalDurationMs));
        this.h.put("preloadtotaldurationms", Long.valueOf(a2.mPlayerConfigParams.mPreloadTotalDurationMs));
        this.h.put("minbufferingdurationms", Long.valueOf(a2.mPlayerConfigParams.mMinBufferingDurationMs));
        this.h.put("minbufferingtimems", Long.valueOf(a2.mPlayerConfigParams.mMinBufferingTimeMs));
        this.h.put("maxbufferingtimems", Long.valueOf(a2.mPlayerConfigParams.mMaxBufferingTimeMs));
        this.h.put("reducelatencyaction", Integer.valueOf(a2.mPlayerConfigParams.mReduceLatencyAction));
        this.h.put("reducelatencyspeed", Float.valueOf(a2.mPlayerConfigParams.mReduceLatencyPlaySpeed));
        this.h.put("buffertype", Integer.valueOf(a2.mPlayerConfigParams.mBufferType));
        try {
            this.i.f10646a.p(new JSONObject(this.h).toString());
        } catch (NullPointerException e) {
            TPLogUtil.e("TPPrepareFailReporter", e);
        }
    }

    private void d(b.a aVar) {
        if (!(aVar instanceof b.e)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        int d = ((b.e) aVar).d();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTProcessUpdate speedKbps:".concat(String.valueOf(d)));
        this.i.b = d;
    }

    private void e(b.a aVar) {
        if (!(aVar instanceof b.d)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        b.d dVar = (b.d) aVar;
        String d = dVar.d();
        String e = dVar.e();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTCdnUrlUpdate cdnIp:" + d + " uIp:" + e);
        b bVar = this.i;
        bVar.c = d;
        bVar.d = e;
    }

    private void f(b.a aVar) {
        if (!(aVar instanceof b.f)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        String d = ((b.f) aVar).d();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTProtocolUpdate protocolVer:".concat(String.valueOf(d)));
        this.i.e = d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a() {
        super.a();
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.i)) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError fail:params is not match");
            return;
        }
        b.i iVar = (b.i) aVar;
        int d = iVar.d();
        int e = iVar.e();
        TPLogUtil.i("TPPrepareFailReporter", "onPrepareError errorType:" + d + " errorCode:" + e);
        com.tencent.thumbplayer.tcmedia.tplayer.a.b.b bVar = new com.tencent.thumbplayer.tcmedia.tplayer.a.b.b();
        bVar.o(e);
        c();
        b(this.i);
        this.f.b(this.i.f10646a);
        bVar.a(this.i.f10646a);
        Map<String, String> b = bVar.b();
        a("onPrepareError", b);
        b("prepare_fail", b);
        c("prepare_fail", b);
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(int i, b.a aVar) {
        if (i == 6) {
            c(aVar);
            return;
        }
        switch (i) {
            case 100:
                d(aVar);
                return;
            case 101:
                e(aVar);
                return;
            case 102:
                f(aVar);
                return;
            default:
                return;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.c, com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f.a(this.i.f10646a);
    }
}
