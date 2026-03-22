package com.changdu.component.core.googleadid;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class l implements ServiceConnection {
    public boolean b = false;
    public final LinkedBlockingQueue c = new LinkedBlockingQueue(1);

    /* renamed from: a  reason: collision with root package name */
    public final long f5309a = 11000;

    public final IBinder a() {
        if (!this.b) {
            this.b = true;
            return (IBinder) this.c.poll(this.f5309a, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.c.put(iBinder);
        } catch (InterruptedException unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
