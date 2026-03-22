package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.a7;
import com.applovin.impl.i7;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class b5 extends z4 {
    private final a7 l;

    public b5(a7 a7Var, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", a7Var, kVar, appLovinAdLoadListener);
        this.l = a7Var;
    }

    private String d(String str) {
        for (String str2 : StringUtils.getRegexMatches(StringUtils.match(str, (String) this.f3803a.a(l4.I4)), 1)) {
            if (!TextUtils.isEmpty(str2)) {
                Uri a2 = a(str2, Collections.EMPTY_LIST, false);
                if (a2 != null) {
                    str = str.replace(str2, a2.toString());
                    this.g.a(a2);
                } else if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str3 = this.b;
                    oVar.b(str3, "Failed to cache JavaScript resource: " + str2);
                }
            }
        }
        return str;
    }

    private void l() {
        String str;
        if (!k()) {
            if (this.l.C1()) {
                d7 o1 = this.l.o1();
                if (o1 != null) {
                    i7 e = o1.e();
                    if (e != null) {
                        Uri c = e.c();
                        if (c != null) {
                            str = c.toString();
                        } else {
                            str = "";
                        }
                        String b = e.b();
                        if (!URLUtil.isValidUrl(str) && !StringUtils.isValidString(b)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.c.k(this.b, "Companion ad does not have any resources attached. Skipping...");
                            }
                        } else if (e.d() == i7.a.STATIC) {
                            if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar = this.c;
                                String str2 = this.b;
                                oVar.a(str2, "Caching static companion ad at " + str + "...");
                            }
                            Uri a2 = a(str, Collections.EMPTY_LIST, false);
                            if (a2 != null) {
                                e.a(a2);
                                this.l.b(true);
                            } else if (com.applovin.impl.sdk.o.a()) {
                                this.c.b(this.b, "Failed to cache static companion ad");
                            }
                        } else if (e.d() == i7.a.HTML) {
                            if (StringUtils.isValidString(str)) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar2 = this.c;
                                    String str3 = this.b;
                                    oVar2.a(str3, "Begin caching HTML companion ad. Fetching from " + str + "...");
                                }
                                String c2 = c(str, null, false);
                                if (StringUtils.isValidString(c2)) {
                                    if (com.applovin.impl.sdk.o.a()) {
                                        this.c.a(this.b, "HTML fetched. Caching HTML now...");
                                    }
                                    e.a(a(c2, Collections.EMPTY_LIST, this.l));
                                    this.l.b(true);
                                    return;
                                } else if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar3 = this.c;
                                    String str4 = this.b;
                                    oVar3.b(str4, "Unable to load companion ad resources from " + str);
                                    return;
                                } else {
                                    return;
                                }
                            }
                            if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar4 = this.c;
                                String str5 = this.b;
                                oVar4.a(str5, "Caching provided HTML for companion ad. No fetch required. HTML: " + b);
                            }
                            if (((Boolean) this.f3803a.a(l4.H4)).booleanValue()) {
                                b = d(b);
                            }
                            e.a(a(b, Collections.EMPTY_LIST, this.l));
                            this.l.b(true);
                        } else if (e.d() == i7.a.IFRAME && com.applovin.impl.sdk.o.a()) {
                            this.c.a(this.b, "Skip caching of iFrame resource...");
                        }
                    } else if (com.applovin.impl.sdk.o.a()) {
                        this.c.b(this.b, "Failed to retrieve non-video resources from companion ad. Skipping...");
                    }
                } else if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.b, "No companion ad provided. Skipping...");
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Companion ad caching disabled. Skipping...");
            }
        }
    }

    private void m() {
        if (!k() && m7.a(this.l)) {
            String q1 = this.l.q1();
            if (StringUtils.isValidString(q1)) {
                String a2 = a(q1, this.l.c0(), this.g);
                if (this.l.isOpenMeasurementEnabled()) {
                    a2 = this.f3803a.d0().a(a2, a2.a((AppLovinAdImpl) this.g));
                }
                this.l.d(a2);
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str = this.b;
                    oVar.a(str, "Finish caching HTML template " + this.l.q1() + " for ad #" + this.l.getAdIdNumber());
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Unable to load HTML template");
            }
        }
    }

    private void n() {
        o7 y1;
        Uri e;
        if (!k()) {
            if (this.l.D1()) {
                if (this.l.x1() != null && (y1 = this.l.y1()) != null && (e = y1.e()) != null) {
                    Uri b = b(e.toString(), Collections.EMPTY_LIST, false);
                    if (b != null) {
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar = this.c;
                            String str = this.b;
                            oVar.a(str, "Video file successfully cached into: " + b);
                        }
                        y1.a(b);
                    } else if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar2 = this.c;
                        String str2 = this.b;
                        oVar2.b(str2, "Failed to cache video file: " + y1);
                    }
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Video caching disabled. Skipping...");
            }
        }
    }

    @Override // com.applovin.impl.z4
    public void a(int i) {
        this.l.getAdEventTracker().f();
        super.a(i);
    }

    @Override // com.applovin.impl.z4
    public void e() {
        this.l.getAdEventTracker().h();
        super.e();
    }

    @Override // com.applovin.impl.z4, java.lang.Runnable
    public void run() {
        String str;
        super.run();
        boolean Q0 = this.l.Q0();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str2 = this.b;
            StringBuilder sb = new StringBuilder();
            sb.append("Begin caching for VAST ");
            if (Q0) {
                str = "streaming ";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("ad #");
            sb.append(this.g.getAdIdNumber());
            sb.append("...");
            oVar.a(str2, sb.toString());
        }
        if (Q0) {
            i();
            if (this.l.A1()) {
                e();
            }
            a7.c r1 = this.l.r1();
            a7.c cVar = a7.c.COMPANION_AD;
            if (r1 == cVar) {
                l();
                m();
                a(this.l);
            } else {
                n();
            }
            if (!this.l.A1()) {
                e();
            }
            if (this.l.r1() == cVar) {
                n();
            } else {
                l();
                m();
                a(this.l);
            }
        } else {
            i();
            l();
            n();
            m();
            a(this.l);
            e();
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.c;
            String str3 = this.b;
            oVar2.a(str3, "Finished caching VAST ad #" + this.l.getAdIdNumber());
        }
        this.l.B1();
        j();
    }
}
