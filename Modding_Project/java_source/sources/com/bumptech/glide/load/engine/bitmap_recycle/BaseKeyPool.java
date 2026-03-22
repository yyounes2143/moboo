package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Util;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
abstract class BaseKeyPool<T extends Poolable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Queue<T> f4454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(20);

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(T t) {
        if (this.f4454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() < 20) {
            this.f4454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.offer(t);
        }
    }

    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        T poll = this.f4454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
        if (poll == null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return poll;
    }

    public abstract T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
