package com.tencent.liteav.base.util;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final ThreadPoolExecutor f10254a;
    final CustomHandler b;
    final List<a> c;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f10255a;
        private final Runnable c;
        private final Runnable d = q.a(this);
        private final long e;

        public a(Runnable runnable, long j) {
            this.c = runnable;
            this.f10255a = p.a(this, runnable);
            this.e = j;
        }

        public final void a() {
            m.this.b.postDelayed(this.d, this.e);
        }
    }

    public m() {
        this(60);
    }

    public final void a(Runnable runnable) {
        this.f10254a.execute(runnable);
    }

    public m(int i) {
        this(i, "SequenceTaskRunner_");
    }

    public final void a(Runnable runnable, long j) {
        a aVar = new a(runnable, j);
        synchronized (this) {
            this.c.add(aVar);
        }
        aVar.a();
    }

    public m(int i, String str) {
        this.f10254a = new ThreadPoolExecutor(0, 1, i, TimeUnit.SECONDS, new LinkedBlockingQueue(), n.a(str));
        this.b = new CustomHandler(Looper.getMainLooper());
        this.c = new ArrayList();
    }
}
