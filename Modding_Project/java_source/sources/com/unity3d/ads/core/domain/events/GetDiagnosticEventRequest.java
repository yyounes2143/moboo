package com.unity3d.ads.core.domain.events;

import com.appsflyer.AdRevenueScheme;
import com.google.protobuf.ByteString;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import gatewayprotocol.v1.DiagnosticEventKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J~\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u0086\u0002¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "", "getSharedDataTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V", "uniqueId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "invoke", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "eventName", "", "tags", "", "intTags", "value", "", CampaignEx.JSON_KEY_HB, "", "opportunityId", "Lcom/google/protobuf/ByteString;", AdRevenueScheme.PLACEMENT, "adType", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", "tokenNumber", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/Boolean;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Ljava/lang/Integer;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetDiagnosticEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n+ 2 DiagnosticEventKt.kt\ngatewayprotocol/v1/DiagnosticEventKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,44:1\n10#2:45\n1#3:46\n1#3:52\n198#4,5:47\n*S KotlinDebug\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n*L\n28#1:45\n28#1:46\n29#1:47,5\n*E\n"})
/* loaded from: classes6.dex */
public final class GetDiagnosticEventRequest {
    @NotNull
    private final GetSharedDataTimestamps getSharedDataTimestamps;
    @NotNull
    private final MutableStateFlow<Integer> uniqueId = StateFlowKt.MutableStateFlow(-1);

    public GetDiagnosticEventRequest(@NotNull GetSharedDataTimestamps getSharedDataTimestamps) {
        this.getSharedDataTimestamps = getSharedDataTimestamps;
    }

    @NotNull
    public final DiagnosticEventRequestOuterClass.DiagnosticEvent invoke(@NotNull String str, @Nullable Map<String, String> map, @Nullable Map<String, Integer> map2, @Nullable Double d, @Nullable Boolean bool, @Nullable ByteString byteString, @Nullable String str2, @Nullable DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, @Nullable Integer num) {
        Integer value;
        Integer valueOf;
        DiagnosticEventKt.Dsl _create = DiagnosticEventKt.Dsl.Companion._create(DiagnosticEventRequestOuterClass.DiagnosticEvent.newBuilder());
        MutableStateFlow<Integer> mutableStateFlow = this.uniqueId;
        do {
            value = mutableStateFlow.getValue();
            valueOf = Integer.valueOf(value.intValue() + 1);
        } while (!mutableStateFlow.compareAndSet(value, valueOf));
        _create.setEventId(valueOf.intValue());
        _create.setEventType(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM);
        _create.setTimestamps(this.getSharedDataTimestamps.invoke());
        _create.setCustomEventType(str);
        if (map != null) {
            _create.putAllStringTags(_create.getStringTagsMap(), map);
        }
        if (map2 != null) {
            _create.putAllIntTags(_create.getIntTagsMap(), map2);
        }
        if (d != null) {
            _create.setTimeValue(d.doubleValue());
        }
        if (bool != null) {
            _create.setIsHeaderBidding(bool.booleanValue());
        }
        if (byteString != null) {
            _create.setImpressionOpportunityId(byteString);
        }
        if (str2 != null) {
            _create.setPlacementId(str2);
        }
        if (diagnosticAdType != null) {
            _create.setAdType(diagnosticAdType);
        }
        if (num != null) {
            _create.setHeaderBiddingTokenNumber(num.intValue());
        }
        return _create._build();
    }
}
