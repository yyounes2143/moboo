package com.facebook.ads.redexgen.X;

import android.media.metrics.LogSessionId;
import java.util.Objects;
/* renamed from: com.facebook.ads.redexgen.X.7m  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04527m {
    public static final C04527m A03;
    public final String A00;
    public final C04517l A01;
    public final Object A02;

    static {
        C04527m c04527m;
        if (AbstractC03624a.A02 < 31) {
            c04527m = new C04527m("");
        } else {
            c04527m = new C04527m(C04517l.A01, "");
        }
        A03 = c04527m;
    }

    public C04527m(C04517l c04517l, String str) {
        this.A01 = c04517l;
        this.A00 = str;
        this.A02 = new Object();
    }

    public C04527m(String str) {
        C3M.A08(AbstractC03624a.A02 < 31);
        this.A00 = str;
        this.A01 = null;
        this.A02 = new Object();
    }

    public final LogSessionId A00() {
        return ((C04517l) C3M.A01(this.A01)).A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C04527m) {
            C04527m c04527m = (C04527m) obj;
            if (Objects.equals(this.A00, c04527m.A00) && Objects.equals(this.A01, c04527m.A01) && Objects.equals(this.A02, c04527m.A02)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.A00, this.A01, this.A02);
    }
}
