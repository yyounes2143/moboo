package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import gatewayprotocol.v1.CampaignKt;
import gatewayprotocol.v1.CampaignStateKt;
import gatewayprotocol.v1.CampaignStateOuterClass;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\fH\u0016R \u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidCampaignRepository;", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "getSharedDataTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V", "campaigns", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;", "getCampaign", "opportunityId", "Lcom/google/protobuf/ByteString;", "getCampaignState", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "removeState", "", "setCampaign", "campaign", "setLoadTimestamp", "setShowTimestamp", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidCampaignRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCampaignRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignRepository\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 CampaignKt.kt\ngatewayprotocol/v1/CampaignKtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 CampaignStateKt.kt\ngatewayprotocol/v1/CampaignStateKtKt\n+ 7 CampaignStateKt.kt\ngatewayprotocol/v1/CampaignStateKt$Dsl\n*L\n1#1,50:1\n230#2,5:51\n230#2,5:58\n206#3:56\n206#3:63\n1#4:57\n1#4:64\n1#4:76\n3190#5,10:65\n10#6:75\n203#7,2:77\n104#7,2:79\n*S KotlinDebug\n*F\n+ 1 AndroidCampaignRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignRepository\n*L\n19#1:51,5\n33#1:58,5\n24#1:56\n38#1:63\n24#1:57\n38#1:64\n45#1:76\n43#1:65,10\n45#1:75\n46#1:77,2\n47#1:79,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidCampaignRepository implements CampaignRepository {
    @NotNull
    private final MutableStateFlow<Map<String, CampaignStateOuterClass.Campaign>> campaigns = StateFlowKt.MutableStateFlow(MapsKt.emptyMap());
    @NotNull
    private final GetSharedDataTimestamps getSharedDataTimestamps;

    public AndroidCampaignRepository(@NotNull GetSharedDataTimestamps getSharedDataTimestamps) {
        this.getSharedDataTimestamps = getSharedDataTimestamps;
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    @Nullable
    public CampaignStateOuterClass.Campaign getCampaign(@NotNull ByteString byteString) {
        return this.campaigns.getValue().get(byteString.toStringUtf8());
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    @NotNull
    public CampaignStateOuterClass.CampaignState getCampaignState() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : this.campaigns.getValue().values()) {
            if (((CampaignStateOuterClass.Campaign) obj).hasShowTimestamp()) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        CampaignStateKt.Dsl _create = CampaignStateKt.Dsl.Companion._create(CampaignStateOuterClass.CampaignState.newBuilder());
        _create.plusAssignAllShownCampaigns(_create.getShownCampaigns(), (List) pair.component1());
        _create.plusAssignAllLoadedCampaigns(_create.getLoadedCampaigns(), (List) pair.component2());
        return _create._build();
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void removeState(@NotNull ByteString byteString) {
        Map<String, CampaignStateOuterClass.Campaign> value;
        MutableStateFlow<Map<String, CampaignStateOuterClass.Campaign>> mutableStateFlow = this.campaigns;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, MapsKt.minus(value, byteString.toStringUtf8())));
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setCampaign(@NotNull ByteString byteString, @NotNull CampaignStateOuterClass.Campaign campaign) {
        Map<String, CampaignStateOuterClass.Campaign> value;
        MutableStateFlow<Map<String, CampaignStateOuterClass.Campaign>> mutableStateFlow = this.campaigns;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, MapsKt.plus(value, TuplesKt.to(byteString.toStringUtf8(), campaign))));
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setLoadTimestamp(@NotNull ByteString byteString) {
        CampaignStateOuterClass.Campaign campaign = getCampaign(byteString);
        if (campaign != null) {
            CampaignKt.Dsl _create = CampaignKt.Dsl.Companion._create(campaign.toBuilder());
            _create.setLoadTimestamp(this.getSharedDataTimestamps.invoke());
            Unit unit = Unit.INSTANCE;
            setCampaign(byteString, _create._build());
        }
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setShowTimestamp(@NotNull ByteString byteString) {
        CampaignStateOuterClass.Campaign campaign = getCampaign(byteString);
        if (campaign != null) {
            CampaignKt.Dsl _create = CampaignKt.Dsl.Companion._create(campaign.toBuilder());
            _create.setShowTimestamp(this.getSharedDataTimestamps.invoke());
            Unit unit = Unit.INSTANCE;
            setCampaign(byteString, _create._build());
        }
    }
}
