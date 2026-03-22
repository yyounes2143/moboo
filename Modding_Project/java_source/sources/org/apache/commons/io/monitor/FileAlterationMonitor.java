package org.apache.commons.io.monitor;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class FileAlterationMonitor implements Runnable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f13416Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Thread f13417Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<FileAlterationObserver> f13418Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13419Wwwwwwwwwwwwwwwwwwwwwwwww;

    public FileAlterationMonitor() {
        this(10000L);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f13416Wwwwwwwwwwwwwwwwwwwwww) {
            for (FileAlterationObserver fileAlterationObserver : this.f13418Wwwwwwwwwwwwwwwwwwwwwwww) {
                fileAlterationObserver.checkAndNotify();
            }
            if (this.f13416Wwwwwwwwwwwwwwwwwwwwww) {
                try {
                    Thread.sleep(this.f13419Wwwwwwwwwwwwwwwwwwwwwwwww);
                } catch (InterruptedException unused) {
                }
            } else {
                return;
            }
        }
    }

    public FileAlterationMonitor(long j) {
        this.f13418Wwwwwwwwwwwwwwwwwwwwwwww = new CopyOnWriteArrayList();
        this.f13417Wwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13416Wwwwwwwwwwwwwwwwwwwwww = false;
        this.f13419Wwwwwwwwwwwwwwwwwwwwwwwww = j;
    }
}
