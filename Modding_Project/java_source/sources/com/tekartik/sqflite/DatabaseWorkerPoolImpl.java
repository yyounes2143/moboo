package com.tekartik.sqflite;

import com.tekartik.sqflite.DatabaseWorkerPool;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DatabaseWorkerPoolImpl implements DatabaseWorkerPool {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10082Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10083Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f10084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LinkedList<DatabaseTask> f10081Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedList<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<DatabaseWorker> f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<DatabaseWorker> f10079Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Integer, DatabaseWorker> f10078Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    public DatabaseWorkerPoolImpl(String str, int i, int i2) {
        this.f10084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10083Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f10082Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseWorker databaseWorker) {
        try {
            DatabaseTask Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(databaseWorker);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                this.f10079Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(databaseWorker);
                this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(databaseWorker);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    this.f10078Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), databaseWorker);
                }
                databaseWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseWorker databaseWorker) {
        try {
            HashSet<DatabaseWorker> hashSet = new HashSet(this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f10079Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(databaseWorker);
            this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(databaseWorker);
            if (!databaseWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && databaseWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                this.f10078Wwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(databaseWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(databaseWorker);
            for (DatabaseWorker databaseWorker2 : hashSet) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(databaseWorker2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        r0.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.tekartik.sqflite.DatabaseTask Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.tekartik.sqflite.DatabaseWorker r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.LinkedList<com.tekartik.sqflite.DatabaseTask> r0 = r4.f10081Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L27
            java.util.ListIterator r0 = r0.listIterator()     // Catch: java.lang.Throwable -> L27
        L7:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L27
            r2 = 0
            if (r1 == 0) goto L33
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L27
            com.tekartik.sqflite.DatabaseTask r1 = (com.tekartik.sqflite.DatabaseTask) r1     // Catch: java.lang.Throwable -> L27
            java.lang.Integer r3 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L27
            if (r3 == 0) goto L29
            java.util.Map<java.lang.Integer, com.tekartik.sqflite.DatabaseWorker> r2 = r4.f10078Wwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L27
            java.lang.Integer r3 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L27
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L27
            com.tekartik.sqflite.DatabaseWorker r2 = (com.tekartik.sqflite.DatabaseWorker) r2     // Catch: java.lang.Throwable -> L27
            goto L29
        L27:
            r5 = move-exception
            goto L35
        L29:
            if (r2 == 0) goto L2e
            if (r2 == r5) goto L2e
            goto L7
        L2e:
            r0.remove()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r4)
            return r1
        L33:
            monitor-exit(r4)
            return r2
        L35:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L27
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tekartik.sqflite.DatabaseWorkerPoolImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.tekartik.sqflite.DatabaseWorker):com.tekartik.sqflite.DatabaseTask");
    }

    public DatabaseWorker Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
        return new DatabaseWorker(str, i);
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Database database, Runnable runnable) {
        DatabaseWorkerPool.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, database, runnable);
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseTask databaseTask) {
        this.f10081Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(databaseTask);
        for (DatabaseWorker databaseWorker : new HashSet(this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(databaseWorker);
        }
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            for (DatabaseWorker databaseWorker : this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                databaseWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            for (DatabaseWorker databaseWorker2 : this.f10079Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                databaseWorker2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.tekartik.sqflite.DatabaseWorkerPool
    public synchronized void start() {
        for (int i = 0; i < this.f10083Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww; i++) {
            final DatabaseWorker Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i, this.f10082Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    DatabaseWorkerPoolImpl.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            });
            this.f10080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }
}
