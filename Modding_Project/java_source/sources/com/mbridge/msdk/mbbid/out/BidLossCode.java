package com.mbridge.msdk.mbbid.out;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class BidLossCode {

    /* renamed from: a  reason: collision with root package name */
    private static int f9222a;

    private BidLossCode(int i) {
        f9222a = i;
    }

    public static BidLossCode bidPriceNotHighest() {
        return new BidLossCode(102);
    }

    public static BidLossCode bidTimeOut() {
        return new BidLossCode(2);
    }

    public static BidLossCode bidWinButNotShow() {
        return new BidLossCode(3001);
    }

    public int getCurrentCode() {
        return f9222a;
    }
}
