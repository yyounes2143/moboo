package com.mbridge.msdk.videocommon.net;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f10021a = "com.mbridge.msdk.videocommon.net.a";

    public void a(Context context, String str, String str2) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a("sign", SameMD5.getMD5(str + str2));
        try {
            com.mbridge.msdk.videocommon.setting.a d = com.mbridge.msdk.videocommon.setting.b.b().d();
            if (d == null) {
                eVar.a("vtag", "");
            } else {
                String j = d.j();
                if (TextUtils.isEmpty(j)) {
                    j = "";
                }
                eVar.a("vtag", j);
            }
        } catch (Throwable th) {
            o0.b(f10021a, th.getMessage());
        }
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, new C0191a(str), "setting", 60000L);
        a(3, 2, "");
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.videocommon.net.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0191a extends com.mbridge.msdk.foundation.same.net.wrapper.d {
        final /* synthetic */ String b;

        public C0191a(String str) {
            this.b = str;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                if (t0.a(jSONObject)) {
                    com.mbridge.msdk.videocommon.setting.b.b().b(false);
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String d = com.mbridge.msdk.videocommon.setting.b.b().d(this.b);
                        if (!TextUtils.isEmpty(d)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(d), jSONObject);
                            } catch (Exception e) {
                                o0.b(a.f10021a, e.getMessage());
                            }
                        }
                    }
                    try {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        com.mbridge.msdk.videocommon.setting.b.b().f(this.b, jSONObject.toString());
                    } catch (JSONException e2) {
                        o0.b(a.f10021a, e2.getMessage());
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().f(this.b);
                }
                a.this.a(1, 2, "");
            } catch (Throwable th) {
                o0.b(a.f10021a, th.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            com.mbridge.msdk.videocommon.setting.b.b().b(false);
            o0.b(a.f10021a, str);
            a.this.a(2, 2, str);
        }
    }

    public void a(Context context, String str, String str2, String str3, c cVar) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a("sign", SameMD5.getMD5(str + str2));
        eVar.a("unit_ids", "[" + str3 + "]");
        try {
            com.mbridge.msdk.videocommon.setting.c d = com.mbridge.msdk.videocommon.setting.b.b().d(str, str3);
            if (d == null) {
                eVar.a("vtag", "");
            } else {
                String G = d.G();
                if (TextUtils.isEmpty(G)) {
                    G = "";
                }
                eVar.a("vtag", G);
            }
        } catch (Throwable th) {
            o0.b(f10021a, th.getMessage());
        }
        b bVar = new b(str, cVar);
        bVar.setUnitId(str3);
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, bVar, "setting", 60000L);
        a(3, 3, "");
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.foundation.same.net.wrapper.d {
        final /* synthetic */ String b;
        final /* synthetic */ c c;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.videocommon.net.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class RunnableC0192a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JSONObject f10022a;

            public RunnableC0192a(JSONObject jSONObject) {
                this.f10022a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.videocommon.setting.b b = com.mbridge.msdk.videocommon.setting.b.b();
                b bVar = b.this;
                b.a(bVar.b, bVar.unitId, this.f10022a.toString());
            }
        }

        public b(String str, c cVar) {
            this.b = str;
            this.c = cVar;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                try {
                    com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
                } catch (Exception e) {
                    o0.b(a.f10021a, e.getMessage());
                }
                if (t0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String b = com.mbridge.msdk.videocommon.setting.b.b().b(this.b, this.unitId);
                        if (!TextUtils.isEmpty(b)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(b), jSONObject);
                            } catch (Exception e2) {
                                o0.b(a.f10021a, e2.getMessage());
                            }
                        }
                    }
                    if (com.mbridge.msdk.videocommon.setting.b.c(jSONObject.toString())) {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        RunnableC0192a runnableC0192a = new RunnableC0192a(jSONObject);
                        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(runnableC0192a);
                        } else {
                            runnableC0192a.run();
                        }
                        c cVar = this.c;
                        if (cVar != null) {
                            cVar.a("request success");
                        }
                    } else {
                        c cVar2 = this.c;
                        if (cVar2 != null) {
                            cVar2.onFailed("data error");
                        }
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().g(this.b, this.unitId);
                }
                a.this.a(1, 3, "");
            } catch (Throwable th) {
                o0.b(a.f10021a, th.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            try {
                com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
            } catch (Exception e) {
                o0.b(a.f10021a, e.getMessage());
            }
            if (!TextUtils.isEmpty(str)) {
                c cVar = this.c;
                if (cVar != null) {
                    cVar.onFailed(str);
                }
            } else {
                c cVar2 = this.c;
                if (cVar2 != null) {
                    cVar2.onFailed("request error");
                }
            }
            a.this.a(2, 3, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, String str) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(d.h().t));
            eVar.a("result", Integer.valueOf(i));
            eVar.a("type", Integer.valueOf(i2));
            eVar.a("url", d.h().s ? d.h().U : d.h().T);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th) {
            o0.b(f10021a, th.getMessage());
        }
    }
}
