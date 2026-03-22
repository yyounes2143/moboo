package com.tencent.liteav.audio2;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Process;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.tencent.liteav.audio2.c;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.util.m;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class e extends PhoneStateListener implements c.a {
    static c c;
    Class<?> d;
    Object e;
    private b g;
    int f = 0;
    private boolean i = false;

    /* renamed from: a  reason: collision with root package name */
    TelephonyManager f10190a = (TelephonyManager) ContextUtils.getApplicationContext().getSystemService("phone");
    AudioManager b = (AudioManager) ContextUtils.getApplicationContext().getSystemService("audio");
    private m h = new m(60, "PhoneStateManager");

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<e> f10191a;

        public a(e eVar) {
            this.f10191a = new WeakReference<>(eVar);
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            b bVar;
            try {
                if ("onModeChanged".equals(method.getName())) {
                    int intValue = ((Integer) objArr[0]).intValue();
                    e eVar = this.f10191a.get();
                    if (eVar != null && (bVar = eVar.g) != null) {
                        if (intValue == 2) {
                            eVar.i = true;
                            bVar.onInterruptedByPhoneCall();
                            return obj;
                        } else if (eVar.i) {
                            eVar.i = false;
                            bVar.onResumedByPhoneCall();
                            return obj;
                        }
                    }
                }
            } catch (Throwable th) {
                Log.e("PhoneStateManager", "notify mode changed failed, " + th.getMessage(), new Object[0]);
            }
            return obj;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface b {
        void onInterruptedByPhoneCall();

        void onResumedByPhoneCall();
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            c = new c();
        }
    }

    public e(b bVar) {
        this.g = bVar;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        b bVar = this.g;
        if (bVar != null && this.f != i) {
            this.f = i;
            if (i == 2) {
                bVar.onInterruptedByPhoneCall();
            } else if (i == 0) {
                bVar.onResumedByPhoneCall();
            }
        }
    }

    public static boolean b() {
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            return false;
        }
        try {
            return applicationContext.checkPermission("android.permission.READ_PHONE_STATE", Process.myPid(), Process.myUid()) == 0;
        } catch (Throwable th) {
            Log.e("PhoneStateManager", "check permission exception, " + th.getMessage(), new Object[0]);
            return true;
        }
    }

    public static void c() {
        if (Build.VERSION.SDK_INT >= 26 && c != null) {
            Log.i("PhoneStateManager", "unregister audio playback callback.", new Object[0]);
            c.f10188a = null;
        }
    }

    @Override // com.tencent.liteav.audio2.c.a
    public final void a() {
        this.h.a(f.a(this), 500L);
    }

    public static /* synthetic */ void a(e eVar) {
        b bVar = eVar.g;
        if (bVar == null) {
            return;
        }
        try {
            if (eVar.b.getMode() == 2) {
                eVar.i = true;
                bVar.onInterruptedByPhoneCall();
            } else if (eVar.i) {
                eVar.i = false;
                bVar.onResumedByPhoneCall();
            }
        } catch (Throwable th) {
            Log.e("PhoneStateManager", "get Mode exception, " + th.getMessage(), new Object[0]);
        }
    }
}
