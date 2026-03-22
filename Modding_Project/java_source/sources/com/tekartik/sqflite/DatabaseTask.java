package com.tekartik.sqflite;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class DatabaseTask {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Runnable f10068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DatabaseDelegate f10069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DatabaseTask(DatabaseDelegate databaseDelegate, Runnable runnable) {
        this.f10069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = databaseDelegate;
        this.f10068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DatabaseDelegate databaseDelegate = this.f10069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (databaseDelegate != null && databaseDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    public Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DatabaseDelegate databaseDelegate = this.f10069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (databaseDelegate != null) {
            return Integer.valueOf(databaseDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return null;
    }
}
