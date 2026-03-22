package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d {
    public static double f = -1.0d;

    /* renamed from: a  reason: collision with root package name */
    private Context f9296a;
    private AudioManager b;
    private boolean c = false;
    private b d;
    private a e;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<d> f9297a;

        public a(d dVar) {
            this.f9297a = new WeakReference<>(dVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            d dVar;
            b b;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3 && (dVar = this.f9297a.get()) != null && (b = dVar.b()) != null) {
                double a2 = dVar.a();
                if (a2 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    b.a(a2);
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface b {
        void a(double d);
    }

    public d(Context context) {
        this.f9296a = context;
        this.b = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    public double a() {
        AudioManager audioManager = this.b;
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : -1;
        AudioManager audioManager2 = this.b;
        double streamVolume = ((audioManager2 != null ? audioManager2.getStreamVolume(3) : -1) * 100.0d) / streamMaxVolume;
        f = streamVolume;
        return streamVolume;
    }

    public b b() {
        return this.d;
    }

    public void c() {
        if (this.f9296a != null) {
            this.e = new a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f9296a.registerReceiver(this.e, intentFilter);
            this.c = true;
        }
    }

    public void d() {
        Context context;
        if (this.c && (context = this.f9296a) != null) {
            try {
                context.unregisterReceiver(this.e);
                this.d = null;
                this.c = false;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(b bVar) {
        this.d = bVar;
    }
}
