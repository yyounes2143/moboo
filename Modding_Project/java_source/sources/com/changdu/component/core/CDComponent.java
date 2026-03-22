package com.changdu.component.core;

import android.app.Application;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.changdu.component.core.googleadid.GoogleAdId;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDComponent {

    /* renamed from: a  reason: collision with root package name */
    public static CDComponentConfigs f5297a = new CDComponentConfigs();
    public static volatile CDComponent b;
    public static Context context;

    public static CDComponent getInstance() {
        if (b == null) {
            synchronized (CDComponent.class) {
                try {
                    if (b == null) {
                        b = new CDComponent();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public static void init(Application application, CDComponentConfigs cDComponentConfigs) {
        if (application != null && cDComponentConfigs != null) {
            Context applicationContext = application.getApplicationContext();
            context = applicationContext;
            f5297a = cDComponentConfigs;
            cDComponentConfigs.a(applicationContext);
            return;
        }
        throw new ExceptionInInitializerError("初始化组件库失败，传入的参数 Context 或 CDComponentConfigs 参数不能为 null");
    }

    public static boolean isReady() {
        if (context != null && f5297a != null) {
            return true;
        }
        return false;
    }

    public String getAndroidId() {
        return f5297a.x;
    }

    public String getAppId() {
        return f5297a.f5298a;
    }

    public String getAppKey() {
        return f5297a.b;
    }

    public String getAppName() {
        return f5297a.u;
    }

    public String getAppVersion() {
        return f5297a.v;
    }

    public int getAppVersionCode() {
        return f5297a.w;
    }

    public String getChannel() {
        return f5297a.g;
    }

    public Context getContext() {
        return context;
    }

    public String getCoreVersion() {
        return f5297a.d;
    }

    public String getDeviceModel() {
        return f5297a.q;
    }

    public String getGoogleAdId() {
        return f5297a.getGoogleAdId();
    }

    public long getGoogleAdIdTimeConsuming() {
        return f5297a.getGoogleAdIdTimeConsuming();
    }

    public String getGuid() {
        return f5297a.h;
    }

    public int getLangId() {
        return f5297a.f;
    }

    public String getMt() {
        return f5297a.e;
    }

    public String getOSVersion() {
        return f5297a.t;
    }

    public Long getProductId() {
        return f5297a.B;
    }

    public String getProductX() {
        return f5297a.c;
    }

    public int getScreenHeight() {
        return f5297a.s;
    }

    public int getScreenWidth() {
        return f5297a.r;
    }

    public String getSendId() {
        return f5297a.A;
    }

    public int getServerProtocolVersion() {
        return f5297a.o;
    }

    public String getSid() {
        return f5297a.i;
    }

    public String getUserAccountName() {
        return f5297a.k;
    }

    public String getUserHeadFrameUrl() {
        return f5297a.n;
    }

    public String getUserHeadUrl() {
        return f5297a.m;
    }

    public String getUserId() {
        return f5297a.j;
    }

    public String getUserNickname() {
        return f5297a.l;
    }

    public int getWebViewToolbarHeightInDP() {
        return f5297a.p;
    }

    @WorkerThread
    public String requestGoogleAdId() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return GoogleAdId.getGoogleAdId(context);
        }
        throw new RuntimeException("不能在主线程中请求获取 Google Advertising Id !!!");
    }

    public void setAppId(String str) {
        f5297a.f5298a = str;
    }

    public void setAppIdKey(String str, String str2) {
        CDComponentConfigs cDComponentConfigs = f5297a;
        cDComponentConfigs.f5298a = str;
        cDComponentConfigs.b = str2;
    }

    public void setAppKey(String str) {
        f5297a.b = str;
    }

    public void setChannel(String str) {
        f5297a.g = str;
    }

    public void setCoreVersion(String str) {
        f5297a.d = str;
    }

    public void setGoogleAdId(String str) {
        f5297a.setGoogleAdId(str);
    }

    public void setGuid(String str) {
        f5297a.h = str;
    }

    public void setLangId(int i) {
        f5297a.f = i;
    }

    public void setProductId(Long l) {
        f5297a.B = l;
    }

    public void setProductX(String str) {
        f5297a.c = str;
    }

    public void setSendId(String str) {
        f5297a.A = str;
    }

    public void setServerProtocolVersion(int i) {
        f5297a.o = i;
    }

    public void setSid(String str) {
        f5297a.i = str;
    }

    public void setUserAccountName(String str) {
        f5297a.k = str;
    }

    public void setUserHeadFrameUrl(String str) {
        f5297a.n = str;
    }

    public void setUserHeadUrl(String str) {
        f5297a.m = str;
    }

    public void setUserId(String str) {
        f5297a.j = str;
    }

    public void setUserNickname(String str) {
        f5297a.l = str;
    }

    public void setWebViewToolbarHeightInDP(int i) {
        f5297a.p = i;
    }
}
