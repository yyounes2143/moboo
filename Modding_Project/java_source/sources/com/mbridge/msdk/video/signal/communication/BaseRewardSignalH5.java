package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class BaseRewardSignalH5 extends a {

    /* renamed from: a  reason: collision with root package name */
    protected IJSFactory f9895a;

    private String a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                return Base64.encodeToString(jSONObject2.getBytes(), 2);
            }
            return "";
        } catch (Throwable unused) {
            o0.b("JS-Reward-Communication", "code to string is error");
            return "";
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void cai(Object obj, String str) {
        int i;
        o0.a("JS-Reward-Communication", "cai:" + str);
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    String optString = new JSONObject(str).optString("packageName");
                    if (TextUtils.isEmpty(optString)) {
                        d.a(obj, "packageName is empty");
                    }
                    if (t0.c(c.m().d(), optString)) {
                        i = 1;
                    } else {
                        i = 2;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", d.b);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", i);
                        jSONObject.put("data", jSONObject2);
                        f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e) {
                        d.a(obj, e.getMessage());
                        o0.a("JS-Reward-Communication", e.getMessage());
                    }
                } catch (Throwable th) {
                    d.a(obj, "exception: " + th.getLocalizedMessage());
                    o0.b("JS-Reward-Communication", "cai", th);
                }
            } catch (JSONException e2) {
                d.a(obj, "exception: " + e2.getLocalizedMessage());
                o0.b("JS-Reward-Communication", "cai", e2);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        String str2;
        try {
            IJSFactory iJSFactory = this.f9895a;
            if (iJSFactory != null) {
                String b = iJSFactory.getIJSRewardVideoV1().b();
                if (!TextUtils.isEmpty(b)) {
                    str2 = Base64.encodeToString(b.getBytes(), 2);
                    o0.a("JS-Reward-Communication", "getEndScreenInfo success");
                } else {
                    str2 = "";
                    o0.a("JS-Reward-Communication", "getEndScreenInfo failed");
                }
                f.a().b(obj, str2);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "getEndScreenInfo", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.f9895a != null && !TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString(NotificationCompat.CATEGORY_MESSAGE);
                o0.a("JS-Reward-Communication", "handlerPlayableException,msg:" + str);
                this.f9895a.getIJSRewardVideoV1().handlerPlayableException(optString);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "setOrientation", th);
        }
    }

    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        if (context instanceof IJSFactory) {
            this.f9895a = (IJSFactory) context;
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        try {
            if (this.f9895a != null) {
                o0.a("JS-Reward-Communication", "install:" + str);
                if (this.f9895a.getJSContainerModule().endCardShowing()) {
                    this.f9895a.getJSCommon().click(3, str);
                } else {
                    this.f9895a.getJSCommon().click(1, str);
                }
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "install", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f9895a != null && !TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                o0.a("JS-Reward-Communication", "notifyCloseBtn,state:" + str);
                this.f9895a.getIJSRewardVideoV1().notifyCloseBtn(optInt);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "notifyCloseBtn", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        o0.b("JS-Reward-Communication", "openURL:" + str);
        Context d = c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).b) != null) {
                        d = windVaneWebView.getContext();
                    }
                } catch (Exception e) {
                    o0.b("JS-Reward-Communication", e.getMessage());
                }
            }
            if (d != null) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String optString = jSONObject.optString("url");
                    int optInt = jSONObject.optInt("type");
                    if (optInt == 1) {
                        com.mbridge.msdk.click.c.c(d, optString);
                    } else if (optInt == 2) {
                        com.mbridge.msdk.click.c.e(d, optString);
                    }
                } catch (JSONException e2) {
                    o0.b("JS-Reward-Communication", e2.getMessage());
                } catch (Throwable th) {
                    o0.b("JS-Reward-Communication", th.getMessage());
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        try {
            if (this.f9895a != null && !TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("state");
                o0.a("JS-Reward-Communication", "setOrientation,state:" + str);
                this.f9895a.getIJSRewardVideoV1().a(optString);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "setOrientation", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f9895a != null && !TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                o0.a("JS-Reward-Communication", "toggleCloseBtn,state:" + str);
                this.f9895a.getIJSRewardVideoV1().toggleCloseBtn(optInt);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "toggleCloseBtn", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.f9895a != null && !TextUtils.isEmpty(str)) {
                f.a().b(obj, a(0));
                this.f9895a.getIJSRewardVideoV1().triggerCloseBtn(new JSONObject(str).optString("state"));
                o0.a("JS-Reward-Communication", "triggerCloseBtn,state:" + str);
            }
        } catch (Throwable th) {
            o0.b("JS-Reward-Communication", "triggerCloseBtn", th);
            f.a().b(obj, a(-1));
        }
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        if (obj instanceof IJSFactory) {
            this.f9895a = (IJSFactory) obj;
        }
    }
}
