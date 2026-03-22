package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.d;
import com.mbridge.msdk.thrid.okhttp.internal.http.e;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final w f9557a;
    @Nullable
    public final y b;

    public b(w wVar, y yVar) {
        this.f9557a = wVar;
        this.b = yVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
        if (r3.h().b() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.mbridge.msdk.thrid.okhttp.y r3, com.mbridge.msdk.thrid.okhttp.w r4) {
        /*
            int r0 = r3.k()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.b(r0)
            if (r0 != 0) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            boolean r0 = r0.c()
            if (r0 != 0) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            boolean r0 = r0.b()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            com.mbridge.msdk.thrid.okhttp.c r3 = r3.h()
            boolean r3 = r3.i()
            if (r3 != 0) goto L70
            com.mbridge.msdk.thrid.okhttp.c r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L70
            r3 = 1
            return r3
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.cache.b.a(com.mbridge.msdk.thrid.okhttp.y, com.mbridge.msdk.thrid.okhttp.w):boolean");
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final long f9558a;
        final w b;
        final y c;
        private Date d;
        private String e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        public a(long j, w wVar, y yVar) {
            this.l = -1;
            this.f9558a = j;
            this.b = wVar;
            this.c = yVar;
            if (yVar != null) {
                this.i = yVar.s();
                this.j = yVar.q();
                p m = yVar.m();
                int b = m.b();
                for (int i = 0; i < b; i++) {
                    String a2 = m.a(i);
                    String b2 = m.b(i);
                    if ("Date".equalsIgnoreCase(a2)) {
                        this.d = d.a(b2);
                        this.e = b2;
                    } else if ("Expires".equalsIgnoreCase(a2)) {
                        this.h = d.a(b2);
                    } else if (HttpHeaders.LAST_MODIFIED.equalsIgnoreCase(a2)) {
                        this.f = d.a(b2);
                        this.g = b2;
                    } else if ("ETag".equalsIgnoreCase(a2)) {
                        this.k = b2;
                    } else if (HttpHeaders.AGE.equalsIgnoreCase(a2)) {
                        this.l = e.a(b2, -1);
                    }
                }
            }
        }

        private long a() {
            Date date = this.d;
            long max = date != null ? Math.max(0L, this.j - date.getTime()) : 0L;
            int i = this.l;
            if (i != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.j;
            return max + (j - this.i) + (this.f9558a - j);
        }

        private long b() {
            long j;
            long j2;
            com.mbridge.msdk.thrid.okhttp.c h = this.c.h();
            if (h.d() != -1) {
                return TimeUnit.SECONDS.toMillis(h.d());
            }
            if (this.h != null) {
                Date date = this.d;
                if (date != null) {
                    j2 = date.getTime();
                } else {
                    j2 = this.j;
                }
                long time = this.h.getTime() - j2;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            }
            if (this.f != null && this.c.r().g().k() == null) {
                Date date2 = this.d;
                if (date2 != null) {
                    j = date2.getTime();
                } else {
                    j = this.i;
                }
                long time2 = j - this.f.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        private b d() {
            long j;
            String str;
            if (this.c == null) {
                return new b(this.b, null);
            }
            if (this.b.d() && this.c.l() == null) {
                return new b(this.b, null);
            }
            if (!b.a(this.c, this.b)) {
                return new b(this.b, null);
            }
            com.mbridge.msdk.thrid.okhttp.c b = this.b.b();
            if (!b.h() && !a(this.b)) {
                com.mbridge.msdk.thrid.okhttp.c h = this.c.h();
                long a2 = a();
                long b2 = b();
                if (b.d() != -1) {
                    b2 = Math.min(b2, TimeUnit.SECONDS.toMillis(b.d()));
                }
                long j2 = 0;
                if (b.f() != -1) {
                    j = TimeUnit.SECONDS.toMillis(b.f());
                } else {
                    j = 0;
                }
                if (!h.g() && b.e() != -1) {
                    j2 = TimeUnit.SECONDS.toMillis(b.e());
                }
                if (!h.h()) {
                    long j3 = j + a2;
                    if (j3 < j2 + b2) {
                        y.a o = this.c.o();
                        if (j3 >= b2) {
                            o.a(HttpHeaders.WARNING, "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a2 > SignalManager.TWENTY_FOUR_HOURS_MILLIS && e()) {
                            o.a(HttpHeaders.WARNING, "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, o.a());
                    }
                }
                String str2 = this.k;
                if (str2 != null) {
                    str = HttpHeaders.IF_NONE_MATCH;
                } else {
                    if (this.f != null) {
                        str2 = this.g;
                    } else if (this.d != null) {
                        str2 = this.e;
                    } else {
                        return new b(this.b, null);
                    }
                    str = HttpHeaders.IF_MODIFIED_SINCE;
                }
                p.a a3 = this.b.c().a();
                com.mbridge.msdk.thrid.okhttp.internal.a.f9553a.a(a3, str, str2);
                return new b(this.b.f().a(a3.a()).a(), this.c);
            }
            return new b(this.b, null);
        }

        private boolean e() {
            if (this.c.h().d() == -1 && this.h == null) {
                return true;
            }
            return false;
        }

        public b c() {
            b d = d();
            if (d.f9557a != null && this.b.b().j()) {
                return new b(null, null);
            }
            return d;
        }

        private static boolean a(w wVar) {
            return (wVar.a(HttpHeaders.IF_MODIFIED_SINCE) == null && wVar.a(HttpHeaders.IF_NONE_MATCH) == null) ? false : true;
        }
    }
}
