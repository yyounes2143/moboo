package gatewayprotocol.v1;

import gatewayprotocol.v1.CampaignKt;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0007\u001a\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u001a)\u0010\u000f\u001a\u00020\b*\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"loadTimestampOrNull", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;", "getLoadTimestampOrNull", "(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "showTimestampOrNull", "getShowTimestampOrNull", "campaign", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/CampaignKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializecampaign", "copy", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCampaignKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignKt.kt\ngatewayprotocol/v1/CampaignKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignKtKt {
    @JvmName(name = "-initializecampaign")
    @NotNull
    /* renamed from: -initializecampaign  reason: not valid java name */
    public static final CampaignStateOuterClass.Campaign m375initializecampaign(@NotNull Function1<? super CampaignKt.Dsl, Unit> function1) {
        CampaignKt.Dsl _create = CampaignKt.Dsl.Companion._create(CampaignStateOuterClass.Campaign.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final CampaignStateOuterClass.Campaign copy(@NotNull CampaignStateOuterClass.Campaign campaign, @NotNull Function1<? super CampaignKt.Dsl, Unit> function1) {
        CampaignKt.Dsl _create = CampaignKt.Dsl.Companion._create(campaign.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final TimestampsOuterClass.Timestamps getLoadTimestampOrNull(@NotNull CampaignStateOuterClass.CampaignOrBuilder campaignOrBuilder) {
        if (campaignOrBuilder.hasLoadTimestamp()) {
            return campaignOrBuilder.getLoadTimestamp();
        }
        return null;
    }

    @Nullable
    public static final TimestampsOuterClass.Timestamps getShowTimestampOrNull(@NotNull CampaignStateOuterClass.CampaignOrBuilder campaignOrBuilder) {
        if (campaignOrBuilder.hasShowTimestamp()) {
            return campaignOrBuilder.getShowTimestamp();
        }
        return null;
    }
}
