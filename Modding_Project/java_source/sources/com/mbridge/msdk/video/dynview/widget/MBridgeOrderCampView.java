package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.bt.module.orglistener.f;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.HashMap;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeOrderCampView extends MBridgeBaseView {
    private MBridgeOrderCampView m;
    private List<CampaignEx> n;
    private int o;
    private int p;
    private int q;
    private int r;
    private String s;
    private FeedBackButton t;
    private ImageView u;
    private boolean v;
    private com.mbridge.msdk.video.dynview.listener.c w;
    private com.mbridge.msdk.video.dynview.listener.b x;
    private boolean y;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements com.mbridge.msdk.video.dynview.listener.c {
        public a() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void a(CampaignEx campaignEx, int i) {
            if (campaignEx != null) {
                try {
                    MBridgeOrderCampView.this.setCampaign(campaignEx);
                    campaignEx.setClickTempSource(2);
                    campaignEx.setTriggerClickSource(2);
                    MBridgeOrderCampView.this.a(campaignEx, 0, i);
                } catch (Exception e) {
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void close() {
            MBridgeOrderCampView.this.g();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        public c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9806a;

        public d(String str) {
            this.f9806a = str;
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            com.mbridge.msdk.click.c.e(((MBridgeBaseView) MBridgeOrderCampView.this).f9822a, this.f9806a);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public MBridgeOrderCampView(Context context) {
        super(context);
        this.v = false;
        this.w = new a();
        this.y = false;
    }

    private void f() {
        if (this.u == null) {
            return;
        }
        g d2 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d2 != null) {
            String c2 = d2.c();
            if (TextUtils.isEmpty(c2)) {
                this.u.setVisibility(8);
            }
            this.u.setOnClickListener(new d(c2));
            return;
        }
        this.u.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            e eVar = new e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.b);
        } catch (Throwable th) {
            o0.a(MBridgeBaseView.TAG, th.getMessage());
        }
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e) {
            o0.b(MBridgeBaseView.TAG, e.getMessage());
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    public void createView(ViewGroup viewGroup) {
        if (this.n == null) {
            com.mbridge.msdk.video.dynview.listener.b bVar = this.x;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("order_view_callback", this.w);
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().b(com.mbridge.msdk.foundation.controller.c.m().d(), this.n), new b(viewGroup), hashMap);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        this.m = this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002d A[SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r4.n
            if (r0 != 0) goto L8
            goto L30
        L8:
            r0 = 0
        L9:
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r4.n
            int r1 = r1.size()
            if (r0 >= r1) goto L30
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1e
            r1.<init>()     // Catch: org.json.JSONException -> L1e
            java.lang.String r2 = "camp_position"
            r1.put(r2, r0)     // Catch: org.json.JSONException -> L1c
            goto L24
        L1c:
            r2 = move-exception
            goto L21
        L1e:
            r1 = move-exception
            r2 = r1
            r1 = 0
        L21:
            r2.printStackTrace()
        L24:
            com.mbridge.msdk.video.module.listener.a r2 = r4.notifyListener
            if (r2 == 0) goto L2d
            r3 = 110(0x6e, float:1.54E-43)
            r2.a(r3, r1)
        L2d:
            int r0 = r0 + 1
            goto L9
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.onAttachedToWindow():void");
    }

    public void setCampOrderViewBuildCallback(com.mbridge.msdk.video.dynview.listener.b bVar) {
        this.x = bVar;
    }

    public void setCampaignExes(List<CampaignEx> list) {
        this.n = list;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        this.o = i;
        this.p = i2;
        this.q = i3;
        this.r = i4;
        setViewStatus();
    }

    public void setRewarded(boolean z) {
        this.y = z;
    }

    public void setViewStatus() {
        MBridgeOrderCampView mBridgeOrderCampView = this.m;
        if (mBridgeOrderCampView != null && this.y) {
            RelativeLayout relativeLayout = (RelativeLayout) mBridgeOrderCampView.findViewById(filterFindViewId(this.v, "mbridge_native_order_camp_controller"));
            this.t = (FeedBackButton) this.m.findViewById(filterFindViewId(this.v, "mbridge_native_order_camp_feed_btn"));
            this.u = (ImageView) this.m.findViewById(filterFindViewId(this.v, "mbridge_iv_link"));
            if (relativeLayout != null) {
                relativeLayout.setPadding(this.o, this.q, this.p, this.r);
            }
            if (this.t != null) {
                try {
                    e();
                } catch (Exception e) {
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                }
            }
            if (this.u != null) {
                try {
                    f();
                } catch (Exception e2) {
                    o0.b(MBridgeBaseView.TAG, e2.getMessage());
                }
            }
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.m.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.m.startAnimation(translateAnimation);
    }

    private void e() {
        List<CampaignEx> list = this.n;
        if (list != null && list.get(0) != null) {
            this.s = this.n.get(0).getCampaignUnitId();
            this.b = this.n.get(0);
            com.mbridge.msdk.foundation.feedback.b b2 = com.mbridge.msdk.foundation.feedback.b.b();
            b2.a(this.s + "_2", this.b);
            if (this.t == null) {
                return;
            }
            if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b b3 = com.mbridge.msdk.foundation.feedback.b.b();
                b3.a(this.s + "_2", new c());
                com.mbridge.msdk.foundation.feedback.b b4 = com.mbridge.msdk.foundation.feedback.b.b();
                b4.a(this.s + "_2", this.t);
                return;
            }
            this.t.setVisibility(8);
            return;
        }
        FeedBackButton feedBackButton = this.t;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r9, int r10, int r11) {
        /*
            r8 = this;
            if (r9 == 0) goto L62
            boolean r0 = r9.isDynamicView()
            if (r0 == 0) goto L62
            com.mbridge.msdk.foundation.entity.CampaignEx$c r0 = r9.getRewardTemplateMode()     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = ""
            if (r0 == 0) goto L23
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L25
            r2.<init>()     // Catch: java.lang.Exception -> L25
            int r0 = r0.f()     // Catch: java.lang.Exception -> L25
            r2.append(r0)     // Catch: java.lang.Exception -> L25
            r2.append(r1)     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> L25
        L23:
            r7 = r1
            goto L28
        L25:
            r0 = move-exception
            r9 = r0
            goto L59
        L28:
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L25
            android.content.Context r0 = r0.d()     // Catch: java.lang.Exception -> L25
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L25
            r1.<init>()     // Catch: java.lang.Exception -> L25
            java.lang.String r2 = "order_view_click"
            r1.append(r2)     // Catch: java.lang.Exception -> L25
            r1.append(r7)     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L25
            java.lang.String r2 = r9.getCampaignUnitId()     // Catch: java.lang.Exception -> L25
            boolean r3 = r9.isBidCampaign()     // Catch: java.lang.Exception -> L25
            java.lang.String r4 = r9.getRequestId()     // Catch: java.lang.Exception -> L25
            java.lang.String r5 = r9.getRequestIdNotice()     // Catch: java.lang.Exception -> L25
            java.lang.String r6 = r9.getId()     // Catch: java.lang.Exception -> L25
            com.mbridge.msdk.foundation.same.report.j.a(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L25
            goto L62
        L59:
            java.lang.String r9 = r9.getMessage()
            java.lang.String r0 = "MBridgeBaseView"
            com.mbridge.msdk.foundation.tools.o0.b(r0, r9)
        L62:
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L79
            r9.<init>()     // Catch: org.json.JSONException -> L79
            java.lang.String r0 = com.mbridge.msdk.foundation.same.a.j     // Catch: org.json.JSONException -> L76
            org.json.JSONObject r10 = r8.a(r10)     // Catch: org.json.JSONException -> L76
            r9.put(r0, r10)     // Catch: org.json.JSONException -> L76
            java.lang.String r10 = "camp_position"
            r9.put(r10, r11)     // Catch: org.json.JSONException -> L76
            goto L80
        L76:
            r0 = move-exception
            r10 = r0
            goto L7d
        L79:
            r0 = move-exception
            r9 = r0
            r10 = r9
            r9 = 0
        L7d:
            r10.printStackTrace()
        L80:
            com.mbridge.msdk.video.module.listener.a r10 = r8.notifyListener
            if (r10 == 0) goto L89
            r11 = 105(0x69, float:1.47E-43)
            r10.a(r11, r9)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.a(com.mbridge.msdk.foundation.entity.CampaignEx, int, int):void");
    }

    public MBridgeOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.v = false;
        this.w = new a();
        this.y = false;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.video.dynview.listener.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f9804a;

        public b(ViewGroup viewGroup) {
            this.f9804a = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                try {
                    MBridgeOrderCampView.this.m.addView(aVar.b());
                    MBridgeOrderCampView.this.v = aVar.c();
                    this.f9804a.removeAllViews();
                    this.f9804a.addView(MBridgeOrderCampView.this.m);
                    f.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeOrderCampView.this.n, ((CampaignEx) MBridgeOrderCampView.this.n.get(0)).getCampaignUnitId());
                    MBridgeOrderCampView.this.setViewStatus();
                    if (MBridgeOrderCampView.this.x != null) {
                        MBridgeOrderCampView.this.x.a();
                    }
                } catch (Exception e) {
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            try {
                f.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeOrderCampView.this.n, ((CampaignEx) MBridgeOrderCampView.this.n.get(0)).getCampaignUnitId(), aVar.c());
                if (MBridgeOrderCampView.this.x != null) {
                    MBridgeOrderCampView.this.x.b();
                }
            } catch (Exception e) {
                o0.b(MBridgeBaseView.TAG, e.getMessage());
            }
        }
    }
}
