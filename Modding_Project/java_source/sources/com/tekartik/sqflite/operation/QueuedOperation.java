package com.tekartik.sqflite.operation;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class QueuedOperation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Runnable f10173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Operation f10174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public QueuedOperation(Operation operation, Runnable runnable) {
        this.f10174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = operation;
        this.f10173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f10173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
    }
}
