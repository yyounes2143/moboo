package com.tekartik.sqflite;

import android.os.Handler;
import android.os.HandlerThread;
import com.tekartik.sqflite.DatabaseWorkerPool;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class SingleDatabaseWorkerPoolImpl implements DatabaseWorkerPool {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Handler f10085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HandlerThread f10086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10087Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f10088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SingleDatabaseWorkerPoolImpl(String str, int i) {
        this.f10088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10087Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Database database, Runnable runnable) {
        DatabaseWorkerPool.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, database, runnable);
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseTask databaseTask) {
        this.f10085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(databaseTask.f10068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        HandlerThread handlerThread = this.f10086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f10086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f10085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public void start() {
        HandlerThread handlerThread = new HandlerThread(this.f10088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10087Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f10086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handlerThread;
        handlerThread.start();
        this.f10085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(this.f10086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLooper());
    }
}
