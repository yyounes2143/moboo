package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.error.b;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbanner.controll.a;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class MBBannerView extends RelativeLayout implements BaseExtraInterfaceForHandler {
    private String bidToken;
    private a controller;
    private boolean hadAttached;
    private boolean isVisible;
    private BannerAdListener mBannerAdListener;
    private MBridgeIds mBridgeIds;
    private String unitId;

    public MBBannerView(Context context) {
        this(context, null);
    }

    private void callbackAndReportFail(c cVar, b bVar) {
        String str = "";
        if (bVar != null) {
            try {
                str = bVar.g();
            } catch (Throwable th) {
                o0.b("BannerView", th.getMessage());
            }
        }
        cVar.a(bVar);
        cVar.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVar, (e) null);
        BannerAdListener bannerAdListener = this.mBannerAdListener;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.mBridgeIds, str);
        }
    }

    private void delayedNotify() {
        postDelayed(new Runnable() { // from class: com.mbridge.msdk.out.MBBannerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (MBBannerView.this.controller != null && !com.mbridge.msdk.foundation.feedback.b.f) {
                    MBBannerView.this.controller.c(true);
                }
            }
        }, 200L);
    }

    private void updateAttachedState(boolean z) {
        this.hadAttached = z;
        a aVar = this.controller;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.controller;
        if (aVar != null) {
            return aVar.d();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.controller;
        if (aVar != null) {
            return aVar.e();
        }
        return "";
    }

    public void init(BannerSize bannerSize, String str, String str2) {
        String str3;
        this.unitId = str2;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
        }
        this.mBridgeIds = new MBridgeIds(str3, str2);
        String e = t0.e(str2);
        if (!TextUtils.isEmpty(e)) {
            t0.b(str2, e);
        }
        a aVar = new a(this, bannerSize, str, str2);
        this.controller = aVar;
        aVar.c(this.isVisible);
        this.controller.b(this.hadAttached);
    }

    public void load() {
        String b = com.mbridge.msdk.mbbanner.common.report.a.b(this.bidToken);
        c a2 = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, b);
        a2.g("0");
        a aVar = this.controller;
        if (aVar != null) {
            aVar.b(this.hadAttached);
            this.controller.a("", b);
            return;
        }
        b bVar = new b(880042);
        bVar.b(b);
        callbackAndReportFail(a2, bVar);
    }

    public void loadFromBid(String str) {
        this.bidToken = str;
        String b = com.mbridge.msdk.mbbanner.common.report.a.b(str);
        c a2 = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, b);
        a2.g("1");
        if (this.controller != null) {
            if (!TextUtils.isEmpty(str)) {
                this.controller.b(this.hadAttached);
                this.controller.b(0);
                this.controller.a(str, b);
                return;
            }
            b bVar = new b(880035);
            bVar.b(b);
            callbackAndReportFail(a2, bVar);
            return;
        }
        b bVar2 = new b(880042);
        bVar2.b(b);
        callbackAndReportFail(a2, bVar2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAttachedState(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateAttachedState(false);
    }

    public void onPause() {
        if (this.controller != null && TextUtils.isEmpty(this.bidToken)) {
            this.controller.g();
        }
    }

    public void onResume() {
        if (this.controller != null && TextUtils.isEmpty(this.bidToken) && !com.mbridge.msdk.foundation.feedback.b.f) {
            this.controller.h();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        boolean z;
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.isVisible = z;
        a aVar = this.controller;
        if (aVar != null) {
            if (i == 0) {
                delayedNotify();
            } else {
                aVar.c(false);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.isVisible = z;
        if (this.controller != null) {
            if (i == 0) {
                delayedNotify();
            } else if (!com.mbridge.msdk.foundation.feedback.b.f) {
                this.controller.c(false);
            }
        }
    }

    public void release() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener = null;
        }
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((BannerAdListener) null);
            this.controller.i();
        }
        removeAllViews();
    }

    public void setAllowShowCloseBtn(boolean z) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.mBannerAdListener = bannerAdListener;
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerAdListener);
        }
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        com.mbridge.msdk.foundation.controller.c.m().a(this.unitId, jSONObject);
    }

    public void setRefreshTime(int i) {
        a aVar = this.controller;
        if (aVar != null && i >= 0) {
            aVar.b(i);
        }
    }

    public void updateBannerSize(BannerSize bannerSize) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerSize);
        }
    }

    public MBBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.hadAttached = false;
        this.isVisible = false;
        com.mbridge.msdk.foundation.controller.c.m().a(context);
    }
}
