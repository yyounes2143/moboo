package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/CampaignKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class CampaignKt {
    @NotNull
    public static final CampaignKt INSTANCE = new CampaignKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 32\u00020\u0001:\u00013B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010\u001aR\u0017\u0010$\u001a\u0004\u0018\u00010\u0015*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u00064"}, d2 = {"Lgatewayprotocol/v1/CampaignKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;", "(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "data", "getData", "()Lcom/google/protobuf/ByteString;", "setData", "(Lcom/google/protobuf/ByteString;)V", "", "dataVersion", "getDataVersion", "()I", "setDataVersion", "(I)V", "impressionOpportunityId", "getImpressionOpportunityId", "setImpressionOpportunityId", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "loadTimestamp", "getLoadTimestamp", "()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "setLoadTimestamp", "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "getPlacementId", "()Ljava/lang/String;", "setPlacementId", "(Ljava/lang/String;)V", "showTimestamp", "getShowTimestamp", "setShowTimestamp", "showTimestampOrNull", "getShowTimestampOrNull", "(Lgatewayprotocol/v1/CampaignKt$Dsl;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "_build", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;", "clearData", "", "clearDataVersion", "clearImpressionOpportunityId", "clearLoadTimestamp", "clearPlacementId", "clearShowTimestamp", "hasLoadTimestamp", "", "hasShowTimestamp", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final CampaignStateOuterClass.Campaign.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/CampaignKt$Dsl;", "builder", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(CampaignStateOuterClass.Campaign.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(CampaignStateOuterClass.Campaign.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ CampaignStateOuterClass.Campaign _build() {
            return this._builder.build();
        }

        public final void clearData() {
            this._builder.clearData();
        }

        public final void clearDataVersion() {
            this._builder.clearDataVersion();
        }

        public final void clearImpressionOpportunityId() {
            this._builder.clearImpressionOpportunityId();
        }

        public final void clearLoadTimestamp() {
            this._builder.clearLoadTimestamp();
        }

        public final void clearPlacementId() {
            this._builder.clearPlacementId();
        }

        public final void clearShowTimestamp() {
            this._builder.clearShowTimestamp();
        }

        @JvmName(name = "getData")
        @NotNull
        public final ByteString getData() {
            return this._builder.getData();
        }

        @JvmName(name = "getDataVersion")
        public final int getDataVersion() {
            return this._builder.getDataVersion();
        }

        @JvmName(name = "getImpressionOpportunityId")
        @NotNull
        public final ByteString getImpressionOpportunityId() {
            return this._builder.getImpressionOpportunityId();
        }

        @JvmName(name = "getLoadTimestamp")
        @NotNull
        public final TimestampsOuterClass.Timestamps getLoadTimestamp() {
            return this._builder.getLoadTimestamp();
        }

        @JvmName(name = "getPlacementId")
        @NotNull
        public final String getPlacementId() {
            return this._builder.getPlacementId();
        }

        @JvmName(name = "getShowTimestamp")
        @NotNull
        public final TimestampsOuterClass.Timestamps getShowTimestamp() {
            return this._builder.getShowTimestamp();
        }

        @Nullable
        public final TimestampsOuterClass.Timestamps getShowTimestampOrNull(@NotNull Dsl dsl) {
            return CampaignKtKt.getShowTimestampOrNull(dsl._builder);
        }

        public final boolean hasLoadTimestamp() {
            return this._builder.hasLoadTimestamp();
        }

        public final boolean hasShowTimestamp() {
            return this._builder.hasShowTimestamp();
        }

        @JvmName(name = "setData")
        public final void setData(@NotNull ByteString byteString) {
            this._builder.setData(byteString);
        }

        @JvmName(name = "setDataVersion")
        public final void setDataVersion(int i) {
            this._builder.setDataVersion(i);
        }

        @JvmName(name = "setImpressionOpportunityId")
        public final void setImpressionOpportunityId(@NotNull ByteString byteString) {
            this._builder.setImpressionOpportunityId(byteString);
        }

        @JvmName(name = "setLoadTimestamp")
        public final void setLoadTimestamp(@NotNull TimestampsOuterClass.Timestamps timestamps) {
            this._builder.setLoadTimestamp(timestamps);
        }

        @JvmName(name = "setPlacementId")
        public final void setPlacementId(@NotNull String str) {
            this._builder.setPlacementId(str);
        }

        @JvmName(name = "setShowTimestamp")
        public final void setShowTimestamp(@NotNull TimestampsOuterClass.Timestamps timestamps) {
            this._builder.setShowTimestamp(timestamps);
        }

        private Dsl(CampaignStateOuterClass.Campaign.Builder builder) {
            this._builder = builder;
        }
    }

    private CampaignKt() {
    }
}
