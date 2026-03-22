package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.BidTokenCallback;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.executor.FutureResult;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Utils;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f²\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u0084\u0002²\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u0084\u0002²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002²\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/VungleInternal;", "", "()V", "getAvailableBidTokens", "", "context", "Landroid/content/Context;", "getAvailableBidTokensAsync", "", "callback", "Lcom/vungle/ads/BidTokenCallback;", "getSdkVersion", "vungle-ads_release", "provider", "Lcom/vungle/ads/internal/util/ConcurrencyTimeoutProvider;", "sdkExecutors", "Lcom/vungle/ads/internal/executor/SDKExecutors;", "bidTokenEncoder", "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleInternal {
    /* renamed from: getAvailableBidTokens$lambda-0  reason: not valid java name */
    private static final ConcurrencyTimeoutProvider m302getAvailableBidTokens$lambda0(Lazy<ConcurrencyTimeoutProvider> lazy) {
        return lazy.getValue();
    }

    /* renamed from: getAvailableBidTokens$lambda-1  reason: not valid java name */
    private static final SDKExecutors m303getAvailableBidTokens$lambda1(Lazy<SDKExecutors> lazy) {
        return lazy.getValue();
    }

    /* renamed from: getAvailableBidTokens$lambda-2  reason: not valid java name */
    private static final BidTokenEncoder m304getAvailableBidTokens$lambda2(Lazy<BidTokenEncoder> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableBidTokens$lambda-3  reason: not valid java name */
    public static final String m305getAvailableBidTokens$lambda3(Lazy lazy) {
        return m304getAvailableBidTokens$lambda2(lazy).encode().getBidToken();
    }

    /* renamed from: getAvailableBidTokensAsync$lambda-4  reason: not valid java name */
    private static final BidTokenEncoder m306getAvailableBidTokensAsync$lambda4(Lazy<BidTokenEncoder> lazy) {
        return lazy.getValue();
    }

    /* renamed from: getAvailableBidTokensAsync$lambda-5  reason: not valid java name */
    private static final SDKExecutors m307getAvailableBidTokensAsync$lambda5(Lazy<SDKExecutors> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableBidTokensAsync$lambda-6  reason: not valid java name */
    public static final void m308getAvailableBidTokensAsync$lambda6(BidTokenCallback bidTokenCallback, Lazy lazy) {
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        timeIntervalMetric.markStart();
        BidTokenEncoder.BiddingTokenInfo encode = m306getAvailableBidTokensAsync$lambda4(lazy).encode();
        timeIntervalMetric.markEnd();
        if (encode.getBidToken().length() > 0) {
            bidTokenCallback.onBidTokenCollected(encode.getBidToken());
        } else {
            timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            timeIntervalMetric.setMeta(encode.getErrorMessage());
            bidTokenCallback.onBidTokenError(encode.getErrorMessage());
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric, (LogEntry) null, (String) null, 6, (Object) null);
    }

    @Nullable
    public final String getAvailableBidTokens(@NotNull final Context context) {
        if (Utils.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("Deprecated RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        timeIntervalMetric.markStart();
        if (!VungleAds.Companion.isInitialized()) {
            PrivacyManager.INSTANCE.init(context.getApplicationContext());
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ConcurrencyTimeoutProvider>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.ConcurrencyTimeoutProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConcurrencyTimeoutProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(ConcurrencyTimeoutProvider.class);
            }
        });
        Lazy lazy2 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SDKExecutors>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.SDKExecutors, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SDKExecutors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SDKExecutors.class);
            }
        });
        final Lazy lazy3 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<BidTokenEncoder>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        String str = (String) new FutureResult(m303getAvailableBidTokens$lambda1(lazy2).getApiExecutor().submit(new Callable() { // from class: com.vungle.ads.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String m305getAvailableBidTokens$lambda3;
                m305getAvailableBidTokens$lambda3 = VungleInternal.m305getAvailableBidTokens$lambda3(Lazy.this);
                return m305getAvailableBidTokens$lambda3;
            }
        })).get(m302getAvailableBidTokens$lambda0(lazy).getTimeout(), TimeUnit.MILLISECONDS);
        if (str == null || str.length() == 0) {
            timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            timeIntervalMetric.setMeta("Bid token is null or empty");
        }
        timeIntervalMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric, (LogEntry) null, (String) null, 6, (Object) null);
        return str;
    }

    public final void getAvailableBidTokensAsync(@NotNull final Context context, @NotNull final BidTokenCallback bidTokenCallback) {
        if (Utils.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            bidTokenCallback.onBidTokenError("RTB: SDK is supported only for API versions 25 and above.");
            return;
        }
        if (!VungleAds.Companion.isInitialized()) {
            PrivacyManager.INSTANCE.init(context.getApplicationContext());
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<BidTokenEncoder>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        m307getAvailableBidTokensAsync$lambda5(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SDKExecutors>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.SDKExecutors, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SDKExecutors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SDKExecutors.class);
            }
        })).getApiExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                VungleInternal.m308getAvailableBidTokensAsync$lambda6(BidTokenCallback.this, lazy);
            }
        });
    }

    @NotNull
    public final String getSdkVersion() {
        return BuildConfig.VERSION_NAME;
    }
}
