package com.iab.omid.library.mmadbridge.internal;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class j {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static j f8318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new j();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WeakReference<Context> f8321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

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
                z = jVar.f8319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                z2 = true;
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                jVar = j.this;
                z = jVar.f8319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                z2 = false;
            } else {
                return;
            }
            jVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z2, z);
            j.this.f8320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        }
    }

    public static j Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        if (!z2 && !z) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (!this.f8319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f8320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (z3 != z4) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                AdSessionStatePublisher Wwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwww();
                if (!z2 && !z) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                Wwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(z5);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (context == null) {
            return;
        }
        this.f8321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Context context = this.f8321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (context == null) {
            return;
        }
        boolean isDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, isDeviceLocked);
        this.f8319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = isDeviceLocked;
    }
}
