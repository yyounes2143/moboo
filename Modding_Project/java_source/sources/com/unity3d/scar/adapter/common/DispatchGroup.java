package com.unity3d.scar.adapter.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DispatchGroup {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Runnable f10858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Runnable runnable;
        if (this.f10859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww <= 0 && (runnable = this.f10858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            runnable.run();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        this.f10858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f10859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww--;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f10859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
    }
}
