package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.j;
import java.util.Deque;
import java.util.LinkedList;
import java.util.concurrent.Semaphore;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class h<T extends j> {

    /* renamed from: a  reason: collision with root package name */
    public final Deque<T> f10386a = new LinkedList();
    public volatile boolean c = false;
    private final g<T> d = (g<T>) new g<T>() { // from class: com.tencent.liteav.videobase.frame.h.1
        @Override // com.tencent.liteav.videobase.frame.g
        public final void a(T t) {
            h.this.b.release();
            synchronized (h.this) {
                try {
                    if (h.this.c) {
                        return;
                    }
                    h.this.f10386a.addFirst(t);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    final Semaphore b = new Semaphore(1);

    public final T a() throws InterruptedException {
        T a2;
        this.b.acquire();
        synchronized (this) {
            try {
                if (!this.f10386a.isEmpty()) {
                    a2 = this.f10386a.removeFirst();
                } else {
                    a2 = a(this.d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (a2.retain() != 1) {
            LiteavLog.e("LimitedFramePool", "invalid reference count for %s", a2);
        }
        return a2;
    }

    public abstract T a(g<T> gVar);
}
