package com.applovin.impl;

import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t4 {

    /* renamed from: a  reason: collision with root package name */
    private final Set f3753a = new HashSet(32);
    private final Object b = new Object();

    public boolean a(String str) {
        synchronized (this.b) {
            try {
                for (u4 u4Var : this.f3753a) {
                    if (str.equals(u4Var.b())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        u4 a2;
        if (StringUtils.isValidString(str)) {
            synchronized (this.b) {
                a2 = a(str, appLovinCommunicatorSubscriber);
            }
            if (a2 != null) {
                a2.a(false);
                AppLovinBroadcastManager.unregisterReceiver(a2);
            }
        }
    }

    public boolean a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber != null && StringUtils.isValidString(str)) {
            synchronized (this.b) {
                try {
                    u4 a2 = a(str, appLovinCommunicatorSubscriber);
                    if (a2 != null) {
                        com.applovin.impl.sdk.o.h("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
                        if (!a2.c()) {
                            a2.a(true);
                            AppLovinBroadcastManager.registerReceiver(a2, new IntentFilter(str));
                        }
                        return true;
                    }
                    u4 u4Var = new u4(str, appLovinCommunicatorSubscriber);
                    this.f3753a.add(u4Var);
                    AppLovinBroadcastManager.registerReceiver(u4Var, new IntentFilter(str));
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        com.applovin.impl.sdk.o.h("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
        return false;
    }

    private u4 a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (u4 u4Var : this.f3753a) {
            if (str.equals(u4Var.b()) && appLovinCommunicatorSubscriber.equals(u4Var.a())) {
                return u4Var;
            }
        }
        return null;
    }
}
