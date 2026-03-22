package com.tekartik.sqflite;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface DatabaseWorkerPool {

    /* compiled from: Proguard */
    /* renamed from: com.tekartik.sqflite.DatabaseWorkerPool$-CC  reason: invalid class name */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        public static DatabaseWorkerPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
            if (i == 1) {
                return new SingleDatabaseWorkerPoolImpl(str, i2);
            }
            return new DatabaseWorkerPoolImpl(str, i, i2);
        }

        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final DatabaseWorkerPool databaseWorkerPool, final Database database, Runnable runnable) {
            DatabaseDelegate databaseDelegate;
            if (database == null) {
                databaseDelegate = null;
            } else {
                databaseDelegate = new DatabaseDelegate() { // from class: com.tekartik.sqflite.DatabaseWorkerPool.1
                    @Override // com.tekartik.sqflite.DatabaseDelegate
                    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                        return database.Www();
                    }

                    @Override // com.tekartik.sqflite.DatabaseDelegate
                    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                        return database.f10064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                };
            }
            databaseWorkerPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new DatabaseTask(databaseDelegate, runnable));
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Database database, Runnable runnable);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DatabaseTask databaseTask);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void start();
}
