package com.iab.omid.library.vungle.walking.async;

import com.iab.omid.library.vungle.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ThreadPoolExecutor f8683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BlockingQueue<Runnable> f8684Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<b> f8682Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public b f8681Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f8684Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedBlockingQueue;
        this.f8683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar) {
        bVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8682Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(bVar);
        if (this.f8681Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        b poll = this.f8682Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
        this.f8681Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = poll;
        if (poll != null) {
            poll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar) {
        this.f8681Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
