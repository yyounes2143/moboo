package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.bumptech.glide.util.Util;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class LifecycleLifecycle implements Lifecycle, LifecycleObserver {
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final androidx.lifecycle.Lifecycle f4933Wwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<LifecycleListener> f4934Wwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    public LifecycleLifecycle(androidx.lifecycle.Lifecycle lifecycle) {
        this.f4933Wwwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        lifecycle.addObserver(this);
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull LifecycleListener lifecycleListener) {
        this.f4934Wwwwwwwwwwwwwwwwwwwwwwwww.add(lifecycleListener);
        if (this.f4933Wwwwwwwwwwwwwwwwwwwwwwww.getCurrentState() == Lifecycle.State.DESTROYED) {
            lifecycleListener.onDestroy();
        } else if (this.f4933Wwwwwwwwwwwwwwwwwwwwwwww.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull LifecycleListener lifecycleListener) {
        this.f4934Wwwwwwwwwwwwwwwwwwwwwwwww.remove(lifecycleListener);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4934Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onDestroy();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4934Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onStart();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4934Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onStop();
        }
    }
}
