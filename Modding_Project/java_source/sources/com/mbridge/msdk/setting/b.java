package com.mbridge.msdk.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.i0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {
    public static int c1 = 1500;
    private boolean D0;
    private long F;
    private JSONArray F0;
    private JSONObject G0;
    private ArrayList<Integer> H;
    private d I;
    private long I0;
    private C0152b J;
    private long N0;
    private HashMap<String, String> O;
    private boolean O0;
    private String P;
    private int U;
    private String U0;
    private String X;
    private Map<String, String> Y;
    private int a1;
    private String b1;
    private int h0;
    private String k0;
    private int l;
    private String l0;
    private List<com.mbridge.msdk.foundation.entity.a> n;
    private int o0;
    private long p;
    private int p0;
    private com.mbridge.msdk.setting.a q;
    private int q0;
    private String r;
    private int r0;
    private Map<String, a> s;
    private boolean t;
    private int u;
    private long u0;
    private long v0;

    /* renamed from: a  reason: collision with root package name */
    private boolean f9432a = false;
    private JSONArray b = new JSONArray();
    private JSONArray c = new JSONArray();
    private String d = "";
    private int e = 0;
    private int f = 0;
    private int g = 2;
    private int h = 0;
    private String i = "";
    private String j = "";
    private String k = "";
    private int m = 0;
    private int o = 0;
    private int v = 1;
    private boolean w = false;
    private String x = "";
    private String y = "";
    private String z = "";
    private String A = "";
    private String B = "";
    private int C = 120;
    private String D = com.mbridge.msdk.foundation.same.net.utils.d.h().i;
    private String E = com.mbridge.msdk.foundation.same.net.utils.d.h().m;
    private int G = c1;
    private int K = 0;
    private long L = 86400;
    private int M = 0;
    private int N = 3;
    private boolean Q = true;
    private int R = 0;
    private boolean S = false;
    private boolean T = false;
    private int V = 0;
    private int W = 0;
    private String Z = "1.0";
    private int a0 = 30;
    private int b0 = 9377;
    private int c0 = 0;
    private int d0 = 5;
    private int e0 = 1;
    private int f0 = 8000;
    private String g0 = "";
    private int i0 = 10;
    private int j0 = 120;
    private String m0 = "";
    private String n0 = "";
    private String s0 = "";
    private String t0 = "";
    private List<Integer> w0 = new ArrayList();
    private int x0 = 3;
    private int y0 = 0;
    private int z0 = 3;
    private int A0 = 0;
    private int B0 = 10;
    private int C0 = 600;
    private int E0 = 0;
    private String H0 = "";
    private int J0 = 8000;
    private int K0 = 1;
    private long L0 = 10;
    private int M0 = 3;
    private int P0 = 1;
    private int Q0 = 1;
    private int R0 = 1;
    private int S0 = 1;
    private String T0 = "";
    private int V0 = 1300;
    private int W0 = 0;
    private int X0 = 0;
    private long Y0 = 3600;
    private String Z0 = "";

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f9433a;
        private List<String> b;
        private List<String> c;
        private List<String> d;

        public List<String> a() {
            return this.f9433a;
        }

        public List<String> b() {
            return this.b;
        }

        public List<String> c() {
            return this.c;
        }

        public List<String> d() {
            return this.d;
        }

        public void a(JSONObject jSONObject) {
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("x");
                if (optJSONArray != null) {
                    this.c = b0.a(optJSONArray);
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray("y");
                if (optJSONArray2 != null) {
                    this.d = b0.a(optJSONArray2);
                }
                JSONArray optJSONArray3 = jSONObject.optJSONArray("width");
                if (optJSONArray3 != null) {
                    this.b = b0.a(optJSONArray3);
                }
                JSONArray optJSONArray4 = jSONObject.optJSONArray("height");
                if (optJSONArray4 != null) {
                    this.f9433a = b0.a(optJSONArray4);
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String a(Context context, String str) {
        try {
            g d = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d != null && d.G() != null) {
                String host = Uri.parse(str).getHost();
                for (Map.Entry<String, String> entry : d.G().entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(host) && host.contains(key)) {
                        String str2 = d.G().get(key);
                        if (TextUtils.isEmpty(str2)) {
                            return "";
                        }
                        return str2.replace("{gaid}", com.mbridge.msdk.foundation.tools.f.d());
                    }
                }
                return "";
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public long A() {
        return this.L;
    }

    public boolean A0() {
        return this.Q;
    }

    public int B() {
        return this.N;
    }

    public boolean B0() {
        return this.t;
    }

    public HashMap<String, String> C() {
        return this.O;
    }

    public boolean C0() {
        return this.w;
    }

    public void D(int i) {
        this.a1 = i;
    }

    public boolean D0() {
        return this.S;
    }

    public int E() {
        return this.U;
    }

    public boolean E0() {
        return this.f9432a;
    }

    public int F() {
        return this.V;
    }

    public boolean F0() {
        if (!TextUtils.isEmpty(this.B) && !TextUtils.isEmpty(this.z) && !TextUtils.isEmpty(this.A) && !TextUtils.isEmpty(this.x)) {
            return true;
        }
        return false;
    }

    public Map<String, String> G() {
        return this.Y;
    }

    public boolean G0() {
        if (!TextUtils.isEmpty(this.B) && !TextUtils.isEmpty(this.z) && !TextUtils.isEmpty(this.A) && !TextUtils.isEmpty(this.y)) {
            return true;
        }
        return false;
    }

    public JSONArray H() {
        return this.b;
    }

    public boolean H0() {
        return this.T;
    }

    public JSONArray I() {
        return this.c;
    }

    public boolean I0() {
        return this.D0;
    }

    public String J() {
        return this.Z;
    }

    public boolean J0() {
        return this.O0;
    }

    public int K() {
        return this.e0;
    }

    public void K0() {
        String language = Locale.getDefault().getLanguage();
        if (!G0()) {
            if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                this.B = "确认关闭？";
                this.z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.y = "继续观看";
            } else {
                this.B = "Confirm to close? ";
                this.z = "You will not be rewarded after closing the window";
                this.A = "Close it";
                this.y = "Continue";
            }
        }
        if (!F0()) {
            if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                this.B = "确认关闭？";
                this.z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.x = "继续试玩";
                return;
            }
            this.B = "Confirm to close? ";
            this.z = "You will not be rewarded after closing the window";
            this.A = "Close it";
            this.x = "Continue";
        }
    }

    public int L() {
        return this.f0;
    }

    public int M() {
        return this.h0;
    }

    public int N() {
        return this.j0;
    }

    public String O() {
        return this.k0;
    }

    public String P() {
        return this.l0;
    }

    public String Q() {
        return this.Z0;
    }

    public long R() {
        return this.Y0;
    }

    public int S() {
        return this.a1;
    }

    public String T() {
        return this.m0;
    }

    public String U() {
        return this.n0;
    }

    public int V() {
        return this.o0;
    }

    public int W() {
        return this.p0;
    }

    public int X() {
        return this.q0;
    }

    public int Y() {
        return this.r0;
    }

    public long Z() {
        return this.u0;
    }

    public long a0() {
        if (this.v0 <= 0) {
            this.v0 = 7200L;
        }
        return this.v0;
    }

    public void b(Map<String, String> map) {
        this.Y = map;
    }

    public int b0() {
        return this.x0;
    }

    public void c(int i) {
        this.e = i;
    }

    public int c0() {
        return this.y0;
    }

    public void d(long j) {
        this.Y0 = j;
    }

    public int d0() {
        return this.z0;
    }

    public void e(int i) {
        this.g = i;
    }

    public int e0() {
        return this.A0;
    }

    public void f(int i) {
        this.h = i;
    }

    public int f0() {
        return this.B0;
    }

    public void g(int i) {
        this.l = i;
    }

    public int g0() {
        return this.C0;
    }

    public void h(int i) {
        this.m = i;
    }

    public int h0() {
        return this.E0;
    }

    public void i(int i) {
        this.o = i;
    }

    public JSONArray i0() {
        return this.F0;
    }

    public com.mbridge.msdk.setting.a j() {
        return this.q;
    }

    public JSONObject j0() {
        return this.G0;
    }

    public String k() {
        return this.r;
    }

    public String k0() {
        return this.H0;
    }

    public Map<String, a> l() {
        return this.s;
    }

    public long l0() {
        return this.I0;
    }

    public int m() {
        return this.u;
    }

    public int m0() {
        return this.J0;
    }

    public int n() {
        return this.v;
    }

    public int n0() {
        return this.K0;
    }

    public String o() {
        return this.x;
    }

    public long o0() {
        return this.L0 * 1000;
    }

    public String p() {
        return this.y;
    }

    public int p0() {
        return this.M0;
    }

    public String q() {
        return this.z;
    }

    public long q0() {
        return this.N0;
    }

    public String r() {
        return this.A;
    }

    public int r0() {
        return this.P0;
    }

    public String s() {
        return this.B;
    }

    public int s0() {
        return this.Q0;
    }

    public void t(String str) {
        this.Z0 = str;
    }

    public int t0() {
        return this.R0;
    }

    public String toString() {
        return " cfc=" + this.u + " getpf=" + this.L + " rurl=" + this.D0;
    }

    public String u() {
        return this.D;
    }

    public int u0() {
        return this.S0;
    }

    public String v() {
        return this.E;
    }

    public String v0() {
        return this.T0;
    }

    public long w() {
        return this.F;
    }

    public String w0() {
        return this.U0;
    }

    public ArrayList<Integer> x() {
        return this.H;
    }

    public int x0() {
        return this.V0;
    }

    public d y() {
        return this.I;
    }

    public int y0() {
        return this.W0;
    }

    public C0152b z() {
        return this.J;
    }

    public int z0() {
        return this.X0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04df A[Catch: Exception -> 0x0544, TryCatch #9 {Exception -> 0x0544, blocks: (B:125:0x04bd, B:127:0x04df, B:128:0x04e1, B:130:0x04e6, B:131:0x04e8, B:133:0x04ed, B:134:0x04ef, B:136:0x04f4, B:137:0x04f6, B:140:0x0502), top: B:197:0x04bd }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04e6 A[Catch: Exception -> 0x0544, TryCatch #9 {Exception -> 0x0544, blocks: (B:125:0x04bd, B:127:0x04df, B:128:0x04e1, B:130:0x04e6, B:131:0x04e8, B:133:0x04ed, B:134:0x04ef, B:136:0x04f4, B:137:0x04f6, B:140:0x0502), top: B:197:0x04bd }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04ed A[Catch: Exception -> 0x0544, TryCatch #9 {Exception -> 0x0544, blocks: (B:125:0x04bd, B:127:0x04df, B:128:0x04e1, B:130:0x04e6, B:131:0x04e8, B:133:0x04ed, B:134:0x04ef, B:136:0x04f4, B:137:0x04f6, B:140:0x0502), top: B:197:0x04bd }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04f4 A[Catch: Exception -> 0x0544, TryCatch #9 {Exception -> 0x0544, blocks: (B:125:0x04bd, B:127:0x04df, B:128:0x04e1, B:130:0x04e6, B:131:0x04e8, B:133:0x04ed, B:134:0x04ef, B:136:0x04f4, B:137:0x04f6, B:140:0x0502), top: B:197:0x04bd }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x05b4 A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x05cb A[Catch: Exception -> 0x028d, TRY_LEAVE, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x033f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0287 A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0290 A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0313 A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0329 A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03ad A[Catch: Exception -> 0x028d, TryCatch #3 {Exception -> 0x028d, blocks: (B:5:0x0016, B:9:0x006c, B:14:0x00c0, B:37:0x0176, B:38:0x0179, B:40:0x0287, B:52:0x02c6, B:56:0x02e4, B:58:0x0301, B:60:0x0307, B:61:0x030d, B:63:0x0313, B:65:0x0319, B:66:0x0320, B:67:0x0323, B:69:0x0329, B:70:0x0333, B:89:0x0398, B:91:0x03a0, B:94:0x03a7, B:96:0x03ad, B:97:0x03b5, B:99:0x03bb, B:101:0x03c7, B:103:0x03cd, B:111:0x045c, B:124:0x04a7, B:142:0x054d, B:150:0x0571, B:163:0x05a5, B:164:0x05a8, B:166:0x05b4, B:167:0x05bf, B:169:0x05cb, B:159:0x059d, B:153:0x058d, B:149:0x056e, B:123:0x049e, B:88:0x038f, B:43:0x0290, B:45:0x029b, B:47:0x02a1, B:48:0x02a7, B:50:0x02ad, B:51:0x02c3, B:13:0x00bb, B:8:0x0068, B:143:0x055f, B:147:0x056a, B:151:0x0583, B:154:0x0590, B:157:0x0599, B:112:0x0477, B:116:0x0488, B:120:0x0493, B:160:0x05a0, B:72:0x033f, B:73:0x0351, B:75:0x0357, B:77:0x0363, B:79:0x036d, B:81:0x037b, B:84:0x0385, B:86:0x038b), top: B:185:0x0016, inners: #0, #1, #4, #5, #8, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mbridge.msdk.setting.g b(org.json.JSONObject r19) {
        /*
            Method dump skipped, instructions count: 1504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.setting.b.b(org.json.JSONObject):com.mbridge.msdk.setting.g");
    }

    public void A(int i) {
        if (i > 0) {
            this.i0 = i;
        }
    }

    public void B(int i) {
        this.h0 = i;
    }

    public void C(int i) {
        this.j0 = i;
    }

    public int D() {
        return this.R;
    }

    public void E(int i) {
        this.o0 = i;
    }

    public void F(int i) {
        this.p0 = i;
    }

    public void G(int i) {
        this.q0 = i;
    }

    public void H(int i) {
        this.r0 = i;
    }

    public void I(int i) {
        this.x0 = i;
    }

    public void J(int i) {
        this.y0 = i;
    }

    public void K(int i) {
        this.z0 = i;
    }

    public void L(int i) {
        this.A0 = i;
    }

    public void M(int i) {
        this.B0 = i;
    }

    public void N(int i) {
        this.C0 = i;
    }

    public void O(int i) {
        this.E0 = i;
    }

    public void P(int i) {
        this.J0 = i;
    }

    public void Q(int i) {
        this.K0 = i;
    }

    public void R(int i) {
        this.M0 = i;
    }

    public void S(int i) {
        this.P0 = i;
    }

    public void T(int i) {
        this.Q0 = i;
    }

    public void U(int i) {
        this.R0 = i;
    }

    public void V(int i) {
        this.S0 = i;
    }

    public void W(int i) {
        this.V0 = i;
    }

    public void X(int i) {
        this.W0 = i;
    }

    public void Y(int i) {
        this.X0 = i;
    }

    public void c(String str) {
        this.i = str;
    }

    public void d(int i) {
        this.f = i;
    }

    public void e(String str) {
        this.k = str;
    }

    public int f() {
        return this.m;
    }

    public List<com.mbridge.msdk.foundation.entity.a> g() {
        return this.n;
    }

    public int h() {
        return this.o;
    }

    public long i() {
        return this.p;
    }

    public void j(int i) {
        this.u = i;
    }

    public void k(int i) {
        this.v = i;
    }

    public void l(int i) {
        this.C = i;
    }

    public void m(String str) {
        this.E = str;
    }

    public void n(int i) {
        this.K = i;
    }

    public void o(int i) {
        this.M = i;
        com.mbridge.msdk.foundation.same.net.utils.d.h().d(i);
    }

    public void p(int i) {
        this.N = i;
    }

    public void q(int i) {
        this.R = i;
    }

    public void r(int i) {
        this.U = i;
    }

    public void s(int i) {
        this.V = i;
    }

    public int t() {
        return this.C;
    }

    public void u(int i) {
        this.a0 = i;
    }

    public void v(int i) {
        this.b0 = i;
        com.mbridge.msdk.foundation.same.net.utils.d.h().b(i);
        com.mbridge.msdk.foundation.same.net.utils.d.h().c(i);
    }

    public void w(int i) {
        this.c0 = i;
    }

    public void x(int i) {
        this.d0 = i;
    }

    public void y(int i) {
        this.e0 = i;
    }

    public void z(int i) {
        this.f0 = i;
    }

    public void A(String str) {
        this.T0 = str;
    }

    public void B(String str) {
        this.U0 = str;
    }

    public String c() {
        return this.j;
    }

    public void d(String str) {
        this.j = str;
    }

    public int e() {
        return this.l;
    }

    public void f(String str) {
        this.r = str;
    }

    public void g(String str) {
        this.x = str;
    }

    public void h(String str) {
        this.y = str;
    }

    public void i(String str) {
        this.z = str;
    }

    public void j(String str) {
        this.A = str;
    }

    public void k(String str) {
        this.B = str;
    }

    public void l(String str) {
        this.D = str;
    }

    public void m(int i) {
        this.G = i;
        com.mbridge.msdk.click.utils.a.c = i;
    }

    public void n(String str) {
        this.b1 = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e.a().b(i0.a(str));
    }

    public void p(String str) {
        this.X = str;
    }

    public void q(String str) {
        this.Z = str;
    }

    public void r(String str) {
        this.k0 = str;
    }

    public void s(String str) {
        this.l0 = str;
    }

    public void t(int i) {
        this.W = i;
    }

    public void u(String str) {
        this.m0 = str;
    }

    public void w(String str) {
        this.s0 = str;
    }

    public void x(String str) {
        this.t0 = str;
    }

    public void y(String str) {
        this.H0 = str;
    }

    public void z(String str) {
        if (TextUtils.isEmpty(this.g0)) {
            return;
        }
        this.g0 = str;
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.c.m().i())) {
            com.mbridge.msdk.foundation.controller.c.m().d(this.g0);
        }
    }

    public void c(long j) {
        this.L = j;
    }

    public String d() {
        return this.k;
    }

    public void e(long j) {
        this.u0 = j;
    }

    public void f(long j) {
        this.v0 = j;
    }

    public void g(long j) {
        this.I0 = j;
    }

    public void h(long j) {
        this.L0 = j;
    }

    public void i(long j) {
        this.N0 = j;
    }

    public void o(String str) {
        this.P = str;
    }

    public void c(JSONArray jSONArray) {
        this.F0 = jSONArray;
    }

    public void d(boolean z) {
        this.S = z;
    }

    public void e(boolean z) {
        this.f9432a = z;
    }

    public void f(boolean z) {
        this.T = z;
    }

    public void g(boolean z) {
        this.D0 = z;
    }

    public void h(boolean z) {
        this.O0 = z;
    }

    public void v(String str) {
        this.n0 = str;
    }

    public void c(JSONObject jSONObject) {
        this.G0 = jSONObject;
    }

    public void c(boolean z) {
        this.w = z;
    }

    public static Map<String, a> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                a aVar = new a();
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                if (optJSONObject != null) {
                    aVar.a(optJSONObject);
                }
                hashMap.put(next, aVar);
            }
            return hashMap;
        } catch (JSONException e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
            return null;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            return null;
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.setting.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0152b {

        /* renamed from: a  reason: collision with root package name */
        private String f9434a;
        private JSONArray b;
        private String c;
        private String d;
        private String e;
        private String f;

        public static C0152b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            C0152b c0152b = new C0152b();
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            c0152b.f = jSONObject.optString(CampaignEx.JSON_KEY_TITLE, d.getString(g0.a(d, "mbridge_cm_feedback_dialog_title", TypedValues.Custom.S_STRING)));
            c0152b.f9434a = jSONObject.optString("cancel", d.getString(g0.a(d, "mbridge_cm_feedback_dialog_close_close", TypedValues.Custom.S_STRING)));
            c0152b.d = jSONObject.optString("submit", d.getString(g0.a(d, "mbridge_cm_feedback_dialog_close_submit", TypedValues.Custom.S_STRING)));
            c0152b.e = jSONObject.optString("submit_notice", d.getString(g0.a(d, "mbridge_cm_feedback_dialog_submit_notice", TypedValues.Custom.S_STRING)));
            c0152b.c = jSONObject.optString("privacy", d.getString(g0.a(d, "mbridge_cm_feedback_dialog_privacy_des", TypedValues.Custom.S_STRING)));
            JSONArray optJSONArray = jSONObject.optJSONArray("content");
            c0152b.b = optJSONArray;
            if (optJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                c0152b.b = jSONArray;
                jSONArray.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_not_play", TypedValues.Custom.S_STRING)));
                c0152b.b.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_sound_problems", TypedValues.Custom.S_STRING)));
                c0152b.b.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_misleading", TypedValues.Custom.S_STRING)));
                c0152b.b.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_fraud", TypedValues.Custom.S_STRING)));
                c0152b.b.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_por_violence", TypedValues.Custom.S_STRING)));
                c0152b.b.put(d.getString(g0.a(d, "mbridge_cm_feedback_dialog_content_other", TypedValues.Custom.S_STRING)));
            }
            return c0152b;
        }

        public JSONArray b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.d;
        }

        public String e() {
            return this.e;
        }

        public String f() {
            return this.f;
        }

        public String a() {
            return this.f9434a;
        }
    }

    public void a(int i) {
        this.w0.add(Integer.valueOf(i));
    }

    private static void a(JSONObject jSONObject) {
        FastKV fastKV = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKV = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKV != null) {
            try {
                Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject == null || d == null) {
                    return;
                }
                String optString = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                if (!TextUtils.isEmpty(optString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString)) {
                    com.mbridge.msdk.foundation.same.a.V = optString;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                    try {
                        fastKV.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    } catch (Exception unused2) {
                    }
                }
                String optString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(optString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.g, optString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.g = optString2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.g);
                try {
                    fastKV.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.g);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject == null || d2 == null) {
                return;
            }
            String optString3 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            if (!TextUtils.isEmpty(optString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString3)) {
                com.mbridge.msdk.foundation.same.a.V = optString3;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                SharedPreferences sharedPreferences = d2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    edit.apply();
                }
            }
            String optString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(optString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.g, optString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.g = optString4;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.g);
            SharedPreferences sharedPreferences2 = d2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                edit2.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.g);
                edit2.apply();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String a() {
        return this.d;
    }

    public void a(List<com.mbridge.msdk.foundation.entity.a> list) {
        this.n = list;
    }

    public void a(long j) {
        this.p = j;
    }

    public void a(com.mbridge.msdk.setting.a aVar) {
        this.q = aVar;
    }

    public void a(Map<String, a> map) {
        this.s = map;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.H = arrayList;
    }

    public void a(d dVar) {
        this.I = dVar;
    }

    public void a(C0152b c0152b) {
        this.J = c0152b;
    }

    public void a(HashMap<String, String> hashMap) {
        this.O = hashMap;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000088");
        }
        this.b = jSONArray;
    }

    public void a(boolean z) {
        this.Q = z;
    }

    public void b(String str) {
        this.d = str;
    }

    public String b() {
        return this.i;
    }

    public void b(long j) {
        this.F = j;
    }

    public void b(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000041");
            jSONArray.put("2000042");
            jSONArray.put("2000032");
            jSONArray.put("2000079");
        }
        this.c = jSONArray;
    }

    public void b(boolean z) {
        this.t = z;
    }

    public boolean b(int i) {
        return this.w0.contains(Integer.valueOf(i));
    }
}
