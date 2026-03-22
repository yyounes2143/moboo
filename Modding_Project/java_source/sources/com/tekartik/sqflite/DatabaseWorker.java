package com.tekartik.sqflite;

import android.os.Handler;
import android.os.HandlerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DatabaseWorker {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DatabaseTask f10070Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Runnable f10071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Handler f10072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HandlerThread f10073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f10075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DatabaseWorker(String str, int i) {
        this.f10075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseTask databaseTask) {
        databaseTask.f10068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
        this.f10070Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = databaseTask;
        this.f10071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        HandlerThread handlerThread = new HandlerThread(this.f10075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f10073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handlerThread;
        handlerThread.start();
        this.f10072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(this.f10073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLooper());
        this.f10071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        HandlerThread handlerThread = this.f10073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f10073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f10072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final DatabaseTask databaseTask) {
        this.f10072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                DatabaseWorker.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(databaseTask);
            }
        });
    }

    public Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DatabaseTask databaseTask = this.f10070Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (databaseTask != null) {
            return databaseTask.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return null;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DatabaseTask databaseTask = this.f10070Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (databaseTask != null && databaseTask.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }
}
