package com.tencent.thumbplayer.tcmedia.utils;
/* loaded from: classes6.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private Object f10688a = null;
    private boolean b = false;
    private Throwable c = null;

    private void b(long j) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        while (j > 0) {
            try {
                wait(j);
                break;
            } catch (InterruptedException unused) {
                j -= System.currentTimeMillis() - currentTimeMillis;
                TPLogUtil.i("TPFutureResult", "getResult wait has InterruptedException, remainTime:".concat(String.valueOf(j)));
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized Object a(long j) {
        try {
            if (!this.b) {
                b(j);
            }
            Throwable th = this.c;
            if (th != null) {
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f10688a;
    }

    public synchronized void a(Object obj) {
        if (this.b) {
            return;
        }
        this.f10688a = obj;
        this.b = true;
        notifyAll();
    }

    public synchronized void a(Throwable th) {
        if (th != null) {
            this.c = th;
            this.b = true;
            notifyAll();
        }
    }
}
