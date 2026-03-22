package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.binding.strategy.d;
import com.mbridge.msdk.dycreator.binding.strategy.e;
import com.mbridge.msdk.dycreator.binding.strategy.f;
import com.mbridge.msdk.dycreator.binding.strategy.g;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f8888a;

    private c() {
    }

    public static c a() {
        if (f8888a == null) {
            synchronized (c.class) {
                try {
                    if (f8888a == null) {
                        f8888a = new c();
                    }
                } finally {
                }
            }
        }
        return f8888a;
    }

    public <T extends BaseStrategy> T a(String str) {
        T t = null;
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("close")) {
                t = new com.mbridge.msdk.dycreator.binding.strategy.c();
            } else if (str.equals(NativeAdPresenter.DOWNLOAD)) {
                t = new com.mbridge.msdk.dycreator.binding.strategy.b();
            } else if (!str.equals("deeplink") && str.equals("activity")) {
                t = new com.mbridge.msdk.dycreator.binding.strategy.a();
            }
            if (str.equals("feedback")) {
                t = new d();
            }
            if (str.equals("notice")) {
                t = new e();
            }
            if (str.equals("permissionInfo")) {
                t = new f();
            }
            if (str.equals("privateAddress")) {
                return new g();
            }
        }
        return t;
    }
}
