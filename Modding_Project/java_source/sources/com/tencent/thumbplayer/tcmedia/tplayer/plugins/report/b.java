package com.tencent.thumbplayer.tcmedia.tplayer.plugins.report;

import android.app.UiModeManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.webkit.ProxyConfig;
import com.facebook.ads.AdError;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr;
import com.tencent.thumbplayer.tcmedia.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.tcmedia.api.report.TPDefaultReportInfo;
import com.tencent.thumbplayer.tcmedia.api.report.TPLiveReportInfo;
import com.tencent.thumbplayer.tcmedia.api.report.TPVodReportInfo;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.f;
import com.tencent.thumbplayer.tcmedia.utils.l;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class b implements ITPBusinessReportManager, com.tencent.thumbplayer.tcmedia.tplayer.plugins.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f10675a = String.format("Android %s", TPSystemInfo.getOsVersion());
    private static String b = "";
    private static boolean c = false;
    private static com.tencent.thumbplayer.tcmedia.utils.c h = null;
    private Context I;
    private HandlerThread d;
    private HandlerC0234b e;
    private final Object f = new Object();
    private boolean g = false;
    private TPDefaultReportInfo i = null;
    private TPReportParams j = null;
    private int k = 1;
    private int l = 0;
    private boolean m = true;
    private boolean n = true;
    private boolean o = false;
    private boolean p = false;
    private long q = 0;
    private long r = 0;
    private int s = 81;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private boolean w = false;
    private boolean x = false;
    private boolean y = false;
    private String z = "0";
    private String A = "";
    private String B = "";
    private String C = "";
    private int D = 0;
    private int E = 0;
    private String F = "";
    private int G = 0;
    private long H = 0;
    private int J = -1;
    private c K = new a();
    private double L = 1.0d;
    private boolean M = true;
    private TPReportParams.BufferingOnceParams N = null;
    private TPReportParams.UserSeekOnceParams O = null;
    private final e P = new e();
    private f.a Q = new f.a() { // from class: com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b.1
        @Override // com.tencent.thumbplayer.tcmedia.utils.f.a
        public void a(int i, int i2, int i3, Object obj) {
            int i4;
            TPLogUtil.i("TPReportManager", "OnGlobalEventChangeListener eventId: ".concat(String.valueOf(i)));
            switch (i) {
                case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                    i4 = AdError.BROKEN_MEDIA_ERROR_CODE;
                    break;
                case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                    i4 = 2101;
                    break;
                default:
                    return;
            }
            b.this.e.obtainMessage(i4, null).sendToTarget();
        }
    };

    /* loaded from: classes6.dex */
    public class a implements c {
        public a() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
            boolean z;
            if (i > 30) {
                z = false;
            } else {
                z = true;
            }
            b.this.a(aVar, i, z);
            b.this.a(aVar);
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class HandlerC0234b extends Handler {
        public HandlerC0234b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Map map;
            Object obj = message.obj;
            if (obj instanceof Map) {
                map = (Map) obj;
            } else {
                map = null;
            }
            int i = message.what;
            if (i == 100) {
                b.this.l();
            } else if (i == 3000) {
                b.this.f();
            } else if (i == 4000) {
                b.this.j();
            } else if (i == 2100) {
                b.this.i();
            } else if (i == 2101) {
                b.this.g();
            } else {
                switch (i) {
                    case 999:
                        b.this.a(map);
                        return;
                    case 1000:
                        b.this.b(map);
                        return;
                    case 1001:
                        b.this.c(map);
                        return;
                    case 1002:
                        b.this.d(map);
                        return;
                    case 1003:
                        b.this.e(map);
                        return;
                    case 1004:
                        b.this.g(map);
                        return;
                    case 1005:
                        b.this.h(map);
                        return;
                    case 1006:
                        b.this.i(map);
                        return;
                    case 1007:
                        b.this.j(map);
                        return;
                    case 1008:
                        b.this.k(map);
                        return;
                    case 1009:
                        b.this.n(map);
                        return;
                    case 1010:
                        b.this.p(map);
                        return;
                    case 1011:
                        b.this.o(map);
                        return;
                    case 1012:
                        b.this.f(map);
                        return;
                    case 1013:
                        b.this.l(map);
                        return;
                    case 1014:
                        b.this.m(map);
                        return;
                    case 1015:
                        b.this.r(map);
                        return;
                    case 1016:
                        if (obj instanceof String) {
                            b.this.a((String) obj);
                            return;
                        }
                        return;
                    case 1017:
                        b.this.C(map);
                        return;
                    case 1018:
                        b.this.D(map);
                        return;
                    case 1019:
                        b.this.A(map);
                        return;
                    case 1020:
                        b.this.y(map);
                        return;
                    case 1021:
                        b.this.z(map);
                        return;
                    case 1022:
                        b.this.B(map);
                        return;
                    case AnalyticsListener.EVENT_DRM_KEYS_LOADED /* 1023 */:
                        b.this.E(map);
                        return;
                    default:
                        switch (i) {
                            case 2000:
                                b.this.s(map);
                                return;
                            case 2001:
                                b.this.t(map);
                                return;
                            case 2002:
                                b.this.v(map);
                                return;
                            case 2003:
                                b.this.u(map);
                                return;
                            case 2004:
                                b.this.w(map);
                                return;
                            case 2005:
                                b.this.x(map);
                                return;
                            default:
                                return;
                        }
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c {
        void a(int i, com.tencent.thumbplayer.tcmedia.common.a.a aVar);
    }

    /* loaded from: classes6.dex */
    public class d implements c {
        public d() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
            boolean z;
            l lVar = new l();
            if (i > 30 && i != 263) {
                z = false;
            } else {
                z = true;
            }
            if (i != 30) {
                if (i != 50) {
                    if (i != 150) {
                        if (i != 263) {
                            return;
                        }
                        b.this.e.removeMessages(3000);
                        b.this.e.sendEmptyMessageDelayed(3000, 60000L);
                    } else {
                        b.this.e.removeMessages(3000);
                    }
                } else {
                    b.this.e.removeMessages(3000);
                    i = 263;
                }
            } else {
                i = 205;
            }
            b.this.a(lVar, i, z);
            b.this.b(lVar, z);
            if (i != 205) {
                lVar.a("loadingtime", 0);
            }
            TPLogUtil.i("TPReportManager", "liveExParam.prePlayLengthInt: " + b.this.j.getLiveExParam().prePlayLengthInt);
            b.this.a(lVar);
        }
    }

    /* loaded from: classes6.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        long f10680a;
        int b;
        long c;
        long d;
        int e;
        int f;
        long g;
        long h;
        int i;
        int j;
        int k;
        int l;
        boolean m;
        boolean n;
        boolean o;
        int p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        ArrayList<f> w;

        private e() {
            this.f10680a = 0L;
            this.b = 0;
            this.c = 0L;
            this.d = 0L;
            this.e = 0;
            this.f = 0;
            this.g = 0L;
            this.h = 0L;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = -1;
            this.q = "";
            this.r = "";
            this.s = "";
            this.t = "";
            this.u = "";
            this.v = "";
            this.w = new ArrayList<>();
        }

        public void a() {
            this.f10680a = 0L;
            this.b = 0;
            this.c = 0L;
            this.d = 0L;
            this.e = 0;
            this.f = 0;
            this.g = 0L;
            this.h = 0L;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = -1;
            this.q = "";
            this.r = "";
            this.s = "";
            this.t = "";
            this.u = "";
            this.v = "";
            this.w.clear();
        }
    }

    /* loaded from: classes6.dex */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        String f10681a;
        String b;
        long c = -1;

        public f(String str, String str2) {
            this.f10681a = str;
            this.b = str2;
        }
    }

    /* loaded from: classes6.dex */
    public class g implements c {
        public g() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
            boolean z;
            if (i > 30) {
                z = false;
            } else {
                z = true;
            }
            b.this.a(aVar, i, z);
            b.this.a(aVar, z);
            b.this.a(aVar);
        }
    }

    public b(Context context) {
        this.I = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Map<String, Object> map) {
        this.A = a(map, "proto", "");
        this.B = a(map, "protover", "");
    }

    private float a(Map<String, Object> map, String str, float f2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? f2 : ((Float) obj).floatValue();
    }

    private int b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 4;
            default:
                return 0;
        }
    }

    private void d() {
        this.d = o.a().a("TP-ReportThread");
        this.e = new HandlerC0234b(this.d.getLooper());
        this.j = new TPReportParams();
        com.tencent.thumbplayer.tcmedia.utils.f.a(this.Q);
        synchronized (b.class) {
            try {
                if (h == null) {
                    h = new com.tencent.thumbplayer.tcmedia.utils.c(this.I, "TPReportCache");
                }
                if (!c) {
                    this.e.obtainMessage(4000).sendToTarget();
                }
                c = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void e() {
        TPLogUtil.i("TPReportManager", "release: ");
        com.tencent.thumbplayer.tcmedia.utils.f.b(this.Q);
        HandlerThread handlerThread = this.d;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.d = null;
        }
        TPLogUtil.i("TPReportManager", "release: end!");
    }

    private void h() {
        TPLogUtil.i("TPReportManager", "removeCacheEvent: mFlowId: " + this.C);
        if (h == null || TextUtils.isEmpty(this.C)) {
            return;
        }
        h.a(this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TPLogUtil.i("TPReportManager", "onAppBackground");
        if (this.m || this.J == 1 || !this.n) {
            return;
        }
        this.n = false;
        l lVar = new l();
        this.j.getBufferingTotalParams().paramsToProperties(lVar);
        this.j.getUserSeekTotalParams().paramsToProperties(lVar);
        TPReportParams.PlayDoneParams playDoneParams = this.j.getPlayDoneParams();
        playDoneParams.endTimeUnix = System.currentTimeMillis();
        playDoneParams.reasonInt = 2;
        playDoneParams.errCodeString = this.z;
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
        long j = this.q;
        if (j > 0) {
            this.r += playDoneParams.endTimeUnix - j;
            this.q = 0L;
        }
        playDoneParams.playDurationFloat = ((float) this.r) / 1000.0f;
        playDoneParams.paramsToProperties(lVar);
        TPReportParams.CommonParams commonParams = this.j.getCommonParams();
        commonParams.stepInt = 50;
        commonParams.paramsToProperties(lVar);
        int i2 = this.J;
        if (i2 == 0) {
            a((com.tencent.thumbplayer.tcmedia.common.a.a) lVar, false);
        } else if (i2 == 1) {
            b((com.tencent.thumbplayer.tcmedia.common.a.a) lVar, false);
        }
        if (h == null || TextUtils.isEmpty(this.C) || !this.M) {
            return;
        }
        TPLogUtil.i("TPReportManager", "Cache report event. mFlowId: " + this.C);
        h.a(this.C, lVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        TPLogUtil.i("TPReportManager", "onReportLastEvent");
        com.tencent.thumbplayer.tcmedia.utils.c cVar = h;
        if (cVar == null) {
            return;
        }
        try {
            ArrayList arrayList = (ArrayList) cVar.a();
            if (arrayList == null) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                try {
                    Properties properties = (Properties) arrayList.get(i);
                    if (properties != null) {
                        a(new l(properties));
                    }
                } catch (Exception e2) {
                    TPLogUtil.e("TPReportManager", e2);
                }
            }
        } catch (Exception e3) {
            TPLogUtil.e("TPReportManager", e3);
        }
    }

    private void k() {
        this.q = 0L;
        this.r = 0L;
        this.v = 0;
        this.u = 0;
        this.w = false;
        this.x = false;
        this.o = false;
        this.p = false;
        this.C = "";
        this.D = 0;
        this.E = 0;
        this.G = 0;
        this.H = 0L;
        this.t = 0;
        this.y = false;
        this.A = "";
        this.B = "";
        this.F = "";
        this.J = -1;
        this.z = "0";
        this.P.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        TPLogUtil.d("TPReportManager", "handleReportThreadExit");
        synchronized (this.f) {
            this.g = true;
            this.f.notify();
        }
    }

    private String m() {
        if (this.I == null) {
            return "0";
        }
        if (TextUtils.isEmpty(b)) {
            int i = this.I.getResources().getDisplayMetrics().widthPixels;
            String str = this.I.getResources().getDisplayMetrics().heightPixels + ProxyConfig.MATCH_ALL_SCHEMES + i;
            b = str;
            return str;
        }
        return b;
    }

    private int n() {
        NetworkInfo activeNetworkInfo;
        Context context = this.I;
        if (context == null) {
            return 0;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    return b(activeNetworkInfo.getSubtype());
                }
                if (type == 1) {
                    return 1;
                }
                if (type == 9) {
                    return 10;
                }
            }
            return 0;
        } catch (Exception e2) {
            TPLogUtil.e("TPReportManager", e2);
            return 0;
        }
    }

    private int o() {
        UiModeManager uiModeManager = (UiModeManager) this.I.getSystemService("uimode");
        if (uiModeManager == null) {
            return 2;
        }
        if (uiModeManager.getCurrentModeType() == 4) {
            return 9;
        }
        return (this.I.getResources().getConfiguration().screenLayout & 15) >= 3 ? 5 : 2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.report.ITPBusinessReportManager
    public void setReportInfoGetter(TPDefaultReportInfo tPDefaultReportInfo) {
        this.i = tPDefaultReportInfo;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.report.ITPBusinessReportManager
    public void setReportSamplingRate(double d2) {
        if (d2 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            d2 = 0.0d;
        }
        if (d2 > 1.0d) {
            d2 = 1.0d;
        }
        this.L = d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        TPReportParams.LiveExParam liveExParam = this.j.getLiveExParam();
        long a2 = a(map, "stime", System.currentTimeMillis());
        liveExParam.getSyncFrameDurationInt = (int) (a2 - this.P.c);
        this.j.getFirstLoadParams().firstPacketReadTimeUnix = a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.j.getFirstLoadParams().firstOpenTimeUnix = a(map, "stime", System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int a2 = a(map, "speed", 0);
        this.t = a2;
        e eVar = this.P;
        eVar.k += a2;
        eVar.l++;
        if (a2 > eVar.j) {
            eVar.j = a2;
        }
        String a3 = a(map, "spanId", "");
        if (TextUtils.isEmpty(a3)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(a3);
            if (jSONObject.has("spanId")) {
                this.P.u = jSONObject.getString("spanId");
            }
        } catch (Exception e2) {
            TPLogUtil.e("TPReportManager", e2);
        }
        b(a3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.P.r = a(map, "url", "");
        this.P.s = a(map, "cdnip", "");
        this.P.t = a(map, "cdnuip", "");
        if (TextUtils.isEmpty(this.P.r) || !this.P.r.contains("sid=")) {
            return;
        }
        int indexOf = this.P.r.indexOf("sid=");
        int indexOf2 = this.P.r.indexOf("&", indexOf);
        e eVar = this.P;
        eVar.v = indexOf2 >= 0 ? eVar.r.substring(indexOf + 4, indexOf2) : eVar.r.substring(indexOf + 4);
    }

    private int a(Map<String, Object> map, String str, int i) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? i : ((Integer) obj).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        TPLogUtil.i("TPReportManager", "onLivePeriodReport");
        this.K.a(TPReportParams.LIVE_STEP_PLAY, new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        TPLogUtil.i("TPReportManager", "onAppForeground");
        if (this.n) {
            return;
        }
        this.n = true;
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerRelease");
        if (map == null) {
            return;
        }
        map.put("reason", 1);
        q(map);
    }

    private void q(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayEnd");
        if (map == null || this.m) {
            return;
        }
        this.m = true;
        if (this.J != 1 && this.o) {
            d(new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.x) {
            m(new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.w) {
            k(new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
        this.w = false;
        l lVar = new l();
        this.j.getBufferingTotalParams().paramsToProperties(lVar);
        this.j.getBufferingTotalParams().reset();
        this.j.getUserSeekTotalParams().paramsToProperties(lVar);
        this.j.getUserSeekTotalParams().reset();
        TPReportParams.PlayDoneParams playDoneParams = this.j.getPlayDoneParams();
        playDoneParams.endTimeUnix = a(map, "etime", System.currentTimeMillis());
        playDoneParams.reasonInt = a(map, "reason", 0);
        playDoneParams.errCodeString = this.z;
        long j = this.q;
        if (j > 0) {
            this.r += playDoneParams.endTimeUnix - j;
            this.q = 0L;
        }
        playDoneParams.playDurationFloat = ((float) this.r) / 1000.0f;
        playDoneParams.paramsToProperties(lVar);
        this.K.a(50, lVar);
        this.z = "0";
        this.j.resetAllParam();
        h();
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.k = a(map, "scene", 1.0f) != 1.0f ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onGetCdn");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.GetCdnUrlParams getCdnParams = this.j.getGetCdnParams();
        getCdnParams.proxyIpString = a(map, "ip", "");
        getCdnParams.starTimeUnix = a(map, "stime", 0L);
        getCdnParams.endTimeUnix = a(map, "etime", 0L);
        getCdnParams.errCodeString = a(map, "code", "0");
        getCdnParams.paramsToProperties(lVar);
        this.K.a(15, lVar);
        if (TextUtils.isEmpty(getCdnParams.errCodeString) || getCdnParams.errCodeString.equals("0") || getCdnParams.errCodeString.equals(IdManager.DEFAULT_VERSION_NAME)) {
            return;
        }
        this.z = getCdnParams.errCodeString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "on302Redirect");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.RedirectParams redirectParams = this.j.getRedirectParams();
        redirectParams.cdnTypeInt = a(map, "vt", 0);
        redirectParams.redirectCountInt = a(map, "t302", 0);
        redirectParams.redirectedUrlString = a(map, "url", "");
        redirectParams.starTimeUnix = a(map, "stime", 0L);
        redirectParams.endTimeUnix = a(map, "etime", 0L);
        redirectParams.errCodeString = a(map, "code", "0");
        redirectParams.paramsToProperties(lVar);
        this.K.a(34, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.C = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        this.z = a(map, "code", "0");
        TPDefaultReportInfo tPDefaultReportInfo = this.i;
        if (tPDefaultReportInfo != null) {
            this.J = tPDefaultReportInfo.getPlayType();
        }
        if (this.J == 1) {
            this.K.a(150, new l());
            return;
        }
        map.put("reason", 3);
        this.m = false;
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onLoadSubtitle");
        if (map == null) {
            return;
        }
        this.P.w.add(new f(a(map, "name", ""), a(map, "url", "")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrack");
        if (map == null || this.P.w.size() == 0) {
            return;
        }
        int i = 0;
        if (a(map, "tracktype", 0) != 3) {
            return;
        }
        this.p = true;
        this.P.m = true;
        TPReportParams.LoadSubtitleParams loadSubtitleParams = this.j.getLoadSubtitleParams();
        loadSubtitleParams.starTimeUnix = a(map, "stime", 0L);
        TPDefaultReportInfo tPDefaultReportInfo = this.i;
        if (tPDefaultReportInfo != null) {
            loadSubtitleParams.cdnTypeInt = tPDefaultReportInfo.subtitleCdnType;
            loadSubtitleParams.cgiUrlIndex = tPDefaultReportInfo.subtitleUrlIndex;
        }
        long a2 = a(map, "opaque", -1L);
        String a3 = a(map, "name", "");
        ArrayList<f> arrayList = this.P.w;
        int size = arrayList.size();
        while (i < size) {
            f fVar = arrayList.get(i);
            i++;
            f fVar2 = fVar;
            if (!TextUtils.isEmpty(a3) && fVar2.f10681a.equals(a3)) {
                loadSubtitleParams.subtitleUrlString = fVar2.b;
                fVar2.c = a2;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrackDone");
        if (!this.p || map == null || this.P.w.size() == 0) {
            return;
        }
        long a2 = a(map, "opaque", -1L);
        if (a2 == -1) {
            return;
        }
        ArrayList<f> arrayList = this.P.w;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            f fVar = arrayList.get(i);
            i++;
            if (fVar.c == a2) {
                TPReportParams.LoadSubtitleParams loadSubtitleParams = this.j.getLoadSubtitleParams();
                loadSubtitleParams.endTimeUnix = a(map, "etime", 0L);
                loadSubtitleParams.errCodeString = a(map, "code", "0");
                loadSubtitleParams.bufferingDurationInt = (int) (loadSubtitleParams.endTimeUnix - loadSubtitleParams.starTimeUnix);
                l lVar = new l();
                loadSubtitleParams.paramsToProperties(lVar);
                this.K.a(33, lVar);
                this.p = false;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDef");
        if (map == null) {
            return;
        }
        this.P.q = a(map, "switch", "");
        this.P.o = true;
        if (this.J == 1) {
            this.e.removeMessages(3000);
            f();
            e eVar = this.P;
            eVar.c = 0L;
            eVar.d = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDefEnd");
        if (map == null) {
            return;
        }
        this.P.q = a(map, "switch", "");
        this.P.o = false;
        if (this.J == 1) {
            this.K.a(30, new l());
            this.e.removeMessages(3000);
            this.e.sendEmptyMessageDelayed(3000, 60000L);
            this.P.f10680a = System.currentTimeMillis();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void b() {
        e();
    }

    private long a(Map<String, Object> map, String str, long j) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? j : ((Long) obj).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.thumbplayer.tcmedia.common.a.a aVar, boolean z) {
        TPReportParams.LiveExParam liveExParam = this.j.getLiveExParam();
        if (liveExParam == null) {
            return;
        }
        TPDefaultReportInfo tPDefaultReportInfo = this.i;
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPLiveReportInfo) && z) {
            liveExParam.adPlayLengthInt = ((TPLiveReportInfo) tPDefaultReportInfo).adPlayLength;
            liveExParam.liveProgramIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).programId;
            liveExParam.streamIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).streamId;
            liveExParam.contentIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).contentId;
            liveExParam.playTimeInt = ((TPLiveReportInfo) tPDefaultReportInfo).playTime;
            liveExParam.liveTypeInt = ((TPLiveReportInfo) tPDefaultReportInfo).liveType;
            liveExParam.isUserPayInt = ((TPLiveReportInfo) tPDefaultReportInfo).isUserPay ? 1 : 0;
            liveExParam.isLookBackInt = ((TPLiveReportInfo) tPDefaultReportInfo).isLookBack ? 1 : 0;
            liveExParam.cdnServerString = ((TPLiveReportInfo) tPDefaultReportInfo).cdnServer;
            liveExParam.freeTypeInt = tPDefaultReportInfo.freeType;
            liveExParam.userQXString = tPDefaultReportInfo.uin;
            liveExParam.userIpString = tPDefaultReportInfo.uip;
            liveExParam.isStreamP2PInt = tPDefaultReportInfo.enableP2p ? 1 : 0;
        }
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPLiveReportInfo)) {
            liveExParam.liveDelayInt = ((TPLiveReportInfo) tPDefaultReportInfo).liveDelay;
        }
        liveExParam.isUseP2PInt = this.y ? 1 : 0;
        String str = this.P.r;
        liveExParam.downloadUrl = str;
        if (TextUtils.isEmpty(str)) {
            liveExParam.downloadUrl = this.j.getFirstLoadParams().cdnUrlString;
        }
        liveExParam.downloadServerIpString = this.P.s;
        liveExParam.reportTimeLong = System.currentTimeMillis();
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = (int) (eVar.b + (currentTimeMillis - eVar2.f10680a));
            if (this.m || this.x || eVar2.o) {
                eVar2.f10680a = 0L;
            } else {
                eVar2.f10680a = System.currentTimeMillis();
            }
        }
        e eVar3 = this.P;
        liveExParam.prePlayLengthInt = eVar3.b;
        eVar3.b = 0;
        liveExParam.playerVersionString = TPPlayerConfig.VERSION;
        liveExParam.deviceTypeInt = o();
        liveExParam.networkTypeInt = n();
        e eVar4 = this.P;
        liveExParam.maxSpeedInt = eVar4.j;
        eVar4.j = 0;
        liveExParam.testSpeedInt = this.t;
        int i = eVar4.l;
        if (i > 0) {
            liveExParam.downSpeedInt = eVar4.k / i;
            eVar4.k = 0;
            eVar4.l = 0;
        }
        liveExParam.liveTagInt = 0;
        liveExParam.extraInfoString = "";
        liveExParam.reconnectCntInt = 0;
        liveExParam.connectTimeInt = 0;
        liveExParam.getUrlTimeInt = 0;
        liveExParam.defSwitchString = eVar4.q;
        liveExParam.loadingTimeLong = eVar4.d - eVar4.c;
        liveExParam.blockTimeInt = eVar4.f;
        liveExParam.blockCountInt = eVar4.e;
        eVar4.e = 0;
        eVar4.f = 0;
        liveExParam.errCodeInt = 0;
        liveExParam.fullErrCodeString = this.z;
        liveExParam.spanId = eVar4.u;
        liveExParam.tuid = eVar4.v;
        liveExParam.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.util.Map<java.lang.String, java.lang.Object> r9) {
        /*
            r8 = this;
            boolean r0 = r8.o
            if (r0 == 0) goto L5
            return
        L5:
            java.lang.String r0 = "TPReportManager"
            java.lang.String r1 = "onStartPrepare"
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.i(r0, r1)
            r0 = 0
            r8.m = r0
            java.lang.String r1 = "flowid"
            java.lang.String r2 = ""
            java.lang.String r1 = r8.a(r9, r1, r2)
            r8.C = r1
            java.lang.String r1 = "p2p"
            boolean r1 = r8.a(r9, r1, r0)
            r8.y = r1
            com.tencent.thumbplayer.tcmedia.api.report.TPDefaultReportInfo r1 = r8.i
            if (r1 == 0) goto L2b
            int r1 = r1.getPlayType()
            r8.J = r1
        L2b:
            int r1 = r8.J
            r3 = 1
            if (r1 != r3) goto L38
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$d r1 = new com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$d
            r1.<init>()
        L35:
            r8.K = r1
            goto L40
        L38:
            if (r1 != 0) goto L40
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$g r1 = new com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$g
            r1.<init>()
            goto L35
        L40:
            com.tencent.thumbplayer.tcmedia.utils.l r1 = new com.tencent.thumbplayer.tcmedia.utils.l
            r1.<init>()
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams r4 = r8.j
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams$PlayerInitParams r4 = r4.getInitParams()
            r4.paramsToProperties(r1)
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$c r4 = r8.K
            r5 = 5
            r4.a(r5, r1)
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$e r1 = r8.P
            long r4 = java.lang.System.currentTimeMillis()
            r1.c = r4
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams r1 = r8.j
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams$FirstLoadParams r1 = r1.getFirstLoadParams()
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b$e r4 = r8.P
            java.lang.String r4 = r4.r
            r1.cdnUrlString = r4
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L76
            java.lang.String r4 = "url"
            java.lang.String r2 = r8.a(r9, r4, r2)
            r1.cdnUrlString = r2
        L76:
            com.tencent.thumbplayer.tcmedia.api.report.TPDefaultReportInfo r2 = r8.i
            if (r2 == 0) goto L7e
            int r2 = r2.cdnUrlIndex
            r1.cgiUrlIndex = r2
        L7e:
            java.lang.String r2 = "urlindex"
            int r0 = r8.a(r9, r2, r0)
            r1.cgiUrlIndex = r0
            java.lang.String r0 = "stime"
            r4 = 0
            long r6 = r8.a(r9, r0, r4)
            r1.starTimeUnix = r6
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams r1 = r8.j
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams$FirstRenderParams r1 = r1.getFirstRenderParams()
            long r4 = r8.a(r9, r0, r4)
            r1.starTimeUnix = r4
            r8.o = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b.c(java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerStop");
        if (map == null) {
            return;
        }
        if (this.q > 0) {
            this.r += a(map, "etime", System.currentTimeMillis()) - this.q;
            this.q = 0L;
        }
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
        map.put("reason", 1);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerError");
        if (map == null) {
            return;
        }
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
        this.z = a(map, "code", "0");
        if (this.J == 1) {
            this.K.a(150, new l());
            return;
        }
        map.put("reason", 3);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartSeek");
        if (map == null) {
            return;
        }
        if (this.x) {
            m(new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.w) {
            k(new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(a(map, "pstime", 0L) / 1000)).a());
        }
        this.w = true;
        this.l = 1;
        TPReportParams.UserSeekOnceParams createUserSeekOnceParams = this.j.createUserSeekOnceParams();
        this.O = createUserSeekOnceParams;
        createUserSeekOnceParams.seekStartTimeUnix = a(map, "stime", System.currentTimeMillis());
        TPReportParams.CommonParams commonParams = this.j.getCommonParams();
        TPReportParams.UserSeekOnceParams userSeekOnceParams = this.O;
        userSeekOnceParams.formatInt = commonParams.mediaFormatInt;
        userSeekOnceParams.startPresentTimeLong = a(map, "pstime", 0L) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Map<String, Object> map) {
        TPReportParams.UserSeekOnceParams userSeekOnceParams;
        TPLogUtil.i("TPReportManager", "onSeekComplete");
        this.w = false;
        if (map == null || (userSeekOnceParams = this.O) == null) {
            return;
        }
        userSeekOnceParams.seekEndTimeUnix = a(map, "etime", System.currentTimeMillis());
        this.O.endPresentTimeLong = a(map, "petime", 0L) / 1000;
        TPReportParams.UserSeekOnceParams userSeekOnceParams2 = this.O;
        userSeekOnceParams2.errCodeString = this.z;
        long j = userSeekOnceParams2.seekEndTimeUnix - userSeekOnceParams2.seekStartTimeUnix;
        if (j > 1200) {
            this.v++;
            this.u = (int) (this.u + j);
        }
        TPReportParams.UserSeekTotalParams userSeekTotalParams = this.j.getUserSeekTotalParams();
        userSeekTotalParams.seekTotalCountInt++;
        userSeekTotalParams.seekBufferingDurationInt = this.u;
        userSeekTotalParams.seekBufferingCountInt = this.v;
        if (userSeekTotalParams.seekOnceParamsList.size() < 20) {
            userSeekTotalParams.seekOnceParamsList.add(this.O);
            l lVar = new l();
            this.O.paramsToProperties(lVar);
            this.K.a(40, lVar);
        }
        this.O = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingStart");
        if (map == null) {
            return;
        }
        this.x = true;
        if (this.w) {
            return;
        }
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
        this.P.g = a(map, "stime", System.currentTimeMillis());
        TPReportParams.BufferingOnceParams createBufferingOnceParams = this.j.createBufferingOnceParams();
        this.N = createBufferingOnceParams;
        createBufferingOnceParams.starTimeUnix = this.P.g;
        createBufferingOnceParams.formatInt = a(map, "format", 0);
        TPReportParams.CommonParams commonParams = this.j.getCommonParams();
        TPReportParams.BufferingOnceParams bufferingOnceParams = this.N;
        bufferingOnceParams.formatInt = commonParams.mediaFormatInt;
        bufferingOnceParams.reasonInt = a(map, "reason", 0);
        TPReportParams.BufferingOnceParams bufferingOnceParams2 = this.N;
        bufferingOnceParams2.lastEventInt = this.l;
        bufferingOnceParams2.sceneInt = this.k;
        bufferingOnceParams2.bufferingPresentTimeLong = a(map, "ptime", 0L) / 1000;
        this.N.urlString = a(map, "url", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingEnd");
        this.x = false;
        e eVar = this.P;
        if (!eVar.o) {
            eVar.f10680a = System.currentTimeMillis();
        }
        if (map == null) {
            return;
        }
        long a2 = a(map, "etime", System.currentTimeMillis());
        e eVar2 = this.P;
        long j = eVar2.g;
        int i = (int) (a2 - j);
        if (i > 1200 && !this.w) {
            eVar2.e++;
            eVar2.h = a2;
            eVar2.f += (int) (a2 - j);
            TPReportParams.BufferingOnceParams bufferingOnceParams = this.N;
            if (bufferingOnceParams == null) {
                return;
            }
            bufferingOnceParams.endTimeUnix = a(map, "etime", 0L);
            this.N.errCodeString = this.z;
            TPReportParams.BufferingTotalParams bufferingTotalParams = this.j.getBufferingTotalParams();
            bufferingTotalParams.bufferingCountInt++;
            bufferingTotalParams.bufferingDurationInt += i;
            if (bufferingTotalParams.bufferingOnceParamsList.size() < 20) {
                bufferingTotalParams.bufferingOnceParamsList.add(this.N);
                l lVar = new l();
                this.N.paramsToProperties(lVar);
                this.K.a(35, lVar);
            }
            this.N = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayComplete");
        if (map == null) {
            return;
        }
        map.put("reason", 0);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerReset");
        if (map == null) {
            return;
        }
        map.put("reason", 1);
        q(map);
    }

    private static String a(int i) {
        if (i != 5) {
            if (i != 15) {
                if (i != 30) {
                    if (i != 40) {
                        if (i != 50) {
                            if (i != 150) {
                                if (i != 205) {
                                    if (i != 263) {
                                        switch (i) {
                                            case 32:
                                                return "first_rendering";
                                            case 33:
                                                return "load_subtitle";
                                            case 34:
                                                return "302_redirect";
                                            case 35:
                                                return "second_buffering";
                                            default:
                                                return "";
                                        }
                                    }
                                    return "live_period";
                                }
                                return "live_loading";
                            }
                            return "live_error";
                        }
                        return "play_done";
                    }
                    return "user_seek";
                }
                return "first_load";
            }
            return "get_cdn_url";
        }
        return "init_player";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Map<String, Object> map) {
        if (this.o) {
            this.o = false;
            TPLogUtil.i("TPReportManager", "onPrepareDone");
            if (map == null) {
                return;
            }
            this.P.d = System.currentTimeMillis();
            this.P.n = a(map, "multitrack", false);
            l lVar = new l();
            if (a(map, "playertype", 0) == 1) {
                this.D = 0;
            } else {
                this.D = 1;
            }
            this.F = a(map, "definition", "");
            this.H = a(map, TypedValues.TransitionType.S_DURATION, 0L);
            this.G = (int) a(map, "rate", 0L);
            String a2 = a(map, "fmt", "");
            if (a2 == null || !a2.contains("hls")) {
                this.E = 1;
            } else {
                this.E = 3;
            }
            TPReportParams.FirstLoadParams firstLoadParams = this.j.getFirstLoadParams();
            firstLoadParams.endTimeUnix = a(map, "etime", 0L);
            firstLoadParams.errCodeString = this.z;
            firstLoadParams.paramsToProperties(lVar);
            this.K.a(30, lVar);
            this.j.getFirstLoadParams().reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartPlayer");
        this.m = false;
        if (map == null) {
            return;
        }
        this.P.f10680a = System.currentTimeMillis();
        long a2 = a(map, "stime", 0L);
        if (this.q > 0) {
            this.r += System.currentTimeMillis() - a2;
        }
        this.q = a2;
        if (this.J == 1) {
            this.e.removeMessages(3000);
            this.e.sendEmptyMessageDelayed(3000, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onRenderingStart");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.FirstRenderParams firstRenderParams = this.j.getFirstRenderParams();
        firstRenderParams.endTimeUnix = a(map, "etime", 0L);
        firstRenderParams.errCodeString = this.z;
        firstRenderParams.paramsToProperties(lVar);
        this.K.a(32, lVar);
        this.j.getFirstRenderParams().reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerPause");
        if (map == null) {
            return;
        }
        if (this.q > 0) {
            this.r += a(map, "stime", System.currentTimeMillis()) - this.q;
            this.q = 0L;
        }
        e eVar = this.P;
        if (eVar.f10680a > 0) {
            int i = eVar.b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.P;
            eVar.b = i + ((int) (currentTimeMillis - eVar2.f10680a));
            eVar2.f10680a = 0L;
        }
    }

    public boolean c() {
        boolean z;
        if (Math.random() < this.L) {
            TPLogUtil.i("TPReportManager", "reports are sampled");
            z = true;
        } else {
            TPLogUtil.i("TPReportManager", "reports are not sampled");
            z = false;
        }
        this.M = z;
        return this.M;
    }

    private String a(Map<String, Object> map, String str, String str2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? str2 : (String) obj;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a() {
        d();
    }

    private void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("hitDownloaded")) {
                e eVar = this.P;
                if (eVar.p == -1) {
                    eVar.p = jSONObject.getInt("hitDownloaded");
                }
            }
        } catch (Exception e2) {
            TPLogUtil.e("TPReportManager", e2);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a(int i, int i2, int i3, String str, Object obj) {
        int i4;
        switch (i) {
            case 100:
                i4 = 999;
                break;
            case 101:
                i4 = 1000;
                break;
            case 102:
                i4 = 1001;
                break;
            case 103:
                i4 = 1002;
                break;
            case 104:
                i4 = 1003;
                break;
            case 105:
                i4 = 1012;
                break;
            case 106:
                i4 = 1004;
                break;
            case 107:
                i4 = 1005;
                break;
            case 108:
                i4 = 1006;
                break;
            case 109:
                i4 = 1007;
                break;
            case 110:
                i4 = 1008;
                break;
            case 111:
                i4 = 1009;
                break;
            case 112:
                i4 = 1010;
                break;
            case 113:
                i4 = 1011;
                break;
            case 114:
                i4 = 1013;
                break;
            case 115:
                i4 = 1014;
                break;
            case 116:
                i4 = 1015;
                break;
            case 117:
                i4 = 1016;
                break;
            case 118:
                i4 = 2002;
                break;
            case 119:
                i4 = 1019;
                break;
            case 120:
                i4 = 1020;
                break;
            case 121:
                i4 = 1021;
                break;
            case 122:
                i4 = 2004;
                break;
            case 123:
                i4 = 2005;
                break;
            case 124:
                i4 = 1022;
                break;
            default:
                switch (i) {
                    case 200:
                        i4 = 1017;
                        break;
                    case 201:
                        i4 = 1018;
                        break;
                    case 202:
                        i4 = AnalyticsListener.EVENT_DRM_KEYS_LOADED;
                        break;
                    default:
                        return;
                }
        }
        this.e.obtainMessage(i4, obj).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
        String str;
        if (this.M) {
            HashMap hashMap = new HashMap();
            aVar.a(hashMap);
            if (!hashMap.containsKey("step") || (str = hashMap.get("step")) == null) {
                return;
            }
            String a2 = a(Integer.parseInt(str));
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            com.tencent.thumbplayer.tcmedia.common.a.b.a(a2, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateDone");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.PlayerInitParams initParams = this.j.getInitParams();
        initParams.playEndTimeUnix = a(map, "etime", System.currentTimeMillis());
        initParams.errCodeString = this.z;
        initParams.paramsToProperties(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.tcmedia.common.a.a aVar, int i, boolean z) {
        TPReportParams.CommonParams commonParams = this.j.getCommonParams();
        commonParams.stepInt = i;
        commonParams.seqInt++;
        String str = this.C;
        commonParams.flowIdString = str;
        commonParams.playNoString = str;
        commonParams.signalStrengthInt = this.s;
        commonParams.networkSpeedInt = this.t;
        commonParams.networkTypeInt = n();
        commonParams.deviceNameString = TPSystemInfo.getDeviceName();
        commonParams.deviceResolutionString = m();
        commonParams.osVersionString = f10675a;
        commonParams.p2pVersionString = TPDownloadProxyHelper.getNativeLibVersion();
        commonParams.playerVersionString = TPPlayerConfig.VERSION;
        commonParams.playerTypeInt = this.D;
        commonParams.p2pInt = this.y ? 1 : 0;
        commonParams.proto = this.A;
        commonParams.protover = this.B;
        commonParams.playTypeInt = this.J;
        TPDefaultReportInfo tPDefaultReportInfo = this.i;
        if (tPDefaultReportInfo != null && z) {
            commonParams.testIdInt = tPDefaultReportInfo.testId;
            commonParams.cdnIdInt = tPDefaultReportInfo.cdnId;
            commonParams.downloadTypeInt = tPDefaultReportInfo.dlType;
            commonParams.loginTypeInt = tPDefaultReportInfo.loginType;
            commonParams.mediaFormatInt = tPDefaultReportInfo.mediaFormat;
            commonParams.mediaRateInt = tPDefaultReportInfo.mediaRate;
            commonParams.platformLong = tPDefaultReportInfo.platform;
            commonParams.onlineInt = tPDefaultReportInfo.isOnline ? 1 : 0;
            commonParams.mediaDurationFloat = tPDefaultReportInfo.mediaDuration;
            commonParams.uinString = tPDefaultReportInfo.uin;
            commonParams.qxOpenIdString = tPDefaultReportInfo.qxOpenId;
            commonParams.wxOpenIdString = tPDefaultReportInfo.wxOpenId;
            commonParams.guidString = tPDefaultReportInfo.guid;
            commonParams.uipString = tPDefaultReportInfo.uip;
            commonParams.cdnUipString = tPDefaultReportInfo.cdnUip;
            commonParams.cdnIpString = tPDefaultReportInfo.cdnIp;
            commonParams.appVersionString = tPDefaultReportInfo.appVersion;
            commonParams.vidString = tPDefaultReportInfo.vid;
            commonParams.mediaResolutionString = tPDefaultReportInfo.mediaResolution;
            commonParams.scenesId = tPDefaultReportInfo.scenesId;
            Properties properties = tPDefaultReportInfo.reportInfoProperties;
            if (properties != null) {
                for (Map.Entry entry : properties.entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value == null) {
                        aVar.a(key.toString(), "");
                    } else {
                        aVar.a(key.toString(), value.toString());
                    }
                }
            }
            this.J = this.i.getPlayType();
        }
        if (commonParams.platformLong <= 0) {
            commonParams.platformLong = TPPlayerConfig.getPlatform();
        }
        if (TextUtils.isEmpty(commonParams.uinString)) {
            commonParams.uinString = TPPlayerConfig.getUserUin();
        }
        if (TextUtils.isEmpty(commonParams.guidString)) {
            commonParams.guidString = TPPlayerConfig.getGuid();
        }
        if (TextUtils.isEmpty(commonParams.appVersionString)) {
            commonParams.appVersionString = TPPlayerConfig.getAppVersionName(this.I);
        }
        if (TextUtils.isEmpty(commonParams.uipString)) {
            commonParams.uipString = this.P.t;
        }
        if (TextUtils.isEmpty(commonParams.cdnUipString)) {
            commonParams.cdnUipString = this.P.t;
        }
        if (TextUtils.isEmpty(commonParams.cdnIpString)) {
            commonParams.cdnIpString = this.P.s;
        }
        if (commonParams.downloadTypeInt <= 0) {
            commonParams.downloadTypeInt = this.E;
        }
        if (TextUtils.isEmpty(commonParams.mediaResolutionString)) {
            commonParams.mediaResolutionString = this.F;
        }
        if (commonParams.mediaDurationFloat <= 0.0f) {
            commonParams.mediaDurationFloat = ((float) this.H) / 1000.0f;
        }
        if (commonParams.mediaRateInt <= 0) {
            commonParams.mediaRateInt = this.G;
        }
        commonParams.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.tcmedia.common.a.a aVar, boolean z) {
        TPReportParams.VodExParam vodExParam = this.j.getVodExParam();
        if (vodExParam == null) {
            return;
        }
        TPDefaultReportInfo tPDefaultReportInfo = this.i;
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPVodReportInfo) && z) {
            vodExParam.currentPlayInt = ((TPVodReportInfo) tPDefaultReportInfo).currentPlayState;
            vodExParam.optimizedPlayInt = ((TPVodReportInfo) tPDefaultReportInfo).optimizedPlay;
            vodExParam.hasSubtitleInt = ((TPVodReportInfo) tPDefaultReportInfo).hasSubtitles ? 1 : 0;
            vodExParam.bizIdInt = ((TPVodReportInfo) tPDefaultReportInfo).bizId;
            vodExParam.clipInt = ((TPVodReportInfo) tPDefaultReportInfo).clipCount;
            vodExParam.statusInt = ((TPVodReportInfo) tPDefaultReportInfo).videoStatus;
            vodExParam.freeTypeInt = tPDefaultReportInfo.freeType;
        }
        e eVar = this.P;
        vodExParam.multiTrackInt = eVar.n ? 1 : 0;
        vodExParam.isSelectedSubtitleInt = eVar.m ? 1 : 0;
        vodExParam.hevcLcInt = 0;
        vodExParam.hitDownloaded = eVar.p;
        vodExParam.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is null");
        } else if (!str.startsWith("#EXT-X-PROGRAM-DATE-TIME:")) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is not start with #EXT-X-PROGRAM-DATE-TIME:");
        } else {
            try {
                String substring = str.substring(25);
                int indexOf = substring.indexOf(43);
                if (indexOf != -1) {
                    substring = substring.substring(0, indexOf);
                } else {
                    TPLogUtil.i("TPReportManager", "handleOnPlayerPrivaterHlsM3u8Tag , player_m3u8_tag , tag do not contains time zone");
                }
                str2 = substring.replace('T', ' ');
            } catch (Exception e2) {
                TPLogUtil.e("TPReportManager", e2);
                str2 = "";
            }
            if (TextUtils.isEmpty(str2)) {
                TPLogUtil.i("TPReportManager", "onHandleHlsTag , player_m3u8_tag , dataTime is null ");
                return;
            }
            long j = 0;
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str2);
                if (parse != null) {
                    j = parse.getTime();
                }
            } catch (Exception e3) {
                TPLogUtil.e("TPReportManager", e3);
            }
            long currentTimeMillis = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder("onHandleHlsTag , player_m3u8_tag , sysCurTime: ");
            sb.append(currentTimeMillis);
            sb.append(", time:");
            sb.append(j);
            sb.append(", delay:");
            long j2 = currentTimeMillis - j;
            sb.append(j2);
            TPLogUtil.i("TPReportManager", sb.toString());
            this.P.i = (int) j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateStart");
        if (map == null) {
            return;
        }
        this.j.getInitParams().playStarTimeUnix = a(map, "stime", System.currentTimeMillis());
    }

    private boolean a(Map<String, Object> map, String str, boolean z) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? z : ((Boolean) obj).booleanValue();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.report.ITPBusinessReportManager
    public void reportEvent(int i, Map<String, Object> map) {
    }
}
