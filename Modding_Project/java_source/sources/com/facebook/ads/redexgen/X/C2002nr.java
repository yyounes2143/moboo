package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: com.facebook.ads.redexgen.X.nr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2002nr implements C3T {
    @Override // com.facebook.ads.redexgen.X.C3T
    public final C2000np A5H(Looper looper, Handler.Callback callback) {
        return new C2000np(new Handler(looper, callback));
    }

    @Override // com.facebook.ads.redexgen.X.C3T
    public final long A6B() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.facebook.ads.redexgen.X.C3T
    public final long AJt() {
        return SystemClock.uptimeMillis();
    }
}
