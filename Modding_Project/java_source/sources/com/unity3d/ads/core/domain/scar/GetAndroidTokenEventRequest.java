package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import gatewayprotocol.v1.GetTokenEventRequestKt;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/scar/GetAndroidTokenEventRequest;", "Lcom/unity3d/ads/core/domain/scar/GetHbTokenEventRequest;", "()V", "invoke", "Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "tokenId", "Lcom/google/protobuf/ByteString;", "biddingSignals", "Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;", "(Lcom/google/protobuf/ByteString;Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetAndroidTokenEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetAndroidTokenEventRequest.kt\ncom/unity3d/ads/core/domain/scar/GetAndroidTokenEventRequest\n+ 2 GetTokenEventRequestKt.kt\ngatewayprotocol/v1/GetTokenEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n10#2:28\n1#3:29\n*S KotlinDebug\n*F\n+ 1 GetAndroidTokenEventRequest.kt\ncom/unity3d/ads/core/domain/scar/GetAndroidTokenEventRequest\n*L\n14#1:28\n14#1:29\n*E\n"})
/* loaded from: classes6.dex */
public final class GetAndroidTokenEventRequest implements GetHbTokenEventRequest {
    @Override // com.unity3d.ads.core.domain.scar.GetHbTokenEventRequest
    @Nullable
    public Object invoke(@NotNull ByteString byteString, @NotNull BiddingSignals biddingSignals, @NotNull Continuation<? super GetTokenEventRequestOuterClass.GetTokenEventRequest> continuation) {
        GetTokenEventRequestKt.Dsl _create = GetTokenEventRequestKt.Dsl.Companion._create(GetTokenEventRequestOuterClass.GetTokenEventRequest.newBuilder());
        _create.setTokenId(byteString);
        String rvSignal = biddingSignals.getRvSignal();
        if (rvSignal != null) {
            _create.setRewarded(ByteStringsKt.toByteStringUtf8(rvSignal));
        }
        String interstitialSignal = biddingSignals.getInterstitialSignal();
        if (interstitialSignal != null) {
            _create.setInterstitial(ByteStringsKt.toByteStringUtf8(interstitialSignal));
        }
        String bannerSignal = biddingSignals.getBannerSignal();
        if (bannerSignal != null) {
            _create.setBanner(ByteStringsKt.toByteStringUtf8(bannerSignal));
        }
        return _create._build();
    }
}
