package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.h;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f8745a = "ResManager";
    private static int b = 1;
    public static e c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedWebview f8747a;
        final /* synthetic */ String b;

        public b(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f8747a = mBNativeAdvancedWebview;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8747a;
            String str = this.b;
            mBNativeAdvancedWebview.loadUrl(str);
            JSHookAop.loadUrl(mBNativeAdvancedWebview, str);
        }
    }

    public static CampaignEx a(MBNativeAdvancedView mBNativeAdvancedView, String str, String str2, String str3, int i, boolean z, boolean z2) {
        com.mbridge.msdk.setting.g d = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d == null) {
            d = h.b().a();
        }
        long Z = d.Z() * 1000;
        long a0 = d.a0() * 1000;
        a(a0, str2);
        List<CampaignEx> a2 = a(str2, str3);
        if (a2 != null && a2.size() > 0) {
            CampaignEx campaignEx = a2.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - Z;
            if (!z) {
                if ((campaignEx.getPlct() > 0 && (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() >= currentTimeMillis) || (campaignEx.getPlct() <= 0 && campaignEx.getTimestamp() >= j)) {
                    if (a(mBNativeAdvancedView, campaignEx, str, str2, i, z2)) {
                        String str4 = f8745a;
                        o0.b(str4, "cache campain is picked:" + campaignEx.getAppName());
                        return a(campaignEx);
                    }
                } else {
                    o0.a(f8745a, "========已经超了缓存时间");
                    if (!campaignEx.isSpareOffer(Z, a0) && mBNativeAdvancedView != null) {
                        mBNativeAdvancedView.setVisibility(8);
                        return null;
                    }
                }
            } else if ((campaignEx.getPlct() > 0 && (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() >= currentTimeMillis) || (campaignEx.getPlct() <= 0 && campaignEx.getTimestamp() >= j)) {
                if (a(mBNativeAdvancedView, campaignEx, str, str2, i, z2)) {
                    String str5 = f8745a;
                    o0.b(str5, "cache campain is picked:" + campaignEx.getAppName());
                    return a(campaignEx);
                }
            } else if (a(mBNativeAdvancedView, campaignEx, str, str2, i, z2) && campaignEx.isSpareOffer(Z, a0)) {
                return a(campaignEx);
            } else {
                if (!campaignEx.isSpareOffer(Z, a0) && mBNativeAdvancedView != null) {
                    mBNativeAdvancedView.setVisibility(8);
                }
            }
        }
        return null;
    }

    public static void b(String str) {
        if (c == null) {
            c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        c.a(str, 0, b);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8746a;
        final /* synthetic */ String b;
        final /* synthetic */ CampaignEx c;
        final /* synthetic */ MBNativeAdvancedView d;
        final /* synthetic */ long e;

        public a(String str, String str2, CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, long j) {
            this.f8746a = str;
            this.b = str2;
            this.c = campaignEx;
            this.d = mBNativeAdvancedView;
            this.e = j;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            super.a(webView, i);
            if (i == 1) {
                com.mbridge.msdk.advanced.common.c.a(this.f8746a + this.b + this.c.getRequestId(), true);
                this.d.setH5Ready(true);
                o0.a("WindVaneWebView", "======渲染成功：ready");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.b, "", this.e, 1);
                return;
            }
            this.d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.b, "readyState 2", this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            this.d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.c;
            String str3 = this.b;
            com.mbridge.msdk.advanced.report.a.a(d, campaignEx, str3, "error code:" + i + str, this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            this.d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.c;
            String str = this.b;
            com.mbridge.msdk.advanced.report.a.a(d, campaignEx, str, "error url:" + sslError.getUrl(), this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (!this.c.isHasMBTplMark()) {
                com.mbridge.msdk.advanced.common.c.a(this.f8746a + this.b + this.c.getRequestId(), true);
                this.d.setH5Ready(true);
                o0.a("WindVaneWebView", "======渲染成功：finish");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.b, "", this.e, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    private static List<CampaignEx> a(String str, String str2) {
        if (c == null) {
            c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        return c.b(str, 0, 0, b);
    }

    private static CampaignEx a(CampaignEx campaignEx) {
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
            return campaignEx;
        }
        campaignEx.setHasMBTplMark(true);
        campaignEx.setIsMraid(false);
        return campaignEx;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        if (r14 == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.mbridge.msdk.advanced.view.MBNativeAdvancedView r9, com.mbridge.msdk.foundation.entity.CampaignEx r10, java.lang.String r11, java.lang.String r12, int r13, boolean r14) {
        /*
            r6 = 0
            if (r10 == 0) goto Lf9
            r9.clearResState()
            java.lang.String r1 = r10.getVideoUrlEncode()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r7 = 1
            if (r1 != 0) goto L26
            com.mbridge.msdk.videocommon.download.b r1 = com.mbridge.msdk.videocommon.download.b.getInstance()
            boolean r2 = r10.isBidCampaign()
            r5 = 298(0x12a, float:4.18E-43)
            boolean r1 = r1.b(r5, r12, r2)
            if (r1 == 0) goto L24
            r9.setVideoReady(r7)
        L24:
            r8 = r1
            goto L2a
        L26:
            r9.setVideoReady(r7)
            r8 = r7
        L2a:
            java.lang.String r1 = r10.getendcard_url()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L4f
            boolean r1 = r9.isEndCardReady()
            if (r1 != 0) goto L4f
            com.mbridge.msdk.foundation.download.download.H5DownLoadManager r1 = com.mbridge.msdk.foundation.download.download.H5DownLoadManager.getInstance()
            java.lang.String r2 = r10.getendcard_url()
            java.lang.String r1 = r1.getH5ResAddress(r2)
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L4f
            r9.setEndCardReady(r7)
        L4f:
            java.lang.String r1 = r10.getAdZip()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L9c
            boolean r1 = r9.isH5Ready()
            if (r1 != 0) goto L9c
            com.mbridge.msdk.foundation.download.download.H5DownLoadManager r1 = com.mbridge.msdk.foundation.download.download.H5DownLoadManager.getInstance()
            java.lang.String r2 = r10.getAdZip()
            java.lang.String r1 = r1.getH5ResAddress(r2)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L9b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r11)
            r2.append(r12)
            java.lang.String r5 = r10.getRequestId()
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            boolean r2 = com.mbridge.msdk.advanced.common.c.a(r2)
            if (r2 == 0) goto L91
            r9.setH5Ready(r7)
            goto L9c
        L91:
            r0 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            a(r0, r1, r2, r3, r4, r5)
            if (r14 != 0) goto L9c
        L9b:
            r8 = r6
        L9c:
            java.lang.String r1 = r10.getAdZip()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto Lf8
            java.lang.String r1 = r10.getAdHtml()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto Lf8
            boolean r1 = r9.isH5Ready()
            if (r1 != 0) goto Lf8
            java.lang.String r1 = r10.getAdHtml()
            java.lang.String r1 = a(r1)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto Lf7
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r11)
            r2.append(r12)
            java.lang.String r5 = r10.getRequestId()
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            boolean r2 = com.mbridge.msdk.advanced.common.c.a(r2)
            if (r2 == 0) goto Led
            r9.setH5Ready(r7)
            boolean r1 = r10.isMraid()
            if (r1 == 0) goto Lec
            r9.setVideoReady(r7)
        Lec:
            return r7
        Led:
            r0 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            a(r0, r1, r2, r3, r4, r5)
            if (r14 != 0) goto Lf8
        Lf7:
            return r6
        Lf8:
            return r8
        Lf9:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.advanced.manager.d.a(com.mbridge.msdk.advanced.view.MBNativeAdvancedView, com.mbridge.msdk.foundation.entity.CampaignEx, java.lang.String, java.lang.String, int, boolean):boolean");
    }

    private static void a(MBNativeAdvancedView mBNativeAdvancedView, String str, CampaignEx campaignEx, String str2, String str3, int i) {
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(str3, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), str2, str3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(i);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(bVar);
        MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
        long currentTimeMillis = System.currentTimeMillis();
        advancedNativeWebview.setWebViewListener(new a(str2, str3, campaignEx, mBNativeAdvancedView, currentTimeMillis));
        if (!advancedNativeWebview.isDestoryed()) {
            String str4 = f8745a;
            o0.a(str4, "======开始渲染：" + str);
            new Handler(Looper.getMainLooper()).post(new b(advancedNativeWebview, str));
            return;
        }
        mBNativeAdvancedView.setH5Ready(false);
        com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str3, "webview had destory", currentTimeMillis, 3);
    }

    private static String a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return "file:///" + file.getAbsolutePath();
            }
            return "";
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Exception e) {
                e.getMessage();
                return "";
            }
        }
    }

    public static boolean a(MBNativeAdvancedView mBNativeAdvancedView, CampaignEx campaignEx, String str, String str2) {
        boolean z;
        boolean z2 = false;
        if (mBNativeAdvancedView == null) {
            o0.b(f8745a, "mbAdvancedNativeView  is null");
            return false;
        }
        if (TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            z = true;
        } else {
            z = mBNativeAdvancedView.isVideoReady();
            String str3 = f8745a;
            o0.b(str3, "======isReady isVideoReady:" + z);
        }
        if (z && !TextUtils.isEmpty(campaignEx.getAdZip())) {
            z = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            String str4 = f8745a;
            o0.b(str4, "======isReady getAdZip:" + z);
        }
        if (z && TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml())) {
            z = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            String str5 = f8745a;
            o0.b(str5, "======isReady getAdHtml:" + z);
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            o0.b(f8745a, "======isReady getAdHtml  getAdZip all are empty");
        } else {
            z2 = z;
        }
        if (!z2 || TextUtils.isEmpty(campaignEx.getendcard_url())) {
            return z2;
        }
        boolean isEndCardReady = mBNativeAdvancedView.isEndCardReady();
        String str6 = f8745a;
        o0.b(str6, "======isReady isEndCardReady:" + isEndCardReady);
        return isEndCardReady;
    }

    public static void a(CampaignEx campaignEx, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        if (c == null) {
            c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        c.a(arrayList, str);
    }

    public static void a(long j, String str) {
        if (c == null) {
            c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        c.a(j, str);
    }
}
