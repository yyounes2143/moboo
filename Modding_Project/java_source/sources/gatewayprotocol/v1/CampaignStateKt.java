package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.CampaignStateOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/CampaignStateKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class CampaignStateKt {
    @NotNull
    public static final CampaignStateKt INSTANCE = new CampaignStateKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001c\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 '2\u00020\u0001:\u0003'()B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0001J%\u0010\u0010\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0013J%\u0010\u0010\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0014J+\u0010\u0015\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0007¢\u0006\u0002\b\u0018J+\u0010\u0015\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0007¢\u0006\u0002\b\u0019J\u001d\u0010\u001a\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b\u001bJ\u001d\u0010\u001a\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006H\u0007¢\u0006\u0002\b\u001cJ&\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b\u001eJ,\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0087\n¢\u0006\u0002\b\u001fJ&\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b J,\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0087\n¢\u0006\u0002\b!J.\u0010\"\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b%J.\u0010\"\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\n¨\u0006*"}, d2 = {"Lgatewayprotocol/v1/CampaignStateKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;", "(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)V", "loadedCampaigns", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;", "Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;", "getLoadedCampaigns", "()Lcom/google/protobuf/kotlin/DslList;", "shownCampaigns", "Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;", "getShownCampaigns", "_build", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "add", "", "value", "addLoadedCampaigns", "addShownCampaigns", "addAll", "values", "", "addAllLoadedCampaigns", "addAllShownCampaigns", "clear", "clearLoadedCampaigns", "clearShownCampaigns", "plusAssign", "plusAssignLoadedCampaigns", "plusAssignAllLoadedCampaigns", "plusAssignShownCampaigns", "plusAssignAllShownCampaigns", "set", FirebaseAnalytics.Param.INDEX, "", "setLoadedCampaigns", "setShownCampaigns", "Companion", "LoadedCampaignsProxy", "ShownCampaignsProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final CampaignStateOuterClass.CampaignState.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/CampaignStateKt$Dsl;", "builder", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(CampaignStateOuterClass.CampaignState.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class LoadedCampaignsProxy extends DslProxy {
            private LoadedCampaignsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class ShownCampaignsProxy extends DslProxy {
            private ShownCampaignsProxy() {
            }
        }

        public /* synthetic */ Dsl(CampaignStateOuterClass.CampaignState.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ CampaignStateOuterClass.CampaignState _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAllLoadedCampaigns")
        /* renamed from: addAllLoadedCampaigns */
        public final /* synthetic */ void plusAssignAllLoadedCampaigns(DslList dslList, Iterable iterable) {
            this._builder.addAllLoadedCampaigns(iterable);
        }

        @JvmName(name = "addAllShownCampaigns")
        /* renamed from: addAllShownCampaigns */
        public final /* synthetic */ void plusAssignAllShownCampaigns(DslList dslList, Iterable iterable) {
            this._builder.addAllShownCampaigns(iterable);
        }

        @JvmName(name = "addLoadedCampaigns")
        /* renamed from: addLoadedCampaigns */
        public final /* synthetic */ void plusAssignLoadedCampaigns(DslList dslList, CampaignStateOuterClass.Campaign campaign) {
            this._builder.addLoadedCampaigns(campaign);
        }

        @JvmName(name = "addShownCampaigns")
        /* renamed from: addShownCampaigns */
        public final /* synthetic */ void plusAssignShownCampaigns(DslList dslList, CampaignStateOuterClass.Campaign campaign) {
            this._builder.addShownCampaigns(campaign);
        }

        @JvmName(name = "clearLoadedCampaigns")
        public final /* synthetic */ void clearLoadedCampaigns(DslList dslList) {
            this._builder.clearLoadedCampaigns();
        }

        @JvmName(name = "clearShownCampaigns")
        public final /* synthetic */ void clearShownCampaigns(DslList dslList) {
            this._builder.clearShownCampaigns();
        }

        public final /* synthetic */ DslList getLoadedCampaigns() {
            return new DslList(this._builder.getLoadedCampaignsList());
        }

        public final /* synthetic */ DslList getShownCampaigns() {
            return new DslList(this._builder.getShownCampaignsList());
        }

        @JvmName(name = "setLoadedCampaigns")
        public final /* synthetic */ void setLoadedCampaigns(DslList dslList, int i, CampaignStateOuterClass.Campaign campaign) {
            this._builder.setLoadedCampaigns(i, campaign);
        }

        @JvmName(name = "setShownCampaigns")
        public final /* synthetic */ void setShownCampaigns(DslList dslList, int i, CampaignStateOuterClass.Campaign campaign) {
            this._builder.setShownCampaigns(i, campaign);
        }

        private Dsl(CampaignStateOuterClass.CampaignState.Builder builder) {
            this._builder = builder;
        }
    }

    private CampaignStateKt() {
    }
}
