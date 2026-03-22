package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Executors {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Executor f5195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Executor() { // from class: com.bumptech.glide.util.Executors.1
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            Util.Wwwwwwwwwwwww(runnable);
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Executor f5194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Executor() { // from class: com.bumptech.glide.util.Executors.2
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    };

    public static Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
