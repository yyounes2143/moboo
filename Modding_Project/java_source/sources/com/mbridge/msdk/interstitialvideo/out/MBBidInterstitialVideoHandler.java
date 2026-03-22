package com.mbridge.msdk.interstitialvideo.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.controller.a;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes5.dex */
public class MBBidInterstitialVideoHandler {

    /* renamed from: a  reason: collision with root package name */
    private a f9168a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private InterstitialVideoListener h;
    private int i = 2;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private int n;
    private int o;
    private int p;

    public MBBidInterstitialVideoHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    private void a(String str, String str2) {
        String e = t0.e(str2);
        if (!TextUtils.isEmpty(e)) {
            t0.b(str2, e);
        }
        this.b = str2;
        this.c = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f9168a == null) {
                a aVar = new a();
                this.f9168a = aVar;
                aVar.d(true);
                this.f9168a.e(true);
                this.f9168a.c(str, str2);
            }
        } catch (Throwable th) {
            o0.b("MBBidRewardVideoHandler", th.getMessage(), th);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f9168a;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f9168a;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f9168a;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f9168a;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f9168a != null) {
            this.f9168a.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.b, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f9168a != null) {
            this.f9168a.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.b, true, 2));
        }
    }

    public void playVideoMute(int i) {
        this.i = i;
        a aVar = this.f9168a;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.k = true;
        this.l = true;
        MBridgeGlobalCommon.setAlertDialogText(this.b, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i, int i2) {
        this.n = i;
        this.o = i2;
        this.p = com.mbridge.msdk.foundation.same.a.K;
        this.m = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.h = interstitialVideoListener;
        this.j = true;
        a aVar = this.f9168a;
        if (aVar != null && !aVar.u()) {
            this.f9168a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.b, true));
            this.j = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.h = interstitialVideoListener;
        this.j = true;
        a aVar = this.f9168a;
        if (aVar != null && !aVar.u()) {
            this.f9168a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.b, true));
            this.j = false;
        }
    }

    public void showFromBid() {
        a();
        if (this.f9168a != null) {
            this.f9168a.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.b, false, -1));
        }
    }

    public void setIVRewardEnable(int i, double d) {
        this.n = i;
        this.o = (int) (d * 100.0d);
        this.p = com.mbridge.msdk.foundation.same.a.J;
        this.m = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f9168a == null) {
            b(this.c, this.b);
        }
        if (this.j) {
            a aVar2 = this.f9168a;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.h, this.b, true));
            }
            this.j = false;
        }
        if (this.k) {
            a aVar3 = this.f9168a;
            if (aVar3 != null) {
                aVar3.a(this.d, this.e, this.f, this.g);
            }
            this.k = false;
        }
        if (!this.m || (aVar = this.f9168a) == null) {
            return;
        }
        aVar.a(this.n, this.p, this.o);
        this.m = false;
    }

    private void b() {
        a aVar = this.f9168a;
        if (aVar != null) {
            aVar.a(this.n, this.p, this.o);
        }
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
