package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
/* renamed from: com.facebook.ads.redexgen.X.1N  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1N {
    public final AudioAttributes A00;

    public C1N(C2067oy c2067oy) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(c2067oy.A02).setFlags(c2067oy.A03).setUsage(c2067oy.A05);
        if (AbstractC03624a.A02 >= 29) {
            C1L.A00(usage, c2067oy.A01);
        }
        if (AbstractC03624a.A02 >= 32) {
            C1M.A00(usage, c2067oy.A04);
        }
        this.A00 = usage.build();
    }
}
