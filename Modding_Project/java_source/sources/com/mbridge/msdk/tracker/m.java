package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class m {
    private static final ConcurrentHashMap<String, m> b = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final k f9665a;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                u.a().b();
                m.this.f9665a.p().b();
            } catch (Exception unused) {
                boolean z = com.mbridge.msdk.tracker.a.f9655a;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f9667a;
        final /* synthetic */ JSONObject b;

        public b(e eVar, JSONObject jSONObject) {
            this.f9667a = eVar;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m.this.f9665a.g().a(this.f9667a);
                JSONObject jSONObject = this.b;
                if (jSONObject != null) {
                    jSONObject.put("session_id", m.this.d());
                    long[] e = m.this.e();
                    this.b.put("track_time", e[0]);
                    this.b.put("track_count", e[1]);
                    this.f9667a.a(this.b);
                }
                this.f9667a.b(m.this.f9665a.b().f);
                m.this.f9665a.g().b(this.f9667a);
            } catch (Exception unused) {
            }
        }
    }

    private m(String str, Context context, x xVar) {
        k kVar = new k(str, this);
        this.f9665a = kVar;
        kVar.a(context);
        kVar.a(xVar);
    }

    public static m[] b() {
        ConcurrentHashMap<String, m> concurrentHashMap = b;
        m[] mVarArr = new m[concurrentHashMap.size()];
        try {
            int i = 0;
            for (Map.Entry<String, m> entry : concurrentHashMap.entrySet()) {
                mVarArr[i] = entry.getValue();
                i++;
            }
        } catch (Exception unused) {
            boolean z = com.mbridge.msdk.tracker.a.f9655a;
        }
        return mVarArr;
    }

    public JSONObject c() {
        return this.f9665a.o();
    }

    public String d() {
        return this.f9665a.s();
    }

    public long[] e() {
        return this.f9665a.g().a();
    }

    public String f() {
        return this.f9665a.v();
    }

    public boolean g() {
        return !this.f9665a.w();
    }

    public String h() {
        if (g()) {
            boolean z = com.mbridge.msdk.tracker.a.f9655a;
            return d();
        }
        return this.f9665a.x();
    }

    public static m a(String str, Context context, x xVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentHashMap<String, m> concurrentHashMap = b;
        m mVar = concurrentHashMap.get(str);
        if (y.b(mVar)) {
            m mVar2 = new m(str, context, xVar);
            concurrentHashMap.put(str, mVar2);
            return mVar2;
        }
        return mVar;
    }

    public void c(e eVar) {
        d(eVar);
    }

    public void d(e eVar) {
        if (this.f9665a.w()) {
            boolean z = com.mbridge.msdk.tracker.a.f9655a;
        } else if (eVar != null && b(eVar)) {
            JSONObject d = eVar.d();
            if (d != null && !d.has(CampaignEx.JSON_KEY_ST_TS)) {
                try {
                    d.put(CampaignEx.JSON_KEY_ST_TS, System.currentTimeMillis());
                } catch (Exception unused) {
                }
            }
            try {
                this.f9665a.h().a(new b(eVar, d));
            } catch (Exception unused2) {
                boolean z2 = com.mbridge.msdk.tracker.a.f9655a;
            }
        }
    }

    private boolean b(e eVar) {
        if (y.b(eVar) || TextUtils.isEmpty(eVar.b())) {
            return false;
        }
        return this.f9665a.a(eVar);
    }

    public void a() {
        try {
            this.f9665a.h().a(new a());
        } catch (Exception unused) {
            boolean z = com.mbridge.msdk.tracker.a.f9655a;
        }
    }

    public void a(JSONObject jSONObject) {
        this.f9665a.a(jSONObject);
    }

    public boolean a(String str) {
        return a(new e(str));
    }

    public boolean a(e eVar) {
        try {
            return b(eVar);
        } catch (Exception unused) {
            return false;
        }
    }
}
