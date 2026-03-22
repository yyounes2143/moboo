package com.tencent.thumbplayer.tcmedia.tplayer.a;

import android.content.Context;
import androidx.webkit.ProxyConfig;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.tcmedia.api.reportv2.TPExtendCommonKey;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class c implements a {
    private static com.tencent.thumbplayer.tcmedia.utils.c i;

    /* renamed from: a  reason: collision with root package name */
    protected ITPReportInfoGetter f10659a;
    protected com.tencent.thumbplayer.tcmedia.tplayer.a.a.a b;
    protected CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> c;
    protected Context d;
    protected l e;
    protected j f = null;
    protected int g = 0;
    protected Map<String, Object> h = new HashMap();

    private synchronized void c() {
        try {
            com.tencent.thumbplayer.tcmedia.utils.c cVar = i;
            if (cVar == null) {
                return;
            }
            ArrayList<String> b = cVar.b();
            int size = b.size();
            int i2 = 0;
            while (i2 < size) {
                String str = b.get(i2);
                i2++;
                String str2 = str;
                String d = d(str2);
                com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar = (com.tencent.thumbplayer.tcmedia.tplayer.a.b.a) i.b(str2);
                if (d != null && aVar != null) {
                    Map<String, String> b2 = aVar.b();
                    b(d, b2);
                    com.tencent.thumbplayer.tcmedia.common.a.b.a(d, b2);
                }
            }
            i.c();
        } catch (Throwable th) {
            throw th;
        }
    }

    private static String d(String str) {
        Field[] declaredFields;
        for (Field field : i.class.getDeclaredFields()) {
            field.setAccessible(true);
            if (field.getType() == String.class) {
                try {
                    String str2 = (String) field.get(i.class);
                    if (str2 != null && str.endsWith(str2)) {
                        return str2;
                    }
                } catch (IllegalAccessException unused) {
                    TPLogUtil.w("TPBaseReporter", "fail to get value of field(" + field.getName() + ") in TPReportEventId.class)");
                }
            }
        }
        return null;
    }

    public TPDynamicStatisticParams a(boolean z) {
        com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar = this.b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "getDynamicStatParamsFromCore failed, mPlayerInfoGetter is null, return default value");
            return new TPDynamicStatisticParams();
        }
        return aVar.a(z);
    }

    public TPDynamicStatisticParams b(b.a aVar) {
        TPDynamicStatisticParams tPDynamicStatisticParams;
        if (aVar instanceof b.n) {
            tPDynamicStatisticParams = ((b.n) aVar).e();
        } else if (aVar instanceof b.l) {
            tPDynamicStatisticParams = ((b.l) aVar).e();
        } else if (aVar instanceof b.i) {
            tPDynamicStatisticParams = ((b.i) aVar).g();
        } else {
            TPLogUtil.e("TPBaseReporter", "event info do not have dynamicStatisticParams");
            tPDynamicStatisticParams = null;
        }
        return tPDynamicStatisticParams == null ? new TPDynamicStatisticParams() : tPDynamicStatisticParams;
    }

    public TPGeneralPlayFlowParams a(b.a aVar) {
        TPGeneralPlayFlowParams tPGeneralPlayFlowParams;
        if (aVar instanceof b.n) {
            tPGeneralPlayFlowParams = ((b.n) aVar).d();
        } else if (aVar instanceof b.l) {
            tPGeneralPlayFlowParams = ((b.l) aVar).d();
        } else if (aVar instanceof b.i) {
            tPGeneralPlayFlowParams = ((b.i) aVar).f();
        } else {
            TPLogUtil.e("TPBaseReporter", "event info do not have generalPlayFlowParams");
            tPGeneralPlayFlowParams = null;
        }
        return tPGeneralPlayFlowParams == null ? new TPGeneralPlayFlowParams() : tPGeneralPlayFlowParams;
    }

    public TPGeneralPlayFlowParams b() {
        com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar = this.b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "getGeneralPlayFlowParams failed, mPlayerInfoGetter is null, return default value");
            return new TPGeneralPlayFlowParams();
        }
        return aVar.a();
    }

    public void c(String str, Map<String, String> map) {
        if (this.e.j.booleanValue()) {
            com.tencent.thumbplayer.tcmedia.common.a.b.a(str, map);
        }
    }

    public static boolean c(String str) {
        Field[] declaredFields;
        if (str == null) {
            return false;
        }
        for (Field field : TPExtendCommonKey.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                String str2 = (String) field.get(TPExtendCommonKey.class);
                if (str2 != null && str2.equals(str)) {
                    return true;
                }
            } catch (IllegalAccessException e) {
                TPLogUtil.e("TPBaseReporter", e);
            }
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a() {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.c;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            this.c = null;
        }
    }

    public void b(b bVar) {
        ITPReportInfoGetter iTPReportInfoGetter = this.f10659a;
        if (iTPReportInfoGetter == null) {
            return;
        }
        Map<String, String> initExtendReportInfo = iTPReportInfoGetter.getInitExtendReportInfo();
        if (initExtendReportInfo == null) {
            TPLogUtil.e("TPBaseReporter", "fillInitExtReportInfoToCommonParams fail, initExtendReportInfo is null");
            return;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        a(initExtendReportInfo, hashMap, hashMap2);
        bVar.f10646a.a(hashMap);
        bVar.f10646a.b(hashMap2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(int i2, b.a aVar) {
    }

    public void b(String str, Map<String, String> map) {
        if (this.c.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.c.size(); i2++) {
            ITPReportChannelListener iTPReportChannelListener = this.c.get(i2).get();
            if (iTPReportChannelListener != null) {
                iTPReportChannelListener.reportEvent(str, map);
            }
        }
    }

    public static boolean b(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("ext_");
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(Context context, l lVar) {
        this.d = context;
        this.c = new CopyOnWriteArrayList<>();
        this.e = lVar;
        this.f = new j(context);
        a(context, "TPReporterCache");
        c();
    }

    private synchronized void a(Context context, String str) {
        if (i != null) {
            return;
        }
        i = new com.tencent.thumbplayer.tcmedia.utils.c(this.d, str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.c;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.c.add(new WeakReference<>(iTPReportChannelListener));
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(ITPReportInfoGetter iTPReportInfoGetter) {
        this.f10659a = iTPReportInfoGetter;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a
    public void a(com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar) {
        this.b = aVar;
    }

    public void a(b bVar) {
        com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar = this.b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a2 = aVar.a();
        bVar.f10646a.a(this.e.i);
        bVar.f10646a.a(a2.mPlayerBaseMediaParams.mDurationMs);
        bVar.f10646a.e(a2.mPlayerBaseMediaParams.mHlsSourceType);
        bVar.f10646a.f(this.e.g);
        bVar.f10646a.g(this.e.f);
        bVar.f10646a.i(a2.mPlayerBaseMediaParams.mFormatContainer);
        bVar.f10646a.h(a2.mPlayerBaseMediaParams.mVideoEncodeFormat);
        bVar.f10646a.i(a2.mPlayerBaseMediaParams.mAudioEncodeFormat);
        bVar.f10646a.j(a2.mPlayerBaseMediaParams.mSubtitleEncodeFormat);
        bVar.f10646a.b(a2.mPlayerBaseMediaParams.mVideoStreamBitrateKbps);
        bVar.f10646a.a(a2.mPlayerBaseMediaParams.mVideoFrameRate);
        bVar.f10646a.j(this.e.e);
        bVar.f10646a.k(a2.mPlayerBaseMediaParams.mVideoWidth + ProxyConfig.MATCH_ALL_SCHEMES + a2.mPlayerBaseMediaParams.mVideoHeight);
        bVar.f10646a.l(TPDownloadProxyHelper.getNativeLibVersion());
        bVar.f10646a.k(bVar.b);
        bVar.f10646a.o(bVar.e);
        bVar.f10646a.m(bVar.d);
        bVar.f10646a.n(bVar.c);
        bVar.f10646a.l(this.e.h);
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
            bVar.f10646a.p(new JSONObject(this.h).toString());
        } catch (NullPointerException e) {
            TPLogUtil.e("TPBaseReporter", e);
        }
    }

    public synchronized void a(String str) {
        com.tencent.thumbplayer.tcmedia.utils.c cVar = i;
        if (cVar == null) {
            return;
        }
        ArrayList<String> b = cVar.b();
        int size = b.size();
        int i2 = 0;
        while (i2 < size) {
            String str2 = b.get(i2);
            i2++;
            String str3 = str2;
            if (str3.startsWith(str)) {
                i.a(str3);
                TPLogUtil.i("TPBaseReporter", "remove cache, key:".concat(str3));
            }
        }
    }

    public synchronized void a(String str, com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar) {
        if (i != null && this.e.j.booleanValue()) {
            com.tencent.thumbplayer.tcmedia.utils.c cVar = i;
            cVar.a(aVar.a() + str, aVar);
            TPLogUtil.i("TPBaseReporter", "write cache, flowid:" + aVar.a() + ", reportId:" + str);
            return;
        }
        TPLogUtil.i("TPBaseReporter", "mCache is null or does not need to report to beacon, no caching!");
    }

    public void a(String str, Map<String, String> map) {
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = ":{";
        while (true) {
            sb.append(str2);
            if (!it.hasNext()) {
                sb.append("}");
                TPLogUtil.i("TPBaseReporter", sb.toString());
                return;
            }
            Map.Entry<String, String> next = it.next();
            sb.append(next.getKey());
            sb.append(":");
            sb.append(next.getValue());
            str2 = ",";
        }
    }

    public static void a(Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (c(entry.getKey())) {
                map2.put(entry.getKey(), entry.getValue());
            } else if (b(entry.getKey())) {
                map3.put(entry.getKey(), entry.getValue());
            } else {
                TPLogUtil.e("TPBaseReporter", "invalid extend info <" + entry.getKey() + ", " + entry.getValue() + "> from ITPReportInfoGetter, key valid!");
            }
        }
    }
}
