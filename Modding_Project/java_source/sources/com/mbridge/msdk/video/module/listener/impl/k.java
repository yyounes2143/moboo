package com.mbridge.msdk.video.module.listener.impl;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.y0;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class k extends f {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f9886a;
    protected CampaignEx b;
    protected List<CampaignEx> c;
    protected boolean d;
    protected com.mbridge.msdk.videocommon.download.a e;
    protected com.mbridge.msdk.videocommon.entity.c f;
    protected String g;
    protected String h;
    protected com.mbridge.msdk.video.module.listener.a i;
    protected int j;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f9886a && kVar.b != null && y0.b(kVar.g) && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    com.mbridge.msdk.foundation.db.i a2 = com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
                    fVar.a(System.currentTimeMillis());
                    fVar.b(k.this.g);
                    fVar.a(k.this.b.getId());
                    a2.a(fVar);
                }
            } catch (Throwable th) {
                o0.b("NotifyListener", th.getMessage(), th);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f9886a && kVar.b != null && y0.b(kVar.g)) {
                    com.mbridge.msdk.videocommon.cache.a a2 = com.mbridge.msdk.videocommon.cache.a.a();
                    k kVar2 = k.this;
                    a2.a(kVar2.b, kVar2.g);
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
            try {
                com.mbridge.msdk.videocommon.cache.a a3 = com.mbridge.msdk.videocommon.cache.a.a();
                k kVar3 = k.this;
                a3.b(kVar3.h, kVar3.b.getAdType());
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                o0.a("NotifyListener", th.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(k.this.b.getId());
            } catch (Throwable th) {
                o0.b("NotifyListener", th.getMessage(), th);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.videocommon.download.a aVar;
            try {
                if (!q0.a().a("c_r_v_f_w_s_e", false)) {
                    k kVar = k.this;
                    if (kVar.f9886a && (aVar = kVar.e) != null) {
                        if (aVar.c() != null && !TextUtils.isEmpty(k.this.e.c().getVideoUrlEncode())) {
                            com.mbridge.msdk.foundation.db.m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(k.this.e.c().getVideoUrlEncode());
                        }
                        if (!TextUtils.isEmpty(k.this.e.k())) {
                            File file = new File(k.this.e.k());
                            if (file.exists() && file.isFile() && file.delete()) {
                                o0.a("NotifyListener", "DEL File :" + file.getAbsolutePath());
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public k(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i, boolean z) {
        this.d = false;
        this.i = new f();
        this.j = 1;
        if (!z && campaignEx != null && y0.b(str2) && aVar != null && aVar2 != null) {
            this.b = campaignEx;
            this.h = str;
            this.g = str2;
            this.e = aVar;
            this.f = cVar;
            this.i = aVar2;
            this.f9886a = true;
            this.j = i;
            this.d = false;
        } else if (z && campaignEx != null && y0.b(str2) && aVar2 != null) {
            this.b = campaignEx;
            this.h = str;
            this.g = str2;
            this.e = aVar;
            this.f = cVar;
            this.i = aVar2;
            this.f9886a = true;
            this.j = i;
            this.d = true;
        }
    }

    private void d() {
        if (this.f9886a && com.mbridge.msdk.foundation.same.buffer.b.k != null && !TextUtils.isEmpty(this.b.getId())) {
            com.mbridge.msdk.foundation.same.buffer.b.a(this.g, this.b, "reward");
        }
    }

    private void f() {
        if (this.b != null) {
            try {
                HashMap hashMap = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> a2 = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.b.getCampaignUnitId(), this.b.getRequestId());
                if (a2 != null && a2.size() > 0 && a2.get(0) != null) {
                    if (a2.get(0).c() == 1) {
                        String b2 = a2.get(0).b();
                        hashMap.put("encrypt_p=", "encrypt_p=" + b2);
                        hashMap.put("irlfa=", "irlfa=1");
                        for (Map.Entry entry : hashMap.entrySet()) {
                            String str = (String) entry.getKey();
                            String str2 = (String) entry.getValue();
                            CampaignEx campaignEx = this.b;
                            campaignEx.setImpressionURL(campaignEx.getImpressionURL().replaceAll(str, str2));
                            CampaignEx campaignEx2 = this.b;
                            campaignEx2.setOnlyImpressionURL(campaignEx2.getOnlyImpressionURL().replaceAll(str, str2));
                        }
                    }
                    int a3 = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.b.getRequestId());
                    o0.a("BidReplaceCampignDao", "removeReplace count " + a3);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void m() {
        new Thread(new c()).start();
    }

    public void a(CampaignEx campaignEx) {
        this.b = campaignEx;
    }

    public void b(int i) {
        if (this.b != null) {
            if (i == 1 || i == 2) {
                com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, i, this.j);
            }
        }
    }

    public void c() {
        a aVar = new a();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
    }

    public void e() {
        d dVar = new d();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(dVar);
        } else {
            dVar.run();
        }
    }

    public void g() {
        int i;
        if (this.f9886a && this.b != null) {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.b.getId(), this.b.getRequestId(), this.b.getRequestIdNotice(), this.g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (this.b.isMraid()) {
                i = com.mbridge.msdk.foundation.entity.m.N;
            } else {
                i = com.mbridge.msdk.foundation.entity.m.O;
            }
            mVar.b(i);
            com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.g);
        }
    }

    public void h() {
        String str;
        try {
            if (this.f9886a && !this.k && !TextUtils.isEmpty(this.b.getImpressionURL())) {
                this.k = true;
                if (this.b.isBidCampaign()) {
                    f();
                }
                String impressionURL = this.b.getImpressionURL();
                if (this.b.getSpareOfferFlag() == 1) {
                    str = impressionURL + "&to=1&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
                } else {
                    str = impressionURL + "&to=0&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, this.g, str, false, true, com.mbridge.msdk.click.retry.a.m);
                com.mbridge.msdk.video.module.report.b.d(com.mbridge.msdk.foundation.controller.c.m().d(), this.b);
                m();
                d();
            }
        } catch (Throwable th) {
            o0.b("NotifyListener", th.getMessage(), th);
        }
    }

    public void i() {
        CampaignEx campaignEx;
        Map<String, Long> map;
        String str;
        try {
            CampaignEx campaignEx2 = this.b;
            if (campaignEx2 != null && campaignEx2.isDynamicView() && this.d && !this.b.isCampaignIsFiltered()) {
                this.l = true;
            } else if (this.f9886a && (campaignEx = this.b) != null && !TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) && (map = com.mbridge.msdk.foundation.same.buffer.b.l) != null && !map.containsKey(this.b.getOnlyImpressionURL()) && !this.l) {
                com.mbridge.msdk.foundation.same.buffer.b.l.put(this.b.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                String onlyImpressionURL = this.b.getOnlyImpressionURL();
                if (this.b.getSpareOfferFlag() == 1) {
                    str = onlyImpressionURL + "&to=1&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
                } else {
                    str = onlyImpressionURL + "&to=0&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
                }
                String str2 = str;
                if (this.d) {
                    if (this.b.isCampaignIsFiltered()) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, this.g, str2, false, true, com.mbridge.msdk.click.retry.a.n);
                        b();
                    }
                } else {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, this.g, str2, false, true, com.mbridge.msdk.click.retry.a.n);
                    b();
                }
                this.l = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void j() {
        CampaignEx campaignEx;
        List<String> pv_urls;
        try {
            if (this.f9886a && !this.m && (campaignEx = this.b) != null) {
                this.m = true;
                if ((!campaignEx.isDynamicView() || !this.d || this.b.isCampaignIsFiltered()) && (pv_urls = this.b.getPv_urls()) != null && pv_urls.size() > 0) {
                    for (String str : pv_urls) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, this.g, str, false, true);
                    }
                }
            }
        } catch (Throwable th) {
            o0.b("NotifyListener", th.getMessage());
        }
    }

    public void k() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCampaignUnitId()) && this.b.getNativeVideoTracking() != null && this.b.getNativeVideoTracking().i() != null) {
            Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx2 = this.b;
            com.mbridge.msdk.click.a.a(d2, campaignEx2, campaignEx2.getCampaignUnitId(), this.b.getNativeVideoTracking().i(), false, false);
        }
    }

    public void l() {
        com.mbridge.msdk.videocommon.download.a aVar = this.e;
        if (aVar != null) {
            aVar.d(true);
        }
    }

    public void a(List<CampaignEx> list) {
        this.c = list;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i, Object obj) {
        super.a(i, obj);
        this.i.a(i, obj);
    }

    public void b() {
        try {
            b bVar = new b();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(bVar);
            } else {
                bVar.run();
            }
        } catch (Throwable th) {
            o0.b("NotifyListener", th.getMessage(), th);
        }
    }

    public void a(int i, String str) {
        if (this.b != null) {
            com.mbridge.msdk.foundation.same.report.g.c(new com.mbridge.msdk.foundation.entity.m("2000062", this.b.getId(), this.b.getRequestId(), this.b.getRequestIdNotice(), this.g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()), i, str), com.mbridge.msdk.foundation.controller.c.m().d(), this.g);
        }
    }

    public void b(String str) {
        try {
            if (this.b != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("url", this.b.getVideoUrlEncode());
                eVar.a("reason", str);
                String noticeUrl = this.b.getNoticeUrl();
                String clickURL = this.b.getClickURL();
                if (TextUtils.isEmpty(noticeUrl)) {
                    if (!TextUtils.isEmpty(clickURL)) {
                        eVar.a("offer_url", clickURL);
                    }
                } else {
                    eVar.a("offer_url", noticeUrl);
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000021", this.b, eVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(int i) {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (i == 1 || i == 2) {
                if (!noticeUrl.contains("endscreen_type")) {
                    StringBuilder sb = new StringBuilder(noticeUrl);
                    if (noticeUrl.contains("?")) {
                        sb.append("&endscreen_type=");
                        sb.append(i);
                    } else {
                        sb.append("?endscreen_type=");
                        sb.append(i);
                    }
                    noticeUrl = sb.toString();
                } else if (i == 2) {
                    if (noticeUrl.contains("endscreen_type=1")) {
                        noticeUrl = noticeUrl.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (noticeUrl.contains("endscreen_type=2")) {
                    noticeUrl = noticeUrl.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.b.setNoticeUrl(noticeUrl);
            }
        }
    }

    public void a() {
        com.mbridge.msdk.videocommon.download.b.getInstance().a(false);
    }

    public void a(String str) {
        List<CampaignEx> list;
        if (this.b == null || (list = this.c) == null || list.size() == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.b = this.c.get(jSONObject.getInt("camp_position"));
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NotifyListener", e.getMessage());
            }
        }
    }
}
