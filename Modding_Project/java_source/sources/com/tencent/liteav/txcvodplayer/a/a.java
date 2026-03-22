package com.tencent.liteav.txcvodplayer.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.liteav.LiveSettingJni;
import com.tencent.liteav.base.datareport.Event4XReporter;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.common.c;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {
    public String A;
    public String B;
    private Context E;
    private int J;
    private int K;
    private int M;
    private String O;
    private Map<String, String> P;
    private Event4XReporter Q;
    private Event4XReporter R;
    public int o;

    /* renamed from: a  reason: collision with root package name */
    public String f10314a = null;
    public long b = 0;
    public long c = 0;
    public long d = 0;
    public long e = 0;
    private boolean F = false;
    public boolean f = true;
    public boolean g = false;
    public boolean h = false;
    public int i = 0;
    public int j = 0;
    private int G = 0;
    public long k = 0;
    public int l = -1;
    public int m = 0;
    public int n = 0;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    private int I = 0;
    public int s = 0;
    public String t = "0";
    public String u = "";
    public String v = "";
    public int w = -1;
    public int x = 0;
    public int y = 0;
    public int z = 0;
    private float L = 1.0f;
    public int C = 0;
    public int D = 0;
    private String H = LiteavSystemInfo.getAppVersion();
    private String N = j();

    public a(Context context) {
        this.O = "";
        this.E = context;
        String appId = LicenseChecker.getInstance().getAppId();
        LiteavLog.i("VodLicenseCheck", "getLicenseAppId = ".concat(String.valueOf(appId)));
        this.O = appId;
        this.P = new HashMap();
        this.R = new Event4XReporter(49999, 1004, "", true, 1);
        b("new TXCVodPlayCollection");
    }

    private void g() {
        this.Q.setEventStringValue("str_sdk_name", "liteavSdk");
        this.Q.setEventStringValue("str_brand_type", LiteavSystemInfo.getBrand());
        this.Q.setEventStringValue("str_device_resolution", a(this.E));
        this.Q.setEventStringValue("str_device_type", LiteavSystemInfo.getModel());
        this.Q.setEventIntValue("u32_network_type", LiteavSystemInfo.getNetworkType());
        String deviceUuid = LiteavSystemInfo.getDeviceUuid();
        this.Q.setEventStringValue("dev_uuid", deviceUuid);
        this.Q.setEventStringValue("str_app_version", this.H);
        this.Q.setEventStringValue("str_app_name", LiteavSystemInfo.getAppName());
        this.Q.setEventStringValue("sys_version", String.valueOf(LiteavSystemInfo.getSystemOSVersionInt()));
        this.Q.setEventStringValue("str_stream_url", this.f10314a);
        this.Q.setEventStringValue("bytes_token", this.N);
        String userId = LiveSettingJni.getUserId();
        if (TextUtils.isEmpty(userId)) {
            userId = "_".concat(String.valueOf(deviceUuid));
        }
        this.Q.setEventStringValue("str_user_id", userId);
        this.Q.setEventStringValue("str_package_name", LiteavSystemInfo.getAppPackageName());
        this.Q.setEventStringValue("u32_app_id", this.O);
        this.Q.setEventStringValue("custom_data", h());
    }

    private String h() {
        if (this.P.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : this.P.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }

    private void i() {
        long j;
        long j2;
        long j3;
        int i;
        this.Q = new Event4XReporter(40304, 1011, "", true, 1);
        g();
        this.Q.setEventIntValue("u32_timeuse", this.G);
        this.Q.setEventIntValue("u32_videotime", this.i);
        Event4XReporter event4XReporter = this.Q;
        int i2 = this.m;
        long j4 = 0;
        if (i2 == 0) {
            j = 0;
        } else {
            j = this.n / i2;
        }
        event4XReporter.setEventIntValue("u32_avg_load", j);
        this.Q.setEventIntValue("u32_load_cnt", this.m);
        this.Q.setEventIntValue("u32_max_load", this.o);
        this.Q.setEventIntValue("u32_avg_block_time", this.n);
        this.Q.setEventIntValue("u32_player_type", this.s);
        Event4XReporter event4XReporter2 = this.Q;
        int i3 = this.y;
        if (i3 > 0) {
            j2 = i3;
        } else {
            j2 = 0;
        }
        event4XReporter2.setEventIntValue("u32_dns_time", j2);
        Event4XReporter event4XReporter3 = this.Q;
        int i4 = this.x;
        if (i4 > 0) {
            j3 = i4;
        } else {
            j3 = 0;
        }
        event4XReporter3.setEventIntValue("u32_tcp_did_connect", j3);
        Event4XReporter event4XReporter4 = this.Q;
        int i5 = this.z;
        if (i5 > 0) {
            j4 = i5;
        }
        event4XReporter4.setEventIntValue("u32_first_video_packet", j4);
        this.Q.setEventIntValue("u32_first_i_frame", this.l);
        this.Q.setEventStringValue("u32_server_ip", this.A);
        this.Q.setEventStringValue("u32_drm_type", this.B);
        this.Q.setEventStringValue("str_fileid", this.u);
        this.Q.setEventStringValue("u32_playmode", this.t);
        this.Q.setEventIntValue("u64_err_code", this.J);
        this.Q.setEventStringValue("str_err_info", this.v);
        this.Q.setEventIntValue("u32_video_decode_type", this.w);
        this.Q.setEventIntValue("u32_speed", (int) (this.L * 100.0f));
        this.Q.setEventIntValue("vwidth", this.C);
        this.Q.setEventIntValue("vheight", this.D);
        this.Q.sendReport();
        StringBuilder sb = new StringBuilder("[reportEnd] evt 40304: token=");
        sb.append(this.N);
        sb.append(" ,dev_uuid=");
        sb.append(LiteavSystemInfo.getDeviceUuid());
        sb.append(" ,str_app_version=");
        sb.append(this.H);
        sb.append(" ,sys_version=");
        sb.append(LiteavSystemInfo.getSystemOSVersionInt());
        sb.append(" ,str_stream_url=");
        sb.append(this.f10314a);
        sb.append(" ,u32_timeuse=");
        sb.append(this.G);
        sb.append(" ,u32_videotime=");
        sb.append(this.i);
        sb.append(" ,u32_avg_load=");
        int i6 = this.m;
        if (i6 == 0) {
            i = 0;
        } else {
            i = this.n / i6;
        }
        sb.append(i);
        sb.append(" ,u32_load_cnt=");
        sb.append(this.m);
        sb.append(" ,u32_max_load=");
        sb.append(this.o);
        sb.append(" ,u32_avg_block_time=");
        sb.append(this.n);
        sb.append(" ,u32_player_type=");
        sb.append(this.s);
        sb.append(" ,u32_dns_time=");
        sb.append(this.y);
        sb.append(" ,u32_tcp_did_connect=");
        int i7 = this.x;
        int i8 = -1;
        if (i7 <= 0) {
            i7 = -1;
        }
        sb.append(i7);
        sb.append(" ,u32_first_video_packet=");
        int i9 = this.z;
        if (i9 > 0) {
            i8 = i9;
        }
        sb.append(i8);
        sb.append(" ,u32_first_i_frame=");
        sb.append(this.l);
        sb.append(" ,u32_server_ip=");
        sb.append(this.A);
        sb.append(" ,u32_drm_type=");
        sb.append(this.B);
        sb.append(" ,str_fileid=");
        sb.append(this.u);
        sb.append(" ,u32_playmode=");
        sb.append(this.t);
        sb.append(" ,u64_err_code=");
        sb.append(this.J);
        sb.append(" ,str_err_info=");
        sb.append(this.v);
        sb.append(" ,u32_speed=");
        sb.append(this.L * 100.0f);
        sb.append(" ,u32_app_id=");
        sb.append(this.O);
        sb.append(" ,u32_video_decode_type=");
        sb.append(this.w);
        sb.append(" ,custom_data=");
        sb.append(h());
        sb.append(" ,vwidth=");
        sb.append(this.C);
        sb.append(" ,vheight=");
        sb.append(this.D);
        b(sb.toString());
    }

    private static String j() {
        long currentTimeMillis = System.currentTimeMillis();
        long uptimeMillis = SystemClock.uptimeMillis();
        String str = "";
        for (int i = 5; i >= 0; i--) {
            str = str + String.format("%02x", Byte.valueOf((byte) (255 & (currentTimeMillis >> (i * 8)))));
        }
        for (int i2 = 3; i2 >= 0; i2--) {
            str = str + String.format("%02x", Byte.valueOf((byte) ((uptimeMillis >> (i2 * 8)) & 255)));
        }
        return str + com.tencent.liteav.txcplayer.a.a.b(str + LiteavSystemInfo.getDeviceUuid());
    }

    public final void a(String str, String str2) {
        b("[putCustomData]: <" + str + " ," + str2 + ">");
        this.P.put(str, str2);
    }

    public final void b() {
        if (0 == this.d) {
            b("calculateSegmentPlayTime mBeginPlayTS == 0");
            return;
        }
        b("calculateSegmentPlayTime mCurIndexPlayTime= " + this.k + ", mBeginPlayTS=" + this.d);
        this.k = this.k + ((long) ((int) (System.currentTimeMillis() - this.d)));
        this.d = System.currentTimeMillis();
    }

    public final void c() {
        b("[stop] mCurIndexPlayTime = " + this.k + " ,mIsPaused = " + this.f + " ,mIsPlaying = " + this.F + " ,mIsPreLoading =" + this.g);
        if (this.f) {
            this.d = System.currentTimeMillis();
        }
        if (this.F && !this.g) {
            b();
            this.G = (int) (this.G + (this.k / 1000));
            b("[stop] mPlayTime = " + this.G + " s");
            this.k = 0L;
            i();
            this.N = j();
            this.F = false;
        }
        this.J = 0;
        this.v = "";
        this.p = false;
        this.q = false;
        this.f = false;
        this.g = false;
        this.h = false;
        this.l = -1;
        this.P.clear();
    }

    public final void d() {
        if (this.l == -1) {
            this.l = (int) (System.currentTimeMillis() - this.b);
        }
    }

    public final void e() {
        b("setBitrateRenderStart");
        this.h = false;
    }

    public final void f() {
        this.p = true;
        this.I++;
        this.R.reportDau(1551, 0, "");
        b("mSeekCnt= " + this.I);
    }

    public final void a() {
        this.Q = new Event4XReporter(40303, 1011, "", true, 1);
        g();
        this.Q.setEventStringValue("str_fileid", this.u);
        LicenseChecker.d a2 = c.a();
        if (a2 != LicenseChecker.d.OK) {
            int i = a2.value;
            this.J = i;
            this.v = "player_license_error";
            this.Q.setEventStringValue("u64_err_code", String.valueOf(i));
            this.Q.setEventStringValue("str_err_info", this.v);
        }
        this.Q.sendReport();
        b("[reportStart], report evt 40303: token=" + this.N + " ,u32_app_id=" + this.O + " ,str_fileid=" + this.u + " ,str_stream_url=" + this.f10314a + " ,u64_err_code=" + this.J + " ,str_err_info=" + this.v);
    }

    public final void b(boolean z) {
        if (z) {
            this.K = 1;
            this.R.reportDau(1553, 0, "");
        } else {
            this.K = 0;
        }
        b(" mIsMirror= " + this.K);
    }

    public final void b(String str) {
        LiteavLog.i("TXCVodPlayCollection", "[" + hashCode() + "], " + str);
    }

    private static String a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        Display defaultDisplay = windowManager.getDefaultDisplay();
        try {
            Class<?> cls = Class.forName("android.view.Display");
            if (LiteavSystemInfo.getSystemOSVersionInt() > 8) {
                cls.getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            }
            int i = displayMetrics.heightPixels;
            int i2 = displayMetrics.widthPixels;
            return i2 + "_" + i;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final void c(boolean z) {
        if (!z) {
            this.h = true;
        }
        this.M++;
        this.R.reportDau(1554, 0, "");
        b("setBitrateIndexCnt= " + this.M);
    }

    public final void a(boolean z) {
        this.F = true;
        long currentTimeMillis = System.currentTimeMillis();
        this.d = currentTimeMillis;
        this.b = currentTimeMillis;
        this.c = System.currentTimeMillis();
        this.G = 0;
        this.k = 0L;
        this.j = 0;
        this.e = 0L;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        if (z) {
            this.f = false;
        } else {
            this.g = true;
        }
        b("[start] ,mBeginPlayTS = " + this.d + ", mIsPaused = " + this.f + " mIsPreLoading = " + this.g);
    }

    public final void a(float f) {
        this.L = f;
        this.R.reportDau(1552, 0, "");
        b("[changeSpeed], mSpeed = " + this.L);
    }

    public final void a(int i, String str) {
        b("errorCode= " + i + " ，errorInfo= " + str);
        if (this.l == -1) {
            this.J = i;
            if (str == null) {
                str = "";
            }
            this.v = str;
            this.l = 0;
        } else {
            this.J = i;
            StringBuilder sb = new StringBuilder("errorCode=");
            sb.append(i);
            sb.append("_errorInfo=");
            if (str == null) {
                str = "";
            }
            sb.append(str);
            this.v = sb.toString();
        }
        if (this.F) {
            c();
        }
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(this.O)) {
            this.O = str;
        }
    }
}
