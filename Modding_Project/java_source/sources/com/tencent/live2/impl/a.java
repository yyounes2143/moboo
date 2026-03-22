package com.tencent.live2.impl;

import android.content.Context;
import com.tencent.liteav.LiveSettingJni;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.live.V2TXLivePremierJni;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePremier;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0214a f10457a = new C0214a();
    private static V2TXLivePremier.V2TXLivePremierObserver b;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.live2.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0214a implements LiteavLog.a {

        /* renamed from: a  reason: collision with root package name */
        V2TXLivePremier.V2TXLivePremierObserver f10458a;

        @Override // com.tencent.liteav.base.util.LiteavLog.a
        public final void a(int i, String str, String str2) {
            V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver = this.f10458a;
            if (v2TXLivePremierObserver != null) {
                v2TXLivePremierObserver.onLog(i, str2);
            }
        }
    }

    public static String a() {
        return CommonUtil.getSDKVersionStr();
    }

    public static int c(String str) {
        return V2TXLivePremierJni.callExperimentalAPI(str);
    }

    public static void a(V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver) {
        b = v2TXLivePremierObserver;
        f10457a.f10458a = v2TXLivePremierObserver;
        V2TXLivePremierJni.setObserver(v2TXLivePremierObserver);
    }

    public static void b(boolean z, V2TXLiveDef.V2TXLiveAudioFrameObserverFormat v2TXLiveAudioFrameObserverFormat) {
        V2TXLivePremierJni.enableAudioPlayoutObserver(z, v2TXLiveAudioFrameObserverFormat);
    }

    public static void b(String str) {
        LiveSettingJni.setUserId(str);
    }

    public static void a(V2TXLiveDef.V2TXLiveLogConfig v2TXLiveLogConfig) {
        LiteavLog.b bVar;
        if (v2TXLiveLogConfig != null) {
            LiteavLog.nativeSetConsoleLogEnabled(v2TXLiveLogConfig.enableConsole);
            LiteavLog.nativeSetLogToFileEnabled(v2TXLiveLogConfig.enableLogFile);
            String str = v2TXLiveLogConfig.logPath;
            if (str != null) {
                LiteavLog.nativeSetLogFilePath(str);
            }
            int i = v2TXLiveLogConfig.logLevel;
            if (i == 2) {
                bVar = LiteavLog.b.kInfo;
            } else if (i == 3) {
                bVar = LiteavLog.b.kWarning;
            } else if (i == 4) {
                bVar = LiteavLog.b.kError;
            } else if (i == 5) {
                bVar = LiteavLog.b.kFatal;
            } else if (i != 6) {
                bVar = LiteavLog.b.kAll;
            } else {
                bVar = LiteavLog.b.kNone;
            }
            LiteavLog.nativeSetLogLevel(bVar.mNativeValue);
            C0214a c0214a = f10457a;
            boolean z = v2TXLiveLogConfig.enableObserver;
            if (!z) {
                c0214a = null;
            }
            LiteavLog.setCallback(c0214a);
            LiteavLog.nativeSetLogCallbackEnabled(z);
        }
    }

    public static void a(String str) {
        CommonUtil.setGlobalEnv(str);
    }

    public static void a(Context context, String str, String str2) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        LicenseChecker.getInstance().setListener(new LicenseChecker.b() { // from class: com.tencent.live2.impl.a.1
            @Override // com.tencent.liteav.sdk.common.LicenseChecker.b
            public final void a(int i, String str3) {
                V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver = a.b;
                if (v2TXLivePremierObserver != null) {
                    v2TXLivePremierObserver.onLicenceLoaded(i, str3);
                }
            }
        });
        LicenseChecker.getInstance().setLicense(LicenseChecker.c.LIVE, str, str2);
    }

    public static void a(String str, int i, String str2, String str3, V2TXLiveDef.V2TXLiveSocks5ProxyConfig v2TXLiveSocks5ProxyConfig) {
        CommonUtil.setSocks5Proxy(str, i, str2, str3, v2TXLiveSocks5ProxyConfig.supportHttps, v2TXLiveSocks5ProxyConfig.supportTcp, v2TXLiveSocks5ProxyConfig.supportUdp);
    }

    public static void a(boolean z, V2TXLiveDef.V2TXLiveAudioFrameObserverFormat v2TXLiveAudioFrameObserverFormat) {
        V2TXLivePremierJni.enableAudioCaptureObserver(z, v2TXLiveAudioFrameObserverFormat);
    }

    public static void a(boolean z) {
        V2TXLivePremierJni.enableVoiceEarMonitorObserver(z);
    }
}
