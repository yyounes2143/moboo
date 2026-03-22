package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class SingletonConnectivityReceiver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile SingletonConnectivityReceiver f4962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<ConnectivityMonitor.ConnectivityListener> f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FrameworkConnectivityMonitor f4965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface FrameworkConnectivityMonitor {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void unregister();
    }

    /* compiled from: Proguard */
    @RequiresApi(24)
    /* loaded from: classes3.dex */
    public static final class FrameworkConnectivityMonitorPostApi24 implements FrameworkConnectivityMonitor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ConnectivityManager.NetworkCallback f4969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AnonymousClass1();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideSuppliers.GlideSupplier<ConnectivityManager> f4970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ConnectivityMonitor.ConnectivityListener f4971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
            public AnonymousClass1() {
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final boolean z) {
                Util.Wwwwwwwwwwwww(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                    }
                });
            }

            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = FrameworkConnectivityMonitorPostApi24.this;
                boolean z2 = frameworkConnectivityMonitorPostApi24.f4972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                frameworkConnectivityMonitorPostApi24.f4972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
                if (z2 != z) {
                    frameworkConnectivityMonitorPostApi24.f4971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NonNull Network network) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NonNull Network network) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            }
        }

        public FrameworkConnectivityMonitorPostApi24(GlideSuppliers.GlideSupplier<ConnectivityManager> glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.f4970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideSupplier;
            this.f4971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectivityListener;
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        @SuppressLint({"MissingPermission"})
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            boolean z;
            if (this.f4970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get().getActiveNetwork() != null) {
                z = true;
            } else {
                z = false;
            }
            this.f4972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            try {
                this.f4970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get().registerDefaultNetworkCallback(this.f4969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return true;
            } catch (RuntimeException unused) {
                return false;
            }
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public void unregister() {
            this.f4970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get().unregisterNetworkCallback(this.f4969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class FrameworkConnectivityMonitorPreApi24 implements FrameworkConnectivityMonitor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Executor f4976Wwwwwwwwwwwwwwwwwwwwwwwwwwww = AsyncTask.SERIAL_EXECUTOR;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BroadcastReceiver f4977Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@NonNull Context context, Intent intent) {
                FrameworkConnectivityMonitorPreApi24.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f4978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideSuppliers.GlideSupplier<ConnectivityManager> f4980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ConnectivityMonitor.ConnectivityListener f4981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FrameworkConnectivityMonitorPreApi24(Context context, GlideSuppliers.GlideSupplier<ConnectivityManager> glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.f4982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
            this.f4980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideSupplier;
            this.f4981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectivityListener;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            f4976Wwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.4
                @Override // java.lang.Runnable
                public void run() {
                    boolean z = FrameworkConnectivityMonitorPreApi24.this.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = frameworkConnectivityMonitorPreApi24.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (z != FrameworkConnectivityMonitorPreApi24.this.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (Log.isLoggable("ConnectivityMonitor", 3)) {
                            boolean z2 = FrameworkConnectivityMonitorPreApi24.this.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi242 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi242.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(frameworkConnectivityMonitorPreApi242.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                }
            });
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final boolean z) {
            Util.Wwwwwwwwwwwww(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.5
                @Override // java.lang.Runnable
                public void run() {
                    FrameworkConnectivityMonitorPreApi24.this.f4981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                }
            });
        }

        @SuppressLint({"MissingPermission"})
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            try {
                NetworkInfo activeNetworkInfo = this.f4980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get().getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    return true;
                }
                return false;
            } catch (RuntimeException unused) {
                return true;
            }
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            f4976Wwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.2
                @Override // java.lang.Runnable
                public void run() {
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.f4979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = frameworkConnectivityMonitorPreApi24.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    try {
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi242 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi242.f4982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.registerReceiver(frameworkConnectivityMonitorPreApi242.f4977Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        FrameworkConnectivityMonitorPreApi24.this.f4978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    } catch (SecurityException unused) {
                        FrameworkConnectivityMonitorPreApi24.this.f4978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    }
                }
            });
            return true;
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public void unregister() {
            f4976Wwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.3
                @Override // java.lang.Runnable
                public void run() {
                    if (!FrameworkConnectivityMonitorPreApi24.this.f4978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        return;
                    }
                    FrameworkConnectivityMonitorPreApi24.this.f4978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.f4982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregisterReceiver(frameworkConnectivityMonitorPreApi24.f4977Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            });
        }
    }

    public SingletonConnectivityReceiver(@NonNull final Context context) {
        FrameworkConnectivityMonitor frameworkConnectivityMonitorPreApi24;
        GlideSuppliers.GlideSupplier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GlideSuppliers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GlideSuppliers.GlideSupplier<ConnectivityManager>() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.1
            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public ConnectivityManager get() {
                return (ConnectivityManager) context.getSystemService("connectivity");
            }
        });
        ConnectivityMonitor.ConnectivityListener connectivityListener = new ConnectivityMonitor.ConnectivityListener() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.2
            @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                ArrayList arrayList;
                Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                synchronized (SingletonConnectivityReceiver.this) {
                    arrayList = new ArrayList(SingletonConnectivityReceiver.this.f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((ConnectivityMonitor.ConnectivityListener) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                }
            }
        };
        if (Build.VERSION.SDK_INT >= 24) {
            frameworkConnectivityMonitorPreApi24 = new FrameworkConnectivityMonitorPostApi24(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, connectivityListener);
        } else {
            frameworkConnectivityMonitorPreApi24 = new FrameworkConnectivityMonitorPreApi24(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, connectivityListener);
        }
        this.f4965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = frameworkConnectivityMonitorPreApi24;
    }

    public static SingletonConnectivityReceiver Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (f4962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (SingletonConnectivityReceiver.class) {
                try {
                    if (f4962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f4962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SingletonConnectivityReceiver(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f4962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(connectivityListener);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(connectivityListener);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @GuardedBy("this")
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            this.f4965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregister();
            this.f4963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        }
    }

    @GuardedBy("this")
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f4963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f4964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            this.f4963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f4965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
