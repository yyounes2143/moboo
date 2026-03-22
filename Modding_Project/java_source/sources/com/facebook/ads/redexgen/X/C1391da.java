package com.facebook.ads.redexgen.X;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.da  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1391da extends ContentObserver {
    public final C0583Dc A00;

    public C1391da(Handler handler, C0583Dc c0583Dc) {
        super(handler);
        this.A00 = c0583Dc;
    }

    @Override // android.database.ContentObserver
    public final boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.A00.A0f();
    }
}
