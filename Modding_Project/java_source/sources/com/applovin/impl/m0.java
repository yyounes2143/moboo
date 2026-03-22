package com.applovin.impl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import com.applovin.impl.i4;
import com.applovin.impl.q3;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.MalformedURLException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m0 {
    private static final List e = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3189a;
    private final com.applovin.impl.sdk.o b;
    private final q3 c;
    private d d;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private long f3190a;
        private long b;

        public long a() {
            return this.f3190a;
        }

        public long b() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.f3190a = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j) {
            this.b = j;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements Consumer {

        /* renamed from: a  reason: collision with root package name */
        private final String f3191a;
        private final com.applovin.impl.sdk.network.a b;
        private final String c;
        private final Object d;
        private final boolean e;
        private final b f;
        private final e g;

        /* JADX WARN: Not initialized variable reg: 6, insn: 0x004d: MOVE  (r3 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r6 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:29:0x004c */
        @Override // androidx.core.util.Consumer
        /* renamed from: a */
        public void accept(q3.d dVar) {
            MalformedURLException malformedURLException;
            int i;
            int i2;
            String str;
            long e = dVar.e();
            Object obj = null;
            try {
                try {
                    i = dVar.c();
                    try {
                        if (i <= 0) {
                            try {
                                m0.this.a(this.c, this.f3191a, i, e, (Throwable) null);
                                this.g.a(this.f3191a, i, null, null);
                                return;
                            } catch (MalformedURLException e2) {
                                e = e2;
                                i = i;
                            }
                        } else {
                            try {
                                if (i >= 200 && i < 400) {
                                    try {
                                        b bVar = this.f;
                                        if (bVar != null) {
                                            bVar.a(e);
                                        }
                                        m0.this.a(this.c, this.f3191a, i, e);
                                        byte[] d = dVar.d();
                                        if (z6.f(com.applovin.impl.sdk.k.o()) && (!this.e || i4.b(d) != i4.a.V2)) {
                                            String str2 = "";
                                            if (d == null) {
                                                str = "";
                                            } else {
                                                str = new String(dVar.d(), Charset.forName("UTF-8"));
                                            }
                                            if (this.b.b() != null) {
                                                str2 = this.b.b().toString();
                                            }
                                            m0.this.f3189a.u().a(str, this.f3191a, str2);
                                        }
                                        if (d != null) {
                                            String str3 = new String(dVar.d(), Charset.forName("UTF-8"));
                                            b bVar2 = this.f;
                                            if (bVar2 != null) {
                                                bVar2.b(d.length);
                                                if (this.b.r()) {
                                                    m0.this.d = new d(this.b.f(), d.length, e);
                                                }
                                            }
                                            if (this.e) {
                                                String b = i4.b(d, m0.this.f3189a.i0(), m0.this.f3189a);
                                                if (b == null) {
                                                    HashMap hashMap = new HashMap(2);
                                                    hashMap.put(AdActivity.REQUEST_KEY_EXTRA, StringUtils.getHostAndPath(this.f3191a));
                                                    hashMap.put("response", str3);
                                                    m0.this.f3189a.G().trackEvent("rdf", hashMap);
                                                }
                                                str3 = b;
                                            }
                                            try {
                                                this.g.a(this.f3191a, m0.this.a(str3, this.d), i);
                                                return;
                                            } catch (Throwable th) {
                                                String str4 = "Unable to parse response from " + StringUtils.getHostAndPath(this.f3191a) + " because of " + th.getClass().getName() + " : " + th.getMessage();
                                                com.applovin.impl.sdk.o unused = m0.this.b;
                                                if (com.applovin.impl.sdk.o.a()) {
                                                    m0.this.b.a("ConnectionManager", str4, th);
                                                }
                                                m0.this.f3189a.E().a("ConnectionManager", "failedToParseResponse", th, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(this.f3191a)));
                                                this.g.a(this.f3191a, AppLovinErrorCodes.INVALID_RESPONSE, str4, null);
                                                return;
                                            }
                                        }
                                        this.g.a(this.f3191a, this.d, i);
                                        return;
                                    } catch (MalformedURLException e3) {
                                        e = e3;
                                    }
                                } else {
                                    this.g.a(this.f3191a, i, null, null);
                                    return;
                                }
                            } catch (MalformedURLException e4) {
                                malformedURLException = e4;
                                i = i2;
                            }
                        }
                    } catch (MalformedURLException e5) {
                        e = e5;
                    }
                    malformedURLException = e;
                } catch (MalformedURLException e6) {
                    malformedURLException = e6;
                    i = 0;
                }
                MalformedURLException malformedURLException2 = malformedURLException;
                if (this.d == null) {
                    m0.this.a(this.c, this.f3191a, i, e);
                    this.g.a(this.f3191a, this.d, -901);
                    return;
                }
                m0.this.a(this.c, this.f3191a, i, e, malformedURLException2);
                this.g.a(this.f3191a, -901, malformedURLException2.getMessage(), null);
            } catch (Throwable th2) {
                int b2 = dVar.b();
                try {
                    byte[] f = dVar.f();
                    String str5 = new String(f);
                    if (f != null) {
                        if (this.e) {
                            str5 = i4.b(f, m0.this.f3189a.i0(), m0.this.f3189a);
                        }
                        obj = m0.this.a(str5, this.d);
                    }
                } catch (Throwable unused2) {
                }
                m0.this.a(this.c, this.f3191a, b2, e, th2);
                this.g.a(this.f3191a, b2, th2.getMessage(), obj);
            }
        }

        private c(String str, com.applovin.impl.sdk.network.a aVar, String str2, Object obj, boolean z, b bVar, e eVar) {
            this.f3191a = str;
            this.b = aVar;
            this.c = str2;
            this.d = obj;
            this.e = z;
            this.f = bVar;
            this.g = eVar;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final long f3192a = System.currentTimeMillis();
        private final String b;
        private final long c;
        private final long d;

        public d(String str, long j, long j2) {
            this.b = str;
            this.c = j;
            this.d = j2;
        }

        public boolean a(Object obj) {
            return obj instanceof d;
        }

        public long b() {
            return this.c;
        }

        public long c() {
            return this.f3192a;
        }

        public String d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (!dVar.a(this) || c() != dVar.c() || b() != dVar.b() || a() != dVar.a()) {
                return false;
            }
            String d = d();
            String d2 = dVar.d();
            if (d != null ? d.equals(d2) : d2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            long c = c();
            long b = b();
            long a2 = a();
            String d = d();
            int i = (((((((int) (c ^ (c >>> 32))) + 59) * 59) + ((int) (b ^ (b >>> 32)))) * 59) + ((int) ((a2 >>> 32) ^ a2))) * 59;
            if (d == null) {
                hashCode = 43;
            } else {
                hashCode = d.hashCode();
            }
            return i + hashCode;
        }

        public String toString() {
            return "ConnectionManager.RequestMeasurement(timestampMillis=" + c() + ", urlHostAndPathString=" + d() + ", responseSizeBytes=" + b() + ", connectionTimeMillis=" + a() + ")";
        }

        public long a() {
            return this.d;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface e {
        void a(String str, int i, String str2, Object obj);

        void a(String str, Object obj, int i);
    }

    public m0(com.applovin.impl.sdk.k kVar) {
        this.f3189a = kVar;
        this.b = kVar.O();
        q3 q3Var = new q3(kVar);
        this.c = q3Var;
        q3Var.a();
    }

    public void a(com.applovin.impl.sdk.network.a aVar, b bVar, e eVar) {
        String str;
        Throwable th;
        byte[] bytes;
        if (aVar != null) {
            String f = aVar.f();
            String h = aVar.h();
            if (f == null) {
                throw new IllegalArgumentException("No endpoint specified");
            }
            if (h == null) {
                throw new IllegalArgumentException("No method specified");
            }
            if (eVar != null) {
                if (!f.toLowerCase().startsWith("http")) {
                    String str2 = "Requested postback submission to non HTTP endpoint " + f + "; skipping...";
                    com.applovin.impl.sdk.o.h("ConnectionManager", str2);
                    eVar.a(f, AppLovinErrorCodes.INVALID_URL, str2, null);
                    return;
                }
                String httpsString = StringUtils.toHttpsString(f);
                HashMap hashMap = new HashMap(2);
                boolean m = aVar.m();
                i4.a a2 = ((Boolean) this.f3189a.a(l4.P4)).booleanValue() ? i4.a.a(((Integer) this.f3189a.a(l4.M4)).intValue()) : aVar.e();
                long a3 = z6.a(this.f3189a);
                if ((aVar.i() != null && !aVar.i().isEmpty()) || aVar.c() > 0) {
                    Map i = aVar.i();
                    Boolean bool = (Boolean) this.f3189a.a(l4.a3);
                    if (i != null && aVar.c() > 0) {
                        i.put("current_retry_attempt", String.valueOf(aVar.c()));
                    }
                    if (m) {
                        String a4 = z6.a(i, bool.booleanValue());
                        String b2 = i4.b(a4, a3, a2, this.f3189a.i0(), this.f3189a);
                        if (StringUtils.isValidString(a4) && TextUtils.isEmpty(b2)) {
                            hashMap.put("query", a4);
                        }
                        httpsString = StringUtils.appendQueryParameter(httpsString, "p", b2);
                    } else {
                        httpsString = StringUtils.appendQueryParameters(httpsString, i, bool.booleanValue());
                    }
                }
                String str3 = httpsString;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    Boolean endsWith = StringUtils.endsWith(StringUtils.getHostAndPath(str3), e);
                    if (com.applovin.impl.sdk.o.a()) {
                        try {
                            com.applovin.impl.sdk.o oVar = this.b;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Sending ");
                            sb.append(h);
                            sb.append(" request to id=#");
                            sb.append(str3.hashCode());
                            sb.append(" \"");
                            sb.append(endsWith.booleanValue() ? str3 : StringUtils.getHostAndPath(str3));
                            sb.append("\"...");
                            oVar.d("ConnectionManager", sb.toString());
                        } catch (Throwable th2) {
                            th = th2;
                            str = str3;
                            a(h, str, 0, SystemClock.elapsedRealtime() - elapsedRealtime, th);
                            eVar.a(str, 0, th.getMessage(), null);
                        }
                    }
                    q3.c.a a5 = new q3.c.a().a(str3).b(h).a(aVar.g()).a(aVar.l());
                    if (aVar.b() != null) {
                        if (m) {
                            bytes = i4.a(aVar.b().toString(), a3, a2, this.f3189a.i0(), this.f3189a);
                            if (bytes == null) {
                                hashMap.put("body", aVar.b().toString());
                            }
                        } else {
                            bytes = aVar.b().toString().getBytes("UTF-8");
                        }
                        byte[] bArr = bytes;
                        byte[] a6 = (!(m && a2 == i4.a.V2) && aVar.o() && bArr != null && bArr.length > ((Integer) this.f3189a.a(l4.i5)).intValue()) ? z6.a(bArr) : null;
                        a5.a("Content-Type", "application/json; charset=utf-8");
                        if (aVar.o() && a6 != null) {
                            a5.a("Content-Encoding", "gzip");
                            a5.a(a6);
                        } else if (bArr != null) {
                            a5.a(bArr);
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        hashMap.put(AdActivity.REQUEST_KEY_EXTRA, StringUtils.getHostAndPath(str3));
                        this.f3189a.G().trackEvent("ref", hashMap);
                    }
                    q3 q3Var = this.c;
                    str = str3;
                    try {
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        c cVar = new c(str, aVar, h, aVar.d(), m, bVar, eVar);
                        str = str;
                        h = h;
                        q3Var.a(a5.a(cVar).a(this.f3189a.q0().c()).a());
                    } catch (Throwable th4) {
                        th = th4;
                        str = str;
                        h = h;
                        th = th;
                        a(h, str, 0, SystemClock.elapsedRealtime() - elapsedRealtime, th);
                        eVar.a(str, 0, th.getMessage(), null);
                    }
                } catch (Throwable th5) {
                    th = th5;
                    str = str3;
                }
            } else {
                throw new IllegalArgumentException("No callback specified");
            }
        } else {
            throw new IllegalArgumentException("No request specified");
        }
    }

    public d a() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(String str, Object obj) {
        if (obj == null) {
            return str;
        }
        if (str != null && str.length() >= 3) {
            if (obj instanceof JSONObject) {
                return new JSONObject(str);
            }
            if (obj instanceof b8) {
                return c8.a(str, this.f3189a);
            }
            if (obj instanceof String) {
                return str;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.b;
                oVar.b("ConnectionManager", "Failed to process response of type '" + obj.getClass().getName() + "'");
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.b;
            oVar.d("ConnectionManager", "Successful " + str + " returned " + i + " in " + (((float) j) / 1000.0f) + " s over " + n0.g(this.f3189a) + " to " + a(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j, Throwable th) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.b;
            oVar.a("ConnectionManager", "Failed " + str + " returned " + i + " in " + (((float) j) / 1000.0f) + " s over " + n0.g(this.f3189a) + " to " + a(str2), th);
        }
    }

    private String a(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }
}
