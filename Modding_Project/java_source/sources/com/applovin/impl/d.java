package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import com.applovin.adview.AppLovinFullscreenActivity;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class d {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference f3106a = new WeakReference(null);
        final /* synthetic */ Class b;
        final /* synthetic */ b c;
        final /* synthetic */ c d;

        public a(Class cls, b bVar, c cVar) {
            this.b = cls;
            this.c = bVar;
            this.d = cVar;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (this.b.isInstance(activity) && this.f3106a.get() == null) {
                this.f3106a = new WeakReference(activity);
                this.c.a(activity);
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.b.isInstance(activity) && !activity.isChangingConfigurations() && this.f3106a.get() == activity) {
                this.d.b(this);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(Activity activity);
    }

    public static void a(Context context, Class cls, c cVar, b bVar) {
        cVar.a(new a(cls, bVar, cVar));
        a(context, cls);
    }

    public static String b(AppLovinFullscreenActivity appLovinFullscreenActivity) {
        try {
            return appLovinFullscreenActivity.getPackageManager().getActivityInfo(new ComponentName(appLovinFullscreenActivity, appLovinFullscreenActivity.getClass()), 0).taskAffinity;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Context context, Class cls) {
        Intent intent = new Intent(context, cls);
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    public static void a(boolean z, Activity activity) {
        WindowInsetsController insetsController;
        int systemBars;
        if (z && k0.b()) {
            insetsController = activity.getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsBehavior(2);
                systemBars = WindowInsets.Type.systemBars();
                insetsController.hide(systemBars);
                return;
            }
            activity.getWindow().getDecorView().setSystemUiVisibility(5894);
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public static boolean a(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isChangingConfigurations() || activity.isDestroyed();
    }

    public static Activity a(View view) {
        if (view == null) {
            return null;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        r2 = r2.baseActivity;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(com.applovin.adview.AppLovinFullscreenActivity r5) {
        /*
            boolean r0 = com.applovin.impl.k0.i()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r5.getSystemService(r0)     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Exception -> L5b
            java.util.List r0 = r0.getAppTasks()     // Catch: java.lang.Exception -> L5b
            if (r0 == 0) goto L5b
            boolean r2 = r0.isEmpty()     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L1d
            goto L5b
        L1d:
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L5b
        L21:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L5b
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager$AppTask r2 = (android.app.ActivityManager.AppTask) r2     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager$RecentTaskInfo r2 = r2.getTaskInfo()     // Catch: java.lang.Exception -> L5b
            android.content.ComponentName r3 = com.applovin.impl.Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Exception -> L5b
            java.lang.Class r4 = r5.getClass()     // Catch: java.lang.Exception -> L5b
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Exception -> L5b
            if (r3 == 0) goto L21
            java.lang.String r3 = r3.getClassName()     // Catch: java.lang.Exception -> L5b
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L5b
            if (r3 == 0) goto L21
            android.content.ComponentName r2 = com.applovin.impl.Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L21
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Exception -> L5b
            r0 = 0
            android.content.pm.ActivityInfo r5 = r5.getActivityInfo(r2, r0)     // Catch: java.lang.Exception -> L5b
            java.lang.String r5 = r5.taskAffinity     // Catch: java.lang.Exception -> L5b
            return r5
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d.a(com.applovin.adview.AppLovinFullscreenActivity):java.lang.String");
    }
}
