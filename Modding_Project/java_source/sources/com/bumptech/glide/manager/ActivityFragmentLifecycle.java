package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class ActivityFragmentLifecycle implements Lifecycle {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4928Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4929Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<LifecycleListener> f4930Wwwwwwwwwwwwwwwwwwwwwwwww = Collections.newSetFromMap(new WeakHashMap());

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4929Wwwwwwwwwwwwwwwwwwwwwwww = false;
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4930Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onStop();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4929Wwwwwwwwwwwwwwwwwwwwwwww = true;
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4930Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onStart();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4928Wwwwwwwwwwwwwwwwwwwwwww = true;
        for (LifecycleListener lifecycleListener : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4930Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            lifecycleListener.onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull LifecycleListener lifecycleListener) {
        this.f4930Wwwwwwwwwwwwwwwwwwwwwwwww.add(lifecycleListener);
        if (this.f4928Wwwwwwwwwwwwwwwwwwwwwww) {
            lifecycleListener.onDestroy();
        } else if (this.f4929Wwwwwwwwwwwwwwwwwwwwwwww) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull LifecycleListener lifecycleListener) {
        this.f4930Wwwwwwwwwwwwwwwwwwwwwwwww.remove(lifecycleListener);
    }
}
