package com.tencent.liteav.txcvodplayer.b;

import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.ThreadUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.EscapeDomainsFetcher;
import com.tencent.liteav.txcvodplayer.b.a;
import com.tencent.liteav.txcvodplayer.b.f;
import com.tencent.rtmp.TXPlayInfoParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f10319a = {new String(Base64.decode("cGxheXZpZGVvLnZvZHBsYXl2aWRlby5uZXQ=", 0)), new String(Base64.decode("cGxheXZpZGVvLnZvZGdsY2RuLmNvbQ==", 0)), new String(Base64.decode("cGxheXZpZGVvLnZvZHBsYXl2aWRlby5jb20=", 0)), new String(Base64.decode("cGxheXZpZGVvLnZvZC1jb21tb24uY29t", 0)), new String(Base64.decode("cGxheXZpZGVvLnFjbG91ZC5jb20=", 0))};
    static volatile String g;
    TXPlayInfoParams b;
    public com.tencent.liteav.txcvodplayer.b.b c;
    public b d;
    List<String> e;
    int f;
    private Handler h = ThreadUtils.getUiThreadHandler();
    private f i;
    private String j;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.txcvodplayer.b.c$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f10320a;

        public AnonymousClass1(a aVar) {
            this.f10320a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            final com.tencent.liteav.txcvodplayer.b.a aVar = a.C0207a.f10316a;
            final c cVar = c.this;
            final a.b bVar = new a.b() { // from class: com.tencent.liteav.txcvodplayer.b.c.1.1
                @Override // com.tencent.liteav.txcvodplayer.b.a.b
                public final void a(String str, Map<String, String> map) {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    if (c.this.a(str, map, anonymousClass1.f10320a)) {
                        c.this.a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                a aVar2 = anonymousClass12.f10320a;
                                c cVar2 = c.this;
                                aVar2.a(cVar2, cVar2.b);
                            }
                        });
                        if (c.this.e != null) {
                            com.tencent.liteav.txcvodplayer.c.a a2 = com.tencent.liteav.txcvodplayer.c.a.a();
                            String unused = c.g = (String) c.this.e.get(c.this.f);
                            a2.a(c.g);
                        }
                    }
                }

                @Override // com.tencent.liteav.txcvodplayer.b.a.b
                public final void a() {
                    c.this.a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.1.1.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            a aVar2 = AnonymousClass1.this.f10320a;
                            if (aVar2 != null) {
                                aVar2.a(-1, "http request error.");
                            }
                        }
                    });
                    String unused = c.g = "";
                    com.tencent.liteav.txcvodplayer.c.a.a().a(c.g);
                }
            };
            AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.a.1
                private boolean d = true;
                private String e;

                /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
                    if (r2 == r1.e.size()) goto L10;
                 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private java.net.URLConnection a() throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 628
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.b.a.AnonymousClass1.a():java.net.URLConnection");
                }

                /* JADX WARN: Code restructure failed: missing block: B:59:0x00dc, code lost:
                    if (r4 != null) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:60:0x00de, code lost:
                    r4.a();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x00e1, code lost:
                    r4 = false;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:69:0x0119, code lost:
                    if (r4 != null) goto L41;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 311
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.b.a.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a(int i, String str);

        void a(c cVar, TXPlayInfoParams tXPlayInfoParams);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f10327a;
        public String b;
        public String c;
        public String d;
    }

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.txcvodplayer.b.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0210c {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<String> f10328a;
        public String b;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f10329a;
        public float b;

        public final String toString() {
            return "TCPlayKeyFrameDescInfo{content='" + this.f10329a + "', time=" + this.b + AbstractJsonLexerKt.END_OBJ;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        public String f10330a;
        public int b;
        public int c;
        public String d;
        public long e;
        public String f;
    }

    public c(TXPlayInfoParams tXPlayInfoParams) {
        this.b = tXPlayInfoParams;
    }

    public final String d() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    public final String e() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.f10317a;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.g();
        }
        return null;
    }

    public final String f() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.b;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.h();
        }
        return null;
    }

    public final int g() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.d;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.b();
        }
        return -1;
    }

    public final long h() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.e;
        }
        f fVar = this.i;
        if (fVar != null) {
            if (fVar.b == null) {
                fVar.b = fVar.c();
            }
            g gVar = fVar.b;
            if (gVar != null) {
                return gVar.d;
            }
        }
        return -1L;
    }

    public final C0210c i() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.i;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.i();
        }
        return null;
    }

    public final List<d> j() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.j;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.j();
        }
        return null;
    }

    public final List<e> k() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.g;
        }
        f fVar = this.i;
        if (fVar != null) {
            List<f.a> k = fVar.k();
            List<g> e2 = this.i.e();
            if (k != null && k.size() > 0) {
                ArrayList arrayList = new ArrayList(k.size());
                for (f.a aVar : k) {
                    e eVar = new e();
                    eVar.f10330a = aVar.b;
                    List<Integer> list = aVar.c;
                    if (list != null) {
                        Iterator<g> it = e2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                g next = it.next();
                                if (list.contains(Integer.valueOf(next.i))) {
                                    int i = next.c;
                                    eVar.b = i;
                                    eVar.c = next.b;
                                    if (i > 0) {
                                        eVar.d = "video";
                                    }
                                    arrayList.add(eVar);
                                }
                            }
                        }
                    }
                }
                return arrayList;
            }
            return null;
        }
        return null;
    }

    public final String l() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.h;
        }
        return "";
    }

    public final String m() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    public final String c() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.c;
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.d();
        }
        return null;
    }

    public final String b() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            String a2 = bVar.a("SimpleAES");
            return !TextUtils.isEmpty(a2) ? a2 : this.c.a("plain");
        }
        f fVar = this.i;
        if (fVar != null) {
            return fVar.a();
        }
        return null;
    }

    public final void a(a aVar) {
        if (this.b == null) {
            return;
        }
        com.tencent.liteav.txcplayer.common.a.a().execute(new AnonymousClass1(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, Map<String, String> map, final a aVar) {
        JSONObject jSONObject;
        final int i;
        final String optString;
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e("TXCPlayInfoProtocolV4", "[" + hashCode() + "],parseJson err, content is empty!");
            a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.a(-1, "request return error!");
                }
            });
            return false;
        }
        try {
            jSONObject = new JSONObject(str);
            i = jSONObject.getInt("code");
            optString = jSONObject.optString("message");
            String optString2 = jSONObject.optString("warning");
            this.j = jSONObject.optString("context");
            LiteavLog.i("TXCPlayInfoProtocolV4", "context : " + this.j);
            LiteavLog.i("TXCPlayInfoProtocolV4", "message: ".concat(String.valueOf(optString)));
            LiteavLog.i("TXCPlayInfoProtocolV4", "warning: ".concat(String.valueOf(optString2)));
        } catch (JSONException e2) {
            e2.printStackTrace();
            LiteavLog.e("TXCPlayInfoProtocolV4", "[" + hashCode() + "], parseJson err: " + Log.getStackTraceString(e2));
        }
        if (i == 0) {
            int i2 = jSONObject.getInt("version");
            LiteavLog.i("TXCPlayInfoProtocolV4", "version: ".concat(String.valueOf(i2)));
            if (i2 == 2) {
                this.d = null;
                this.i = new f(jSONObject);
            } else if (i2 == 4) {
                this.c = new com.tencent.liteav.txcvodplayer.b.b(jSONObject);
                b bVar = this.d;
                if (bVar != null && !TextUtils.isEmpty(bVar.b) && !TextUtils.isEmpty(this.d.f10327a)) {
                    String a2 = a(map, "x-vod-checksum");
                    String b2 = com.tencent.liteav.txcplayer.a.a.b(this.d.f10327a.toLowerCase() + this.d.b.toLowerCase() + str.trim());
                    if (!TextUtils.isEmpty(a2) && !TextUtils.isEmpty(b2) && !a2.equalsIgnoreCase(b2)) {
                        LiteavLog.w("TXCPlayInfoProtocolV4", "[" + hashCode() + "], [checkResponseDataValid], response content not valid, vodChecksum=" + a2 + " ,bodyMd5=" + b2 + " ,content=" + str);
                        a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                aVar.a(-1, "response data invalid!");
                            }
                        });
                        return false;
                    }
                }
                return true;
            }
            return true;
        }
        a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.4
            @Override // java.lang.Runnable
            public final void run() {
                aVar.a(i, optString);
            }
        });
        return false;
    }

    private static String a(Map<String, String> map, String str) {
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && key.equalsIgnoreCase(str)) {
                    return entry.getValue();
                }
            }
        }
        return "";
    }

    public final boolean a() {
        List<String> list = this.e;
        if (list != null && this.f >= list.size() - 1) {
            List<String> escapeDomains = EscapeDomainsFetcher.getEscapeDomains(0, this.b.getAppId());
            if (escapeDomains != null && escapeDomains.size() > 0 && !this.e.containsAll(escapeDomains)) {
                this.e.addAll(escapeDomains);
                if (this.f < this.e.size() - 1) {
                    return true;
                }
            }
            return false;
        }
        if (this.e == null && !TextUtils.isEmpty(g)) {
            g = "";
        }
        return true;
    }

    public final String a(String str) {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.c;
        if (bVar != null) {
            return bVar.a(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        if (ThreadUtils.runningOnUiThread()) {
            runnable.run();
        } else {
            this.h.post(runnable);
        }
    }
}
