package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ThreadPoolExecutor f8383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BlockingQueue<Runnable> f8384Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<b> f8382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public b f8381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f8384Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedBlockingQueue;
        this.f8383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar) {
        bVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(bVar);
        if (this.f8381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        b poll = this.f8382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
        this.f8381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = poll;
        if (poll != null) {
            poll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar) {
        this.f8381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
