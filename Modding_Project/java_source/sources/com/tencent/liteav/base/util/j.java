package com.tencent.liteav.base.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class j implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static final r<Boolean> f10250a = new r<>(k.a());
    private volatile WeakReference<Activity> b;
    private volatile Boolean c;
    private volatile a d;
    private final Set<Integer> e;
    private final Set<Integer> f;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a(boolean z);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final j f10251a = new j((byte) 0);
    }

    public /* synthetic */ j(byte b2) {
        this();
    }

    public static void a(boolean z) {
        f10250a.a(Boolean.valueOf(z));
    }

    public final synchronized boolean b() {
        try {
            if (this.c == null) {
                this.c = f10250a.a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c.booleanValue();
    }

    public final Activity c() {
        WeakReference<Activity> weakReference = this.b;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityDestroyed(Activity activity) {
        Object obj;
        try {
            StringBuilder sb = new StringBuilder("onActivityDestroyed, activity=");
            sb.append(activity);
            sb.append(" mActivity=");
            if (this.b != null) {
                obj = this.b.get();
            } else {
                obj = AbstractJsonLexerKt.NULL;
            }
            sb.append(obj);
            Log.i("ProcessLifecycleOwner", sb.toString(), new Object[0]);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityPaused(Activity activity) {
        this.f.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityResumed(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityStarted(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final synchronized void onActivityStopped(Activity activity) {
        Object obj;
        try {
            StringBuilder sb = new StringBuilder("onActivityStopped, activity=");
            sb.append(activity);
            sb.append(" mActivity=");
            if (this.b != null) {
                obj = this.b.get();
            } else {
                obj = AbstractJsonLexerKt.NULL;
            }
            sb.append(obj);
            boolean z = false;
            Log.i("ProcessLifecycleOwner", sb.toString(), new Object[0]);
            int hashCode = activity.hashCode();
            if (this.e.contains(Integer.valueOf(hashCode))) {
                this.e.remove(Integer.valueOf(hashCode));
                if (this.e.size() == 0) {
                    z = true;
                }
                b(z);
                if (this.b != null && this.b.get() == activity) {
                    this.b = null;
                }
            } else if (this.e.size() == 0) {
                if (this.f.contains(Integer.valueOf(hashCode))) {
                    b(true);
                }
            } else {
                b(false);
            }
            this.f.remove(Integer.valueOf(hashCode));
        } catch (Throwable th) {
            throw th;
        }
    }

    private j() {
        this.b = null;
        this.c = null;
        this.e = new HashSet();
        this.f = new HashSet();
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            Log.e("ProcessLifecycleOwner", "ProcessStateOwner init failed. Context is null", new Object[0]);
        } else {
            ((Application) applicationContext.getApplicationContext()).registerActivityLifecycleCallbacks(this);
        }
    }

    public static j a() {
        return b.f10251a;
    }

    public final synchronized void a(a aVar) {
        this.d = aVar;
    }

    private synchronized void b(boolean z) {
        try {
            if (this.c != null) {
                if (this.c.booleanValue() != z) {
                }
            }
            this.c = Boolean.valueOf(z);
            f10250a.a(Boolean.valueOf(z));
            if (this.d != null) {
                this.d.a(this.c.booleanValue());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static boolean a(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                Log.e("ProcessLifecycleOwner", "activityManager is null.", new Object[0]);
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                Log.e("ProcessLifecycleOwner", "processInfoList is null.", new Object[0]);
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && context.getPackageName().equals(runningAppProcessInfo.processName)) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            Log.e("ProcessLifecycleOwner", "Get App background state failed. ".concat(String.valueOf(e)), new Object[0]);
            return false;
        }
    }

    private void a(Activity activity) {
        this.e.add(Integer.valueOf(activity.hashCode()));
        this.b = new WeakReference<>(activity);
        b(false);
        Log.i("ProcessLifecycleOwner", "update activity to ".concat(String.valueOf(activity)), new Object[0]);
    }
}
