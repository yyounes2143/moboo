package com.mbridge.msdk.tracker.network;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mbridge.msdk.tracker.network.b;
import com.mbridge.msdk.tracker.network.v;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class t<T> implements Comparable<t<T>> {

    /* renamed from: a  reason: collision with root package name */
    private c f9682a;
    private String b;
    private volatile p c;
    private long d;
    private Map<String, String> e;
    private int f;
    private final String g;
    private final int h;
    private final String i;
    private final int j;
    private final Object k;
    private v.a l;
    private Integer m;
    private u n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private x t;
    private b.a u;
    private long v;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public t(int i, String str) {
        this(i, str, 0);
    }

    private static int b(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public final boolean A() {
        return this.s;
    }

    public final boolean B() {
        return this.r;
    }

    public abstract v<T> a(q qVar);

    public abstract void a(T t);

    public void a(String str) {
    }

    public b0 c(b0 b0Var) {
        return b0Var;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return a((t) ((t) obj));
    }

    public b.a d() {
        return this.u;
    }

    public String e() {
        if (!TextUtils.isEmpty(this.b)) {
            return this.b;
        }
        if (this.f9682a == null) {
            this.f9682a = new com.mbridge.msdk.tracker.network.toolbox.e();
        }
        String a2 = this.f9682a.a(this);
        this.b = a2;
        return a2;
    }

    public Map<String, String> f() {
        return Collections.EMPTY_MAP;
    }

    public int g() {
        return this.f;
    }

    public p h() {
        return this.c;
    }

    public Map<String, String> i() {
        return null;
    }

    public String j() {
        return "UTF-8";
    }

    public int k() {
        return this.h;
    }

    public a l() {
        return a.NORMAL;
    }

    public long m() {
        return this.v;
    }

    public long n() {
        return SystemClock.elapsedRealtime() - this.d;
    }

    public x o() {
        return this.t;
    }

    public String p() {
        return this.i;
    }

    public final int q() {
        x o = o();
        if (o == null) {
            return 30000;
        }
        return o.b();
    }

    public final long r() {
        x o = o();
        if (o == null) {
            return 30000L;
        }
        long a2 = o.a();
        if (a2 < 0) {
            return 30000L;
        }
        return a2;
    }

    public int s() {
        return this.j;
    }

    public String t() {
        return this.g;
    }

    public String toString() {
        String str;
        String str2 = "0x" + Integer.toHexString(s());
        StringBuilder sb = new StringBuilder();
        if (v()) {
            str = "[X] ";
        } else {
            str = "[ ] ";
        }
        sb.append(str);
        sb.append(t());
        sb.append(" ");
        sb.append(str2);
        sb.append(" ");
        sb.append(l());
        sb.append(" ");
        sb.append(this.m);
        return sb.toString();
    }

    public boolean u() {
        boolean z;
        synchronized (this.k) {
            z = this.q;
        }
        return z;
    }

    public boolean v() {
        boolean z;
        synchronized (this.k) {
            z = this.p;
        }
        return z;
    }

    public void w() {
        synchronized (this.k) {
            this.q = true;
        }
    }

    public void x() {
        synchronized (this.k) {
        }
    }

    public boolean y() {
        return true;
    }

    public final boolean z() {
        return this.o;
    }

    public t(int i, String str, int i2) {
        this(i, str, i2, "un_known");
    }

    public boolean a() {
        return false;
    }

    public void c(String str) {
        u uVar = this.n;
        if (uVar != null) {
            uVar.c(this);
        }
    }

    public String d(String str) {
        if (this.e != null && !TextUtils.isEmpty(str)) {
            try {
                return this.e.get(str);
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public t(int i, String str, int i2, String str2) {
        this.k = new Object();
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.u = null;
        this.v = 0L;
        this.f = i;
        this.g = str;
        this.h = i2;
        this.i = str2;
        a((x) new e());
        this.j = b(str);
        this.d = SystemClock.elapsedRealtime();
    }

    public void a(v.a aVar) {
        this.l = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(x xVar) {
        this.t = xVar;
        return this;
    }

    public String c() {
        return "application/x-www-form-urlencoded; charset=" + j();
    }

    public void a(int i) {
        u uVar = this.n;
        if (uVar != null) {
            uVar.a(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(int i) {
        this.m = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> c(boolean z) {
        this.r = z;
        return this;
    }

    public byte[] b() {
        Map<String, String> i = i();
        if (i != null && i.size() > 0) {
            byte[] a2 = a(i, j());
            this.v = a2.length;
            return a2;
        }
        this.v = 0L;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(u uVar) {
        this.n = uVar;
        return this;
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i++;
                if (entry.getKey() != null) {
                    sb.append(URLEncoder.encode(entry.getKey(), str));
                    sb.append('=');
                    sb.append(URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), str));
                    if (i <= map.size() - 1) {
                        sb.append(Typography.amp);
                    }
                }
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(boolean z) {
        this.s = z;
        return this;
    }

    public void b(b0 b0Var) {
        v.a aVar;
        synchronized (this.k) {
            aVar = this.l;
        }
        if (aVar != null) {
            aVar.a(b0Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> a(boolean z) {
        this.o = z;
        return this;
    }

    public void a(v<?> vVar) {
        synchronized (this.k) {
        }
    }

    public void a(p pVar) {
        this.c = pVar;
    }

    public void a(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                this.e.put(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    public int a(t<T> tVar) {
        a l = l();
        a l2 = tVar.l();
        return l == l2 ? this.m.intValue() - tVar.m.intValue() : l2.ordinal() - l.ordinal();
    }
}
