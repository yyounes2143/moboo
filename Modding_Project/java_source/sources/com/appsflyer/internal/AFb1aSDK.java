package com.appsflyer.internal;

import android.content.Context;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\bf\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH&¢\u0006\u0004\b\f\u0010\r"}, d2 = {"Lcom/appsflyer/internal/AFb1aSDK;", "", "", "getMediationNetwork", "()Z", "Landroid/content/Context;", "p0", "Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;", "p1", "", "AFAdRevenueData", "(Landroid/content/Context;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V", "getMonetizationNetwork", "()V", "AFa1zSDK", "AFa1tSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface AFb1aSDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = AFa1zSDK.getCurrencyIso4217Code;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface AFa1tSDK {
        void getMediationNetwork();

        void getRevenue(@NotNull AFh1qSDK aFh1qSDK);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AFa1zSDK {
        static final /* synthetic */ AFa1zSDK getCurrencyIso4217Code = new AFa1zSDK();
        private static long AFAdRevenueData = 500;

        private AFa1zSDK() {
        }

        public static long getMediationNetwork() {
            return AFAdRevenueData;
        }
    }

    void AFAdRevenueData(@NotNull Context context, @NotNull AFa1tSDK aFa1tSDK);

    boolean getMediationNetwork();

    void getMonetizationNetwork();
}
