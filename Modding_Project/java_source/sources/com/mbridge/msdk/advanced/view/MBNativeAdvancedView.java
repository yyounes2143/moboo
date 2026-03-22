package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.widget.MBAdChoice;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class MBNativeAdvancedView extends RelativeLayout {
    private static String i = "MBAdvancedNativeView";

    /* renamed from: a  reason: collision with root package name */
    private MBNativeAdvancedWebview f8764a;
    private View b;
    private boolean c;
    private boolean d;
    private boolean e;
    MBAdChoice f;
    private com.mbridge.msdk.advanced.signal.b g;
    private Context h;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o0.a(MBNativeAdvancedView.i, "webviewshow");
                int[] iArr = new int[2];
                MBNativeAdvancedView.this.f8764a.getLocationOnScreen(iArr);
                String str = MBNativeAdvancedView.i;
                o0.b(str, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("startX", t0.b(c.m().d(), (float) iArr[0]));
                jSONObject.put("startY", t0.b(c.m().d(), (float) iArr[1]));
                f.a().a((WebView) MBNativeAdvancedView.this.f8764a, "webviewshow", Base64.encodeToString(jSONObject.toString().toString().getBytes(), 2));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public MBNativeAdvancedView(Context context) {
        this(context, null);
    }

    private void b() {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8764a;
        if (mBNativeAdvancedWebview != null && mBNativeAdvancedWebview.getParent() == null) {
            addView(this.f8764a, new ViewGroup.LayoutParams(-1, -1));
        }
        c();
        View view = this.b;
        if (view != null) {
            if (view.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 28.0f), t0.a(getContext(), 16.0f));
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = t0.a(getContext(), 2.0f);
                layoutParams.topMargin = t0.a(getContext(), 2.0f);
                addView(this.b, layoutParams);
            } else {
                bringChildToFront(this.b);
            }
        }
        if (this.f == null) {
            MBAdChoice mBAdChoice = new MBAdChoice(getContext());
            this.f = mBAdChoice;
            mBAdChoice.setFeedbackDialogEventListener(new a());
        }
    }

    private void c() {
        int[] iArr = new int[2];
        this.f8764a.getLocationInWindow(iArr);
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8764a;
        transInfoForMraid(mBNativeAdvancedWebview, iArr[0], iArr[1], mBNativeAdvancedWebview.getWidth(), this.f8764a.getHeight());
        MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f8764a;
        if (mBNativeAdvancedWebview2 != null) {
            mBNativeAdvancedWebview2.setObject(this.g);
            this.f8764a.post(new b());
        }
    }

    public static void transInfoForMraid(WebView webView, int i2, int i3, int i4, int i5) {
        String str;
        o0.b(i, "transInfoForMraid");
        try {
            int i6 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i6 == 2) {
                str = "landscape";
            } else if (i6 == 1) {
                str = "portrait";
            } else {
                str = AdError.UNDEFINED_DOMAIN;
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float n = k0.n(c.m().d());
            float m = k0.m(c.m().d());
            HashMap v = k0.v(c.m().d());
            int intValue = ((Integer) v.get("width")).intValue();
            int intValue2 = ((Integer) v.get("height")).intValue();
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "inline");
            hashMap.put("state", "default");
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            float f = i2;
            float f2 = i3;
            float f3 = i4;
            float f4 = i5;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f, f2, f3, f4);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f, f2, f3, f4);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, n, m);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, intValue, intValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th) {
            o0.b(i, "transInfoForMraid", th);
        }
    }

    public void changeCloseBtnState(int i2) {
        View view = this.b;
        if (view != null) {
            if (i2 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.e = false;
        this.d = false;
        this.c = false;
    }

    public void clearResStateAndRemoveClose() {
        clearResState();
        View view = this.b;
        if (view != null && view.getParent() != null) {
            removeView(this.b);
        }
        MBAdChoice mBAdChoice = this.f;
        if (mBAdChoice != null && mBAdChoice.getParent() != null) {
            removeView(this.f);
        }
    }

    public void destroy() {
        removeAllViews();
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8764a;
        if (mBNativeAdvancedWebview != null && !mBNativeAdvancedWebview.isDestoryed()) {
            this.f8764a.release();
            com.mbridge.msdk.advanced.signal.a.a(this.f8764a, "onSystemDestory", "");
        }
        if (this.h != null) {
            this.h = null;
        }
    }

    public com.mbridge.msdk.advanced.signal.b getAdvancedNativeSignalCommunicationImpl() {
        return this.g;
    }

    public MBNativeAdvancedWebview getAdvancedNativeWebview() {
        return this.f8764a;
    }

    public View getCloseView() {
        return this.b;
    }

    public boolean isEndCardReady() {
        return this.e;
    }

    public boolean isH5Ready() {
        return this.c;
    }

    public boolean isVideoReady() {
        return this.d;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void resetLoadState() {
        this.e = false;
        this.d = false;
        this.c = false;
    }

    public void setAdChoiceCampaign(CampaignEx campaignEx) {
        MBAdChoice mBAdChoice = this.f;
        if (mBAdChoice != null) {
            mBAdChoice.setCampaign(campaignEx);
            if (this.f.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(c.m().d(), 6.0f), t0.a(c.m().d(), 6.0f));
                layoutParams.addRule(11);
                layoutParams.addRule(12);
                addView(this.f, layoutParams);
                return;
            }
            bringChildToFront(this.f);
        }
    }

    public void setAdvancedNativeSignalCommunicationImpl(com.mbridge.msdk.advanced.signal.b bVar) {
        this.g = bVar;
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8764a;
        if (mBNativeAdvancedWebview != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setAdvancedNativeWebview(MBNativeAdvancedWebview mBNativeAdvancedWebview) {
        this.f8764a = mBNativeAdvancedWebview;
        com.mbridge.msdk.advanced.signal.b bVar = this.g;
        if (bVar != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setCloseView(View view) {
        this.b = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setEndCardReady(boolean z) {
        this.e = z;
    }

    public void setH5Ready(boolean z) {
        this.c = z;
    }

    public void setVideoReady(boolean z) {
        this.d = z;
    }

    public void show() {
        b();
        clearResState();
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = context;
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.foundation.feedback.a {
        public a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBNativeAdvancedView.i, th.getMessage(), th);
                str = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBNativeAdvancedView.i, th.getMessage(), th);
                str = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBNativeAdvancedView.i, th.getMessage(), th);
                str2 = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }
}
