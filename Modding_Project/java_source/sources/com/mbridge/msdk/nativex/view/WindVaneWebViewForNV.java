package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.nativex.listener.b;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class WindVaneWebViewForNV extends WindVaneWebView {
    private b r;
    private boolean s;

    public WindVaneWebViewForNV(Context context) {
        super(context);
        this.s = false;
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        b bVar;
        if (i == 4 && (bVar = this.r) != null) {
            bVar.a();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView, android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.s) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void orientation(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (z) {
                jSONObject.put("orientation", "landscape");
            } else {
                jSONObject.put("orientation", "portrait");
            }
            f.a().a((WebView) this, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setBackListener(b bVar) {
        this.r = bVar;
    }

    public void setInterceptTouch(boolean z) {
        this.s = z;
    }

    public void webViewShow(CampaignEx campaignEx, String str) {
        int i;
        try {
            f.a().a((WebView) this, "webviewshow", "");
            m mVar = new m();
            mVar.n(campaignEx.getRequestId());
            mVar.o(campaignEx.getRequestIdNotice());
            if (getContext() != null && getContext().getApplicationContext() != null) {
                mVar.b(campaignEx.getId());
                if (campaignEx.isMraid()) {
                    i = m.N;
                } else {
                    i = m.O;
                }
                mVar.b(i);
                g.d(mVar, getContext().getApplicationContext(), str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = false;
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = false;
    }
}
