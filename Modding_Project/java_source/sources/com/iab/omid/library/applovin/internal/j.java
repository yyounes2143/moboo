package com.iab.omid.library.applovin.internal;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class j {
    @SuppressLint({"StaticFieldLeak"})
    private static j d = new j();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f8199a;
    private boolean b = false;
    private boolean c = false;

    /* loaded from: classes5.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j jVar;
            boolean z;
            boolean z2;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                jVar = j.this;
                z = jVar.c;
                z2 = true;
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                jVar = j.this;
                z = jVar.c;
                z2 = false;
            } else {
                return;
            }
            jVar.a(z2, z);
            j.this.b = z2;
        }
    }

    public static j b() {
        return d;
    }

    public void a() {
        Context context = this.f8199a.get();
        if (context == null) {
            return;
        }
        boolean isDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        a(this.b, isDeviceLocked);
        this.c = isDeviceLocked;
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        this.f8199a = new WeakReference<>(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void a(boolean z, boolean z2) {
        if ((z2 || z) == (this.c || this.b)) {
            return;
        }
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().b()) {
            aVar.d().b(z2 || z);
        }
    }
}
