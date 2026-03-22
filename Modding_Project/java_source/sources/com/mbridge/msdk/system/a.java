package com.mbridge.msdk.system;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.foundation.controller.authoritycontroller.AuthorityInfoBean;
import com.mbridge.msdk.foundation.controller.authoritycontroller.CallBackForDeveloper;
import com.mbridge.msdk.foundation.controller.d;
import com.mbridge.msdk.foundation.same.report.e;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.MIMManager;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.DeveloperTransferIdInfo;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.out.SDKInitStatusListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class a implements MBridgeSDK {
    protected static final String LOG_TAG = "com.mbridge.msdk";
    public static Map<String, String> map;
    private com.mbridge.msdk.system.b mBridgeSDKImplDiff;
    protected volatile Context mContext;
    protected SDKInitStatusListener mStatusListener;
    protected volatile AtomicBoolean sdkInited;
    public boolean isCoolStart = true;
    protected volatile MBridgeSDK.PLUGIN_LOAD_STATUS STATUS = MBridgeSDK.PLUGIN_LOAD_STATUS.INITIAL;
    protected boolean initCallbacked = false;
    protected boolean isRegisteredLifeCycle = false;
    protected volatile boolean isMIMinited = false;
    protected volatile boolean isInitStarted = false;
    private final Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new C0164a();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f9537a;
        final /* synthetic */ long b;

        public b(boolean z, long j) {
            this.f9537a = z;
            this.b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                r0.a(a.this.mContext);
                a.this.mBridgeSDKImplDiff = new com.mbridge.msdk.system.b();
                a.this.mBridgeSDKImplDiff.a(a.map);
                d.a().a(a.map, a.this.mContext);
                a.this.STATUS = MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED;
                a.this.mBridgeSDKImplDiff.a(a.this.mContext);
                f.a().c();
                t0.f();
                a.this.initMIMManager();
                e0.a().c();
                a.this.sdkInited.set(true);
                a aVar = a.this;
                if (!aVar.initCallbacked) {
                    aVar.initCallbacked = true;
                    aVar.callbackToDeveloper(this.f9537a, System.currentTimeMillis() - this.b, true, "");
                }
                e.c().b();
                if (a.this.mContext instanceof Application) {
                    a aVar2 = a.this;
                    aVar2.registerActivityLifecycleListener((Application) aVar2.mContext);
                }
            } catch (Throwable th) {
                a.this.sdkInited.set(false);
                a aVar3 = a.this;
                if (!aVar3.initCallbacked) {
                    aVar3.initCallbacked = true;
                    aVar3.callbackToDeveloper(this.f9537a, System.currentTimeMillis() - this.b, false, th.getMessage());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f9538a;
        final /* synthetic */ String b;

        public c(boolean z, String str) {
            this.f9538a = z;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SDKInitStatusListener sDKInitStatusListener = a.this.mStatusListener;
            if (sDKInitStatusListener != null) {
                if (this.f9538a) {
                    sDKInitStatusListener.onInitSuccess();
                } else {
                    sDKInitStatusListener.onInitFail(this.b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackToDeveloper(boolean z, long j, boolean z2, String str) {
        this.isInitStarted = false;
        if (z) {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new c(z2, str));
        } else {
            SDKInitStatusListener sDKInitStatusListener = this.mStatusListener;
            if (sDKInitStatusListener != null) {
                if (z2) {
                    sDKInitStatusListener.onInitSuccess();
                } else {
                    sDKInitStatusListener.onInitFail(str);
                }
            }
        }
        j.a(z2, j, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMIMManager() {
        try {
            String str = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(str) && str.equals("Xiaomi")) {
                this.isMIMinited = true;
                MIMManager.b().b(this.mContext.getApplicationContext());
            }
        } catch (Throwable th) {
            o0.b("com.mbridge.msdk", th.getMessage());
        }
    }

    private void unregisterActivityLifecycleListener(Application application) {
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        if (this.isRegisteredLifeCycle && (activityLifecycleCallbacks = this.activityLifecycleCallbacks) != null) {
            application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }

    public void checkAliveContext(Context context) {
        if (com.mbridge.msdk.foundation.controller.c.m().d() == null && context != null) {
            com.mbridge.msdk.foundation.controller.c.m().b(context);
        }
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public boolean getConsentStatus(Context context) {
        checkAliveContext(context);
        return com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().b();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public Map<String, String> getMBConfigurationMap(String str, String str2) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public MBridgeSDK.PLUGIN_LOAD_STATUS getStatus() {
        return this.STATUS;
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void init(Map<String, String> map2, Application application) {
        this.mContext = application.getApplicationContext();
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void initAsync(Map<String, String> map2, Application application) {
        this.mContext = application.getApplicationContext();
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void preload(Map<String, Object> map2) {
        if (this.STATUS == MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            d.a().a(map2, 0);
        }
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void preloadFrame(Map<String, Object> map2) {
        d.a().a(map2, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
        if (com.mbridge.msdk.foundation.tools.q0.a().b("c_r_a_l_c", 0) == 0) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void registerActivityLifecycleListener(android.app.Application r5) {
        /*
            r4 = this;
            r0 = 1
            com.mbridge.msdk.foundation.tools.q0 r1 = com.mbridge.msdk.foundation.tools.q0.a()     // Catch: java.lang.Exception -> L10
            java.lang.String r2 = "c_r_a_l_c"
            r3 = 0
            int r1 = r1.b(r2, r3)     // Catch: java.lang.Exception -> L10
            if (r1 != 0) goto L1b
        Le:
            r3 = r0
            goto L1b
        L10:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "com.mbridge.msdk"
            com.mbridge.msdk.foundation.tools.o0.b(r2, r1)
            goto Le
        L1b:
            if (r5 == 0) goto L28
            if (r3 == 0) goto L28
            android.app.Application$ActivityLifecycleCallbacks r1 = r4.activityLifecycleCallbacks
            if (r1 == 0) goto L26
            r5.registerActivityLifecycleCallbacks(r1)
        L26:
            r4.isRegisteredLifeCycle = r0
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.system.a.registerActivityLifecycleListener(android.app.Application):void");
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void release() {
        if (this.STATUS == MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            d.a().f();
        }
        if (this.mContext instanceof Application) {
            unregisterActivityLifecycleListener((Application) this.mContext);
        }
        com.mbridge.msdk.system.b bVar = this.mBridgeSDKImplDiff;
        if (bVar != null) {
            bVar.a();
        }
        e0.a().e();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setAllowAcquireIds(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.b.a(z);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setAllowTransferIdsIfLimit(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.b.b(z);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setConsentStatus(Context context, int i) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().a(i);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setCoppaStatus(Context context, boolean z) {
        int i;
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c m = com.mbridge.msdk.foundation.controller.authoritycontroller.c.m();
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        m.b(i);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setDeveloperIds(DeveloperTransferIdInfo developerTransferIdInfo) {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() && developerTransferIdInfo != null && !TextUtils.isEmpty(developerTransferIdInfo.getGaid())) {
            com.mbridge.msdk.foundation.tools.f.a(developerTransferIdInfo.getGaid());
        }
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    @Deprecated
    public void setDoNotTrackStatus(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(z ? 1 : 0);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setPlayVideoMute(int i, int i2) {
        if (i == 94) {
            com.mbridge.msdk.foundation.same.a.W = i2;
        } else if (i == 287) {
            com.mbridge.msdk.foundation.same.a.X = i2;
        }
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setUserPrivateInfoType(Context context, String str, int i) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().a(str, i);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void updateDialogWeakActivity(WeakReference<Activity> weakReference) {
        com.mbridge.msdk.foundation.controller.c.m().a(weakReference);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public AuthorityInfoBean userPrivateInfo(Context context) {
        checkAliveContext(context);
        return com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().a();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public Map<String, String> getMBConfigurationMap(String str, String str2, boolean z) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setDoNotTrackStatus(Context context, boolean z) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(z ? 1 : 0);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public Map<String, String> getMBConfigurationMap(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put(MBridgeConstans.ID_MBRIDGE_APPID, str);
        hashMap.put(MBridgeConstans.ID_MBRIDGE_APPKEY, str2);
        hashMap.put(MBridgeConstans.ID_MBRIDGE_WX_APPID, str3);
        hashMap.put(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH, String.valueOf(1));
        return hashMap;
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setConsentStatus(Context context) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().a(context, (OnCompletionListener) null);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void init(Map<String, String> map2, Context context) {
        this.mContext = context.getApplicationContext();
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void initAsync(Map<String, String> map2, Context context) {
        this.mContext = context.getApplicationContext();
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setConsentStatus(Context context, OnCompletionListener onCompletionListener) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().a(context, onCompletionListener);
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void init(Map<String, String> map2, Application application, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = application;
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void initAsync(Map<String, String> map2, Application application, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = application;
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public Map<String, String> getMBConfigurationMap(String str, String str2, String str3, boolean z) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void init(Map<String, String> map2, Context context, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = context.getApplicationContext();
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void initAsync(Map<String, String> map2, Context context, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = context.getApplicationContext();
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    private void init() {
        SDKInitStatusListener sDKInitStatusListener;
        SDKInitStatusListener sDKInitStatusListener2;
        if (this.sdkInited == null) {
            this.sdkInited = new AtomicBoolean(false);
        }
        this.initCallbacked = false;
        try {
            if (this.sdkInited.get() && (sDKInitStatusListener2 = this.mStatusListener) != null && !this.initCallbacked) {
                this.initCallbacked = true;
                sDKInitStatusListener2.onInitSuccess();
                return;
            }
        } catch (Exception e) {
            o0.b("com.mbridge.msdk", e.getMessage());
        }
        if (this.mContext == null && (sDKInitStatusListener = this.mStatusListener) != null) {
            this.initCallbacked = true;
            sDKInitStatusListener.onInitFail("Context can not be null.");
        } else if (this.isInitStarted) {
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            boolean z = Looper.myLooper() == Looper.getMainLooper();
            this.isInitStarted = true;
            try {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new b(z, currentTimeMillis));
            } catch (Exception e2) {
                o0.b("com.mbridge.msdk", "INIT FAIL", e2);
                if (this.sdkInited != null) {
                    this.sdkInited.set(false);
                }
                if (this.initCallbacked) {
                    return;
                }
                this.initCallbacked = true;
                callbackToDeveloper(z, System.currentTimeMillis() - currentTimeMillis, false, e2.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.system.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0164a implements Application.ActivityLifecycleCallbacks {
        public C0164a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            if (a.this.isMIMinited) {
                MIMManager.b().f();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
            if (a.this.isMIMinited) {
                MIMManager.b().g();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
            int g = com.mbridge.msdk.foundation.controller.c.m().g();
            o0.b("com.mbridge.msdk", "onActivityPaused currentActivityNum:" + g);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
            int g = com.mbridge.msdk.foundation.controller.c.m().g();
            o0.b("com.mbridge.msdk", "onActivityStarted currentActivityNum:" + g);
            o0.b("com.mbridge.msdk", "onActivityStarted isCoolStart:" + a.this.isCoolStart);
            if (!a.this.isCoolStart && g == 0) {
                j.a("1");
            }
            if (a.this.mBridgeSDKImplDiff != null) {
                com.mbridge.msdk.system.b bVar = a.this.mBridgeSDKImplDiff;
                a aVar = a.this;
                bVar.a(activity, g, aVar.isCoolStart, aVar.mContext);
            }
            a.this.isCoolStart = false;
            com.mbridge.msdk.foundation.controller.c.m().a(g + 1);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
            int g = com.mbridge.msdk.foundation.controller.c.m().g();
            o0.b("com.mbridge.msdk", "onActivityStopped currentActivityNum:" + g);
            if (g == 1 || g == 0) {
                j.a("2");
            }
            com.mbridge.msdk.foundation.controller.c.m().a(g - 1);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    public void setThirdPartyFeatures(Map<String, Object> map2) {
    }

    public void init(Application application) {
        this.mContext = application.getApplicationContext();
        init();
    }

    @Override // com.mbridge.msdk.MBridgeSDK
    @Deprecated
    public void showUserPrivateInfoTips(Context context, CallBackForDeveloper callBackForDeveloper) {
    }
}
