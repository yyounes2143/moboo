package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.util.Preconditions;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class DiskCacheWriteLocker {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, WriteLock> f4500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WriteLockPool f4499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WriteLockPool();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class WriteLock {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Lock f4502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReentrantLock();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class WriteLockPool {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Queue<WriteLock> f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque();

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WriteLock writeLock) {
            synchronized (this.f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    if (this.f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() < 10) {
                        this.f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.offer(writeLock);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public WriteLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            WriteLock poll;
            synchronized (this.f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                poll = this.f4503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
            }
            if (poll == null) {
                return new WriteLock();
            }
            return poll;
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str));
                int i = writeLock.f4501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i >= 1) {
                    int i2 = i - 1;
                    writeLock.f4501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
                    if (i2 == 0) {
                        WriteLock remove = this.f4500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str);
                        if (remove.equals(writeLock)) {
                            this.f4499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(remove);
                        } else {
                            throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + remove + ", safeKey: " + str);
                        }
                    }
                } else {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + writeLock.f4501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLock.f4502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unlock();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = this.f4500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (writeLock == null) {
                    writeLock = this.f4499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    this.f4500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, writeLock);
                }
                writeLock.f4501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLock.f4502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.lock();
    }
}
