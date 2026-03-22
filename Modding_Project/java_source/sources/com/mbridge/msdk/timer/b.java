package com.mbridge.msdk.timer;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class b {

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.timer.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0170b {

        /* renamed from: a  reason: collision with root package name */
        static b f9654a = new b();
    }

    public static b getInstance() {
        return C0170b.f9654a;
    }

    public void addInterstitialList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().a(str, str2);
        } catch (Exception e) {
            o0.b("TimerController", "addInterstitialList error:" + e.getMessage());
        }
    }

    public void addRewardList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().b(str, str2);
        } catch (Exception e) {
            o0.b("TimerController", "addRewardList error:" + e.getMessage());
        }
    }

    public void start() {
        g d = h.b().d(c.m().b());
        if (d == null) {
            d = h.b().a();
        }
        int h = d.h();
        if (h > 0) {
            com.mbridge.msdk.timer.a.a().b(h * 1000);
        }
    }

    private b() {
    }
}
