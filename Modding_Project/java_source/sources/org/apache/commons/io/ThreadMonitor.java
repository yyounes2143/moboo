package org.apache.commons.io;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ThreadMonitor implements Runnable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13329Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Thread f13330Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws InterruptedException {
        long currentTimeMillis = System.currentTimeMillis() + j;
        do {
            Thread.sleep(j);
            j = currentTimeMillis - System.currentTimeMillis();
        } while (j > 0);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13329Wwwwwwwwwwwwwwwwwwwwwwww);
            this.f13330Wwwwwwwwwwwwwwwwwwwwwwwww.interrupt();
        } catch (InterruptedException unused) {
        }
    }
}
