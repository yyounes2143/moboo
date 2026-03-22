package com.mbridge.msdk.tracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.unity3d.services.UnityAdsConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final c f9704a;
    private final int b;
    private final int c;
    private final int d;
    private final k e;
    private Handler i;
    private final AtomicInteger f = new AtomicInteger(0);
    private final AtomicInteger g = new AtomicInteger(0);
    private final Object h = new Object();
    private boolean j = true;
    private long k = 0;
    private volatile boolean l = false;
    private volatile boolean m = false;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final s f9706a;

        public b(Looper looper, s sVar) {
            super(looper);
            this.f9706a = sVar;
        }

        private void a(String str) {
            this.f9706a.e.v();
            this.f9706a.g.addAndGet(0);
            this.f9706a.f9704a.b();
        }

        private void b() {
            try {
                removeMessages(1);
                removeMessages(6);
                removeMessages(2);
                removeMessages(3);
            } catch (Exception unused) {
                if (com.mbridge.msdk.tracker.a.f9655a) {
                    this.f9706a.e.v();
                }
            }
            if (!this.f9706a.g()) {
                try {
                    sendMessageDelayed(Message.obtain(this, 1), y.a(this.f9706a.f.get(), this.f9706a.k, this.f9706a.c));
                } catch (Exception unused2) {
                    if (com.mbridge.msdk.tracker.a.f9655a) {
                        this.f9706a.e.v();
                    }
                }
            }
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            e eVar;
            super.dispatchMessage(message);
            int i = message.what;
            if (i != 2 && i != 3) {
                if (i != 5) {
                    if (i != 6) {
                        if (i != 7) {
                            b();
                            if (com.mbridge.msdk.tracker.a.f9655a) {
                                a("触发上报（timer）当前 Event 数量：");
                            }
                            a();
                            return;
                        }
                        this.f9706a.k();
                        b();
                        if (com.mbridge.msdk.tracker.a.f9655a) {
                            a("触发上报（flush）当前 Event 数量：");
                        }
                        a();
                        return;
                    }
                    Object obj = message.obj;
                    if (obj instanceof e) {
                        eVar = (e) obj;
                    } else {
                        eVar = null;
                    }
                    if (com.mbridge.msdk.tracker.a.f9655a && !y.b(eVar)) {
                        a(String.format("收到 Event( %s )，当前 Event 数量：", eVar.b()));
                    }
                    if (!y.a(eVar) && !this.f9706a.f()) {
                        return;
                    }
                    b();
                    if (com.mbridge.msdk.tracker.a.f9655a) {
                        a("触发上报（notice check）当前 Event 数量：");
                    }
                    a();
                    return;
                }
                if (com.mbridge.msdk.tracker.a.f9655a) {
                    a("触发删除 当前 Event 数量：");
                }
                this.f9706a.a();
                sendMessageDelayed(Message.obtain(this, 5), UnityAdsConstants.Timeout.INIT_TIMEOUT_MS);
                return;
            }
            b();
            if (com.mbridge.msdk.tracker.a.f9655a) {
                a("触发上报（report result）当前 Event 数量：");
            }
            a();
        }

        private synchronized void a() {
            try {
                this.f9706a.h();
            } catch (Exception unused) {
                if (com.mbridge.msdk.tracker.a.f9655a) {
                    this.f9706a.e.v();
                }
            }
        }
    }

    public s(k kVar) {
        this.f9704a = kVar.d();
        this.b = kVar.i();
        this.c = kVar.l();
        this.d = kVar.j();
        this.e = kVar;
    }

    private void l() {
        this.f9704a.c();
    }

    public void k() {
        synchronized (this.h) {
            try {
                if (!this.l) {
                    this.l = true;
                    l();
                }
                if (!this.m) {
                    this.m = true;
                    this.g.addAndGet(this.f9704a.b());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private List<i> c() {
        return this.f9704a.a(this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        return this.f.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        List<i> c = c();
        if (y.b((List<?>) c)) {
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.e.v();
                return;
            }
            return;
        }
        a(c);
        this.g.addAndGet(-c.size());
        boolean z = false;
        if (com.mbridge.msdk.tracker.a.f9655a) {
            this.e.v();
            this.g.addAndGet(0);
            this.f9704a.b();
        }
        try {
            z = this.e.a();
        } catch (IllegalStateException unused) {
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.e.v();
            }
        }
        if (!z) {
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.e.v();
                return;
            }
            return;
        }
        o m = this.e.m();
        m.a(new a(this.i, this));
        Map<String, String> hashMap = new HashMap<>();
        try {
            hashMap = this.e.f().a(this.e.u(), c, this.e.o());
        } catch (Exception unused2) {
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.e.v();
            }
        }
        m.b(new t(c), hashMap, y.a(c));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f.set(0);
    }

    public void b() {
        this.i.removeMessages(1);
        Handler handler = this.i;
        handler.sendMessage(Message.obtain(handler, 7));
    }

    public void e() {
        this.g.incrementAndGet();
    }

    public boolean f() {
        return this.g.addAndGet(0) >= this.b;
    }

    public boolean g() {
        return this.j;
    }

    public void j() {
        HandlerThread handlerThread = new HandlerThread("report_timer");
        handlerThread.start();
        b bVar = new b(handlerThread.getLooper(), this);
        this.i = bVar;
        bVar.sendMessageDelayed(Message.obtain(bVar, 5), 5000L);
        Handler handler = this.i;
        handler.sendMessageDelayed(Message.obtain(handler, 1), this.c);
        this.j = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<i> list) {
        if (y.b((List<?>) list)) {
            return;
        }
        this.f9704a.c(list);
    }

    public void a(e eVar) {
        if (this.i.hasMessages(6)) {
            return;
        }
        long a2 = y.a(this.f.get(), this.k, this.c);
        if (a2 > this.c) {
            Handler handler = this.i;
            handler.sendMessageDelayed(Message.obtain(handler, 6, eVar), ((float) a2) * 0.1f);
            return;
        }
        Handler handler2 = this.i;
        handler2.sendMessage(Message.obtain(handler2, 6, eVar));
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class a implements r {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f9705a;
        private final s b;

        public a(Handler handler, s sVar) {
            this.f9705a = handler;
            this.b = sVar;
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar) {
            this.b.b(tVar.a());
            this.b.i();
            this.b.k = 0L;
            if (this.b.f()) {
                Handler handler = this.f9705a;
                handler.sendMessage(Message.obtain(handler, 2));
            }
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.b.e.v();
                tVar.a().size();
                this.b.g.addAndGet(0);
                this.b.f9704a.b();
            }
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar, int i, String str) {
            this.b.a(tVar.a(), str);
            this.b.k = System.currentTimeMillis();
            int d = this.b.d();
            if (d <= 10) {
                this.f9705a.removeMessages(3);
                Handler handler = this.f9705a;
                handler.sendMessageDelayed(Message.obtain(handler, 3), d * 1000);
            }
            if (com.mbridge.msdk.tracker.a.f9655a) {
                this.b.e.v();
                tVar.a().size();
                this.b.g.addAndGet(0);
                this.b.f9704a.b();
            }
        }
    }

    private void a(List<i> list) {
        this.f9704a.b(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (com.mbridge.msdk.tracker.a.f9655a) {
            return;
        }
        this.f9704a.a();
        if (com.mbridge.msdk.tracker.a.f9655a) {
            this.e.v();
            this.g.addAndGet(0);
            this.f9704a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<i> list, String str) {
        if (y.b((List<?>) list)) {
            return;
        }
        int i = 0;
        for (i iVar : list) {
            if (!y.b(iVar)) {
                boolean z = !iVar.g() && iVar.c() >= this.d;
                boolean z2 = !iVar.h() && iVar.b() < System.currentTimeMillis();
                if (!z && !z2) {
                    iVar.a(iVar.c() + 1);
                    iVar.b(3);
                    iVar.a(str);
                    i++;
                } else {
                    iVar.b(-1);
                }
            }
        }
        this.f9704a.a(list);
        this.g.addAndGet(i);
    }
}
