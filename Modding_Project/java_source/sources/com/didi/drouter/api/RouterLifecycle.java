package com.didi.drouter.api;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterLifecycle implements LifecycleOwner {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LifecycleRegistry f5701Wwwwwwwwwwwwwwwwwwwwwwwww;

    public RouterLifecycle() {
        LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this);
        this.f5701Wwwwwwwwwwwwwwwwwwwwwwwww = lifecycleRegistry;
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f5701Wwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
