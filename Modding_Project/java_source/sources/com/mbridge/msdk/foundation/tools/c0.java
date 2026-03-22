package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private Runnable f9093a;
    private Runnable b;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f9094a;

        public a(Runnable runnable) {
            this.f9094a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9094a.run();
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("LimitExecutor", e.getMessage());
                }
            } finally {
                c0.this.a();
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        try {
            if (this.f9093a == null) {
                this.f9093a = a(runnable);
                a0.a().execute(this.f9093a);
            } else if (this.b == null) {
                this.b = a(runnable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private Runnable a(Runnable runnable) {
        return new a(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Runnable runnable = this.b;
        this.f9093a = runnable;
        this.b = null;
        if (runnable != null) {
            a0.a().execute(this.f9093a);
        }
    }
}
