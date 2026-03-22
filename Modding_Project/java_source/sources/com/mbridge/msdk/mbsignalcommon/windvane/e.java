package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import com.mbridge.msdk.interstitial.signalcommon.interstitial;
import com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin;
import com.mbridge.msdk.mbsignalcommon.mraid.MraidSignalCommunication;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebGLCheckSignal;
import com.mbridge.msdk.splash.signal.SplashSignal;
import com.mbridge.msdk.video.signal.communication.RewardSignal;
import com.mbridge.msdk.video.signal.communication.VideoCommunication;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {
    private static HashMap<String, Class> d = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private Context f9304a;
    private Object b;
    private WindVaneWebView c;

    public e(Context context, WindVaneWebView windVaneWebView) {
        this.f9304a = context;
        this.c = windVaneWebView;
        a();
    }

    public void a(Context context) {
        this.f9304a = context;
    }

    public void a(Object obj) {
        this.b = obj;
    }

    private Object a(String str, WindVaneWebView windVaneWebView, Context context) {
        Class cls = d.get(str);
        if (cls != null) {
            try {
                if (g.class.isAssignableFrom(cls)) {
                    g gVar = (g) cls.newInstance();
                    gVar.initialize(context, windVaneWebView);
                    gVar.initialize(this.b, windVaneWebView);
                    return gVar;
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public void a(String str, Class cls) {
        if (d == null) {
            d = new HashMap<>();
        }
        d.put(str, cls);
    }

    public Object a(String str) {
        if (d == null) {
            d = new HashMap<>();
        }
        return a(str, this.c, this.f9304a);
    }

    public void a() {
        try {
            int i = interstitial.i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f9270a, interstitial.class);
        } catch (ClassNotFoundException unused) {
        }
        try {
            int i2 = RewardSignal.i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.b, RewardSignal.class);
        } catch (ClassNotFoundException unused2) {
        }
        try {
            int i3 = VideoCommunication.j;
            a(com.mbridge.msdk.mbsignalcommon.base.e.c, VideoCommunication.class);
        } catch (ClassNotFoundException unused3) {
        }
        try {
            int i4 = MraidSignalCommunication.h;
            a(com.mbridge.msdk.mbsignalcommon.base.e.e, MraidSignalCommunication.class);
        } catch (ClassNotFoundException unused4) {
        }
        try {
            int i5 = BannerSignalPlugin.i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f, BannerSignalPlugin.class);
        } catch (ClassNotFoundException unused5) {
        }
        try {
            int i6 = SplashSignal.i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.g, SplashSignal.class);
        } catch (ClassNotFoundException unused6) {
        }
        try {
            int i7 = WebGLCheckSignal.g;
            a(com.mbridge.msdk.mbsignalcommon.base.e.h, WebGLCheckSignal.class);
        } catch (ClassNotFoundException unused7) {
        }
        try {
            if (com.mbridge.msdk.util.b.a()) {
                Class<?> cls = Class.forName("com.mbridge.msdk.mbsignalcommon.confirmation.bridge.ConfirmationJsBridgePlugin");
                a(cls.getSimpleName(), cls);
            }
        } catch (Exception unused8) {
        }
    }
}
