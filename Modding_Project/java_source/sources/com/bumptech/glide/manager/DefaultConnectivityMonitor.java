package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.ConnectivityMonitor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class DefaultConnectivityMonitor implements ConnectivityMonitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectivityMonitor.ConnectivityListener f4931Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4932Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DefaultConnectivityMonitor(@NonNull Context context, @NonNull ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f4932Wwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        this.f4931Wwwwwwwwwwwwwwwwwwwwwwww = connectivityListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SingletonConnectivityReceiver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4932Wwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4931Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SingletonConnectivityReceiver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4932Wwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4931Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }
}
