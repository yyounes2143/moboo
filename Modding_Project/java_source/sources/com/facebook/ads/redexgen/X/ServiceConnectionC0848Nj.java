package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
/* renamed from: com.facebook.ads.redexgen.X.Nj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ServiceConnectionC0848Nj implements ServiceConnection {
    public final /* synthetic */ HandlerC0849Nk A00;

    public ServiceConnectionC0848Nj(HandlerC0849Nk handlerC0849Nk) {
        this.A00 = handlerC0849Nk;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Handler handler;
        AbstractRunnableC1061Vt abstractRunnableC1061Vt;
        C1350cu c1350cu;
        Messenger messenger;
        handler = this.A00.A04;
        abstractRunnableC1061Vt = this.A00.A08;
        handler.removeCallbacks(abstractRunnableC1061Vt);
        this.A00.A00 = new Messenger(iBinder);
        c1350cu = this.A00.A07;
        if (UA.A09(c1350cu)) {
            HandlerC0849Nk handlerC0849Nk = this.A00;
            messenger = this.A00.A00;
            handlerC0849Nk.A07(messenger);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.A00.A09();
    }
}
