package com.tencent.liteav.videobase.frame;

import android.os.SystemClock;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.j;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class a<T extends j> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f10378a = TimeUnit.SECONDS.toMillis(1);
    private final Map<InterfaceC0212a, Deque<T>> c = new HashMap();
    private volatile boolean d = false;
    private final com.tencent.liteav.base.a.a e = new com.tencent.liteav.base.a.a(f10378a);
    private final g<T> f = new g(this) { // from class: com.tencent.liteav.videobase.frame.b

        /* renamed from: a  reason: collision with root package name */
        private final a f10379a;

        {
            this.f10379a = this;
        }

        @Override // com.tencent.liteav.videobase.frame.g
        public final void a(j jVar) {
            a.a(this.f10379a, jVar);
        }
    };
    private final String b = null;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.videobase.frame.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0212a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(a aVar, j jVar) {
        if (jVar == 0) {
            return;
        }
        synchronized (aVar.c) {
            try {
                if (aVar.d) {
                    aVar.a((a) jVar);
                    return;
                }
                Deque<T> b = aVar.b(aVar.b((a) jVar));
                jVar.updateLastUsedTimestamp(SystemClock.elapsedRealtime());
                b.addFirst(jVar);
                aVar.c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c() {
        T peekLast;
        if (this.e.a()) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ArrayList arrayList = new ArrayList();
            synchronized (this.c) {
                try {
                    for (Deque<T> deque : this.c.values()) {
                        while (!deque.isEmpty() && ((peekLast = deque.peekLast()) == null || elapsedRealtime - peekLast.getLastUsedTimestamp() >= f10378a)) {
                            deque.pollLast();
                            arrayList.add(peekLast);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                a((a<T>) ((j) obj));
            }
        }
    }

    public abstract T a(g<T> gVar, InterfaceC0212a interfaceC0212a);

    public abstract void a(T t);

    public abstract InterfaceC0212a b(T t);

    public void b() {
        this.d = true;
        a();
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (!this.d) {
            LiteavLog.e("FramePool", "%s must call destroy() before finalize()!\n%s", getClass().getName(), this.b);
        }
    }

    private Deque<T> b(InterfaceC0212a interfaceC0212a) {
        Deque<T> deque = this.c.get(interfaceC0212a);
        if (deque == null) {
            LinkedList linkedList = new LinkedList();
            this.c.put(interfaceC0212a, linkedList);
            return linkedList;
        }
        return deque;
    }

    public final T a(InterfaceC0212a interfaceC0212a) {
        T removeFirst;
        synchronized (this.c) {
            try {
                Deque<T> b = b(interfaceC0212a);
                removeFirst = !b.isEmpty() ? b.removeFirst() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        c();
        if (removeFirst == null) {
            removeFirst = a(this.f, interfaceC0212a);
        }
        if (removeFirst.retain() != 1) {
            LiteavLog.e("FramePool", "invalid reference count for %s", removeFirst);
        }
        return removeFirst;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.c) {
            try {
                for (Deque<T> deque : this.c.values()) {
                    arrayList.addAll(deque);
                }
                this.c.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            a((a<T>) ((j) obj));
        }
    }
}
