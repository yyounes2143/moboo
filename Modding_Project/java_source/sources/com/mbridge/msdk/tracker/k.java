package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.tracker.x;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class k {
    private static volatile String o = "";

    /* renamed from: a  reason: collision with root package name */
    private final String f9664a;
    private final m b;
    private Context c;
    private x d;
    private JSONObject e;
    private List<String> f;
    private List<String> g;
    private volatile c h;
    private volatile l i;
    private volatile d j;
    private volatile j k;
    private volatile s l;
    private volatile boolean m = true;
    private volatile o n;

    public k(String str, m mVar) {
        this.f9664a = str;
        this.b = mVar;
    }

    public void a(Context context) {
        this.c = context;
    }

    public x b() {
        x xVar = this.d;
        if (xVar == null) {
            x a2 = new x.b().a();
            this.d = a2;
            return a2;
        }
        return xVar;
    }

    public Context c() {
        return this.c;
    }

    public c d() {
        if (y.b(this.h)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.h)) {
                        String t = t();
                        this.h = new c(new b(c(), e(), t), t);
                    }
                } finally {
                }
            }
        }
        return this.h;
    }

    public String e() {
        if (TextUtils.isEmpty(v())) {
            return String.format("track_manager_%s.db", "default");
        }
        return String.format("track_manager_%s.db", v());
    }

    public d f() {
        if (y.b(this.j)) {
            this.j = b().h;
        }
        return this.j;
    }

    public l g() {
        if (y.b(this.i)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.i)) {
                        this.i = new q(new g(d(), p()));
                    }
                } finally {
                }
            }
        }
        return this.i;
    }

    public j h() {
        if (y.b(this.k)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.k)) {
                        this.k = new j();
                    }
                } finally {
                }
            }
        }
        return this.k;
    }

    public int i() {
        if (b().f9710a < 0) {
            return 50;
        }
        return b().f9710a;
    }

    public int j() {
        return Math.max(b().e, 0);
    }

    public int k() {
        if (b().d <= 0) {
            return 2;
        }
        return b().d;
    }

    public int l() {
        return Math.max(b().b, 0);
    }

    public o m() {
        if (y.b(this.n)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.n)) {
                        this.n = new o(k(), n(), r(), q());
                    }
                } finally {
                }
            }
        }
        return this.n;
    }

    public p n() {
        return b().g;
    }

    public JSONObject o() {
        JSONObject jSONObject = this.e;
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            this.e = jSONObject2;
            return jSONObject2;
        }
        return jSONObject;
    }

    public s p() {
        if (y.b(this.l)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.l)) {
                        this.l = new s(this);
                    }
                } finally {
                }
            }
        }
        return this.l;
    }

    public int q() {
        return b().c;
    }

    public w r() {
        return b().i;
    }

    public String s() {
        if (TextUtils.isEmpty(o)) {
            String uuid = UUID.randomUUID().toString();
            o = uuid;
            return uuid;
        }
        return o;
    }

    public String t() {
        return "event_table";
    }

    public m u() {
        return this.b;
    }

    public String v() {
        return this.f9664a;
    }

    public boolean w() {
        return this.m;
    }

    public String x() {
        if (!y.b(this.c) && !y.b(this.d)) {
            try {
                p().j();
                this.m = false;
                if (TextUtils.isEmpty(o)) {
                    o = UUID.randomUUID().toString();
                }
                return o;
            } catch (Exception unused) {
                boolean z = a.f9655a;
                this.m = true;
            }
        }
        return "";
    }

    public void a(x xVar) {
        this.d = xVar;
    }

    public void a(JSONObject jSONObject) {
        this.e = jSONObject;
    }

    public boolean a(e eVar) {
        if (y.b(eVar)) {
            return false;
        }
        f fVar = b().j;
        if (y.a(fVar)) {
            try {
                return fVar.a(eVar);
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
        String b = eVar.b();
        if (TextUtils.isEmpty(b)) {
            return false;
        }
        List<String> list = this.g;
        if (list != null) {
            try {
                return !list.contains(b);
            } catch (Exception unused2) {
                boolean z2 = a.f9655a;
            }
        }
        List<String> list2 = this.f;
        if (list2 != null) {
            try {
                return list2.contains(b);
            } catch (Exception unused3) {
                boolean z3 = a.f9655a;
            }
        }
        return true;
    }

    public boolean a() throws IllegalStateException {
        if (!y.b(b())) {
            if (!y.b(f())) {
                if (!y.b(r())) {
                    if (!y.b(n()) && !y.b(n().b())) {
                        if (TextUtils.isEmpty(n().c())) {
                            throw new IllegalStateException("report url is null");
                        }
                        return true;
                    }
                    throw new IllegalStateException("networkStackConfig or stack can not be null");
                }
                throw new IllegalStateException("responseHandler can not be null");
            }
            throw new IllegalStateException("decorate can not be null");
        }
        throw new IllegalStateException("config can not be null");
    }
}
