package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.BigInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static /* synthetic */ BigDecimal Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BigDecimal bigDecimal) {
        if (bigDecimal.signum() == 0) {
            return new BigDecimal(BigInteger.ZERO, 0);
        }
        return bigDecimal.stripTrailingZeros();
    }
}
