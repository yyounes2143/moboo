package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class TargetTracker implements LifecycleListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Target<?>> f4996Wwwwwwwwwwwwwwwwwwwwwwwww = Collections.newSetFromMap(new WeakHashMap());

    public void Wwwwwwwwwwwwwwwwwwwwwww(@NonNull Target<?> target) {
        this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww.remove(target);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull Target<?> target) {
        this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww.add(target);
    }

    @NonNull
    public List<Target<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
        for (Target target : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            target.onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        for (Target target : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            target.onStart();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        for (Target target : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4996Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            target.onStop();
        }
    }
}
