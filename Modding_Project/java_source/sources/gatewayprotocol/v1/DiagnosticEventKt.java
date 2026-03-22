package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class DiagnosticEventKt {
    @NotNull
    public static final DiagnosticEventKt INSTANCE = new DiagnosticEventKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001a\n\u0002\u0010$\n\u0002\b\f\b\u0007\u0018\u0000 q2\u00020\u0001:\u0003qrsB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010J\u001a\u00020KH\u0001J\u0006\u0010L\u001a\u00020MJ\u0006\u0010N\u001a\u00020MJ\u0006\u0010O\u001a\u00020MJ\u0006\u0010P\u001a\u00020MJ\u0006\u0010Q\u001a\u00020MJ\u0006\u0010R\u001a\u00020MJ\u0006\u0010S\u001a\u00020MJ\u0006\u0010T\u001a\u00020MJ\u0006\u0010U\u001a\u00020MJ\u0006\u0010V\u001a\u00020MJ\u0006\u0010W\u001a\u000202J\u0006\u0010X\u001a\u000202J\u0006\u0010Y\u001a\u000202J\u0006\u0010Z\u001a\u000202J\u0006\u0010[\u001a\u000202J\u0006\u0010\\\u001a\u000202J\u0006\u0010]\u001a\u000202J\u0006\u0010^\u001a\u000202J#\u0010_\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.H\u0007¢\u0006\u0002\b`J#\u0010_\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.H\u0007¢\u0006\u0002\baJ3\u0010b\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.2\u0006\u0010c\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\fH\u0007¢\u0006\u0002\bdJ3\u0010b\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.2\u0006\u0010c\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0012H\u0007¢\u0006\u0002\beJ7\u0010f\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.2\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0hH\u0007¢\u0006\u0002\biJ7\u0010f\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.2\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120hH\u0007¢\u0006\u0002\bjJ+\u0010k\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.2\u0006\u0010c\u001a\u00020\u0012H\u0007¢\u0006\u0002\blJ+\u0010k\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.2\u0006\u0010c\u001a\u00020\u0012H\u0007¢\u0006\u0002\bmJ4\u0010n\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.2\u0006\u0010c\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\fH\u0087\n¢\u0006\u0002\boJ4\u0010n\u001a\u00020M*\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.2\u0006\u0010c\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0012H\u0087\n¢\u0006\u0002\bpR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010$\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011R$\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R#\u0010-\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020/0.8G¢\u0006\u0006\u001a\u0004\b0\u00101R$\u00103\u001a\u0002022\u0006\u0010\u0005\u001a\u0002028G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u00108\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b9\u0010\u0015\"\u0004\b:\u0010\u0017R#\u0010;\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<0.8G¢\u0006\u0006\u001a\u0004\b=\u00101R$\u0010?\u001a\u00020>2\u0006\u0010\u0005\u001a\u00020>8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010E\u001a\u00020D2\u0006\u0010\u0005\u001a\u00020D8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bF\u0010G\"\u0004\bH\u0010I¨\u0006t"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V", "value", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", "adType", "getAdType", "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", "setAdType", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)V", "", "adTypeValue", "getAdTypeValue", "()I", "setAdTypeValue", "(I)V", "", "customEventType", "getCustomEventType", "()Ljava/lang/String;", "setCustomEventType", "(Ljava/lang/String;)V", "eventId", "getEventId", "setEventId", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "eventType", "getEventType", "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "setEventType", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V", "eventTypeValue", "getEventTypeValue", "setEventTypeValue", "headerBiddingTokenNumber", "getHeaderBiddingTokenNumber", "setHeaderBiddingTokenNumber", "Lcom/google/protobuf/ByteString;", "impressionOpportunityId", "getImpressionOpportunityId", "()Lcom/google/protobuf/ByteString;", "setImpressionOpportunityId", "(Lcom/google/protobuf/ByteString;)V", "intTags", "Lcom/google/protobuf/kotlin/DslMap;", "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;", "getIntTagsMap", "()Lcom/google/protobuf/kotlin/DslMap;", "", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "getIsHeaderBidding", "()Z", "setIsHeaderBidding", "(Z)V", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "getPlacementId", "setPlacementId", "stringTags", "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;", "getStringTagsMap", "", "timeValue", "getTimeValue", "()D", "setTimeValue", "(D)V", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V", "_build", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "clearAdType", "", "clearCustomEventType", "clearEventId", "clearEventType", "clearHeaderBiddingTokenNumber", "clearImpressionOpportunityId", "clearIsHeaderBidding", "clearPlacementId", "clearTimeValue", "clearTimestamps", "hasAdType", "hasCustomEventType", "hasHeaderBiddingTokenNumber", "hasImpressionOpportunityId", "hasIsHeaderBidding", "hasPlacementId", "hasTimeValue", "hasTimestamps", "clear", "clearIntTags", "clearStringTags", "put", "key", "putIntTags", "putStringTags", "putAll", "map", "", "putAllIntTags", "putAllStringTags", "remove", "removeIntTags", "removeStringTags", "set", "setIntTags", "setStringTags", "Companion", "IntTagsProxy", "StringTagsProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;", "builder", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class IntTagsProxy extends DslProxy {
            private IntTagsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class StringTagsProxy extends DslProxy {
            private StringTagsProxy() {
            }
        }

        public /* synthetic */ Dsl(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticEvent _build() {
            return this._builder.build();
        }

        public final void clearAdType() {
            this._builder.clearAdType();
        }

        public final void clearCustomEventType() {
            this._builder.clearCustomEventType();
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final void clearEventType() {
            this._builder.clearEventType();
        }

        public final void clearHeaderBiddingTokenNumber() {
            this._builder.clearHeaderBiddingTokenNumber();
        }

        public final void clearImpressionOpportunityId() {
            this._builder.clearImpressionOpportunityId();
        }

        @JvmName(name = "clearIntTags")
        public final /* synthetic */ void clearIntTags(DslMap dslMap) {
            this._builder.clearIntTags();
        }

        public final void clearIsHeaderBidding() {
            this._builder.clearIsHeaderBidding();
        }

        public final void clearPlacementId() {
            this._builder.clearPlacementId();
        }

        @JvmName(name = "clearStringTags")
        public final /* synthetic */ void clearStringTags(DslMap dslMap) {
            this._builder.clearStringTags();
        }

        public final void clearTimeValue() {
            this._builder.clearTimeValue();
        }

        public final void clearTimestamps() {
            this._builder.clearTimestamps();
        }

        @JvmName(name = "getAdType")
        @NotNull
        public final DiagnosticEventRequestOuterClass.DiagnosticAdType getAdType() {
            return this._builder.getAdType();
        }

        @JvmName(name = "getAdTypeValue")
        public final int getAdTypeValue() {
            return this._builder.getAdTypeValue();
        }

        @JvmName(name = "getCustomEventType")
        @NotNull
        public final String getCustomEventType() {
            return this._builder.getCustomEventType();
        }

        @JvmName(name = "getEventId")
        public final int getEventId() {
            return this._builder.getEventId();
        }

        @JvmName(name = "getEventType")
        @NotNull
        public final DiagnosticEventRequestOuterClass.DiagnosticEventType getEventType() {
            return this._builder.getEventType();
        }

        @JvmName(name = "getEventTypeValue")
        public final int getEventTypeValue() {
            return this._builder.getEventTypeValue();
        }

        @JvmName(name = "getHeaderBiddingTokenNumber")
        public final int getHeaderBiddingTokenNumber() {
            return this._builder.getHeaderBiddingTokenNumber();
        }

        @JvmName(name = "getImpressionOpportunityId")
        @NotNull
        public final ByteString getImpressionOpportunityId() {
            return this._builder.getImpressionOpportunityId();
        }

        @JvmName(name = "getIntTagsMap")
        public final /* synthetic */ DslMap getIntTagsMap() {
            return new DslMap(this._builder.getIntTagsMap());
        }

        @JvmName(name = "getIsHeaderBidding")
        public final boolean getIsHeaderBidding() {
            return this._builder.getIsHeaderBidding();
        }

        @JvmName(name = "getPlacementId")
        @NotNull
        public final String getPlacementId() {
            return this._builder.getPlacementId();
        }

        @JvmName(name = "getStringTagsMap")
        public final /* synthetic */ DslMap getStringTagsMap() {
            return new DslMap(this._builder.getStringTagsMap());
        }

        @JvmName(name = "getTimeValue")
        public final double getTimeValue() {
            return this._builder.getTimeValue();
        }

        @JvmName(name = "getTimestamps")
        @NotNull
        public final TimestampsOuterClass.Timestamps getTimestamps() {
            return this._builder.getTimestamps();
        }

        public final boolean hasAdType() {
            return this._builder.hasAdType();
        }

        public final boolean hasCustomEventType() {
            return this._builder.hasCustomEventType();
        }

        public final boolean hasHeaderBiddingTokenNumber() {
            return this._builder.hasHeaderBiddingTokenNumber();
        }

        public final boolean hasImpressionOpportunityId() {
            return this._builder.hasImpressionOpportunityId();
        }

        public final boolean hasIsHeaderBidding() {
            return this._builder.hasIsHeaderBidding();
        }

        public final boolean hasPlacementId() {
            return this._builder.hasPlacementId();
        }

        public final boolean hasTimeValue() {
            return this._builder.hasTimeValue();
        }

        public final boolean hasTimestamps() {
            return this._builder.hasTimestamps();
        }

        @JvmName(name = "putAllIntTags")
        public final /* synthetic */ void putAllIntTags(DslMap dslMap, Map map) {
            this._builder.putAllIntTags(map);
        }

        @JvmName(name = "putAllStringTags")
        public final /* synthetic */ void putAllStringTags(DslMap dslMap, Map map) {
            this._builder.putAllStringTags(map);
        }

        @JvmName(name = "putIntTags")
        /* renamed from: putIntTags */
        public final void setIntTags(@NotNull DslMap<String, Integer, IntTagsProxy> dslMap, @NotNull String str, int i) {
            this._builder.putIntTags(str, i);
        }

        @JvmName(name = "putStringTags")
        /* renamed from: putStringTags */
        public final void setStringTags(@NotNull DslMap<String, String, StringTagsProxy> dslMap, @NotNull String str, @NotNull String str2) {
            this._builder.putStringTags(str, str2);
        }

        @JvmName(name = "removeIntTags")
        public final /* synthetic */ void removeIntTags(DslMap dslMap, String str) {
            this._builder.removeIntTags(str);
        }

        @JvmName(name = "removeStringTags")
        public final /* synthetic */ void removeStringTags(DslMap dslMap, String str) {
            this._builder.removeStringTags(str);
        }

        @JvmName(name = "setAdType")
        public final void setAdType(@NotNull DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType) {
            this._builder.setAdType(diagnosticAdType);
        }

        @JvmName(name = "setAdTypeValue")
        public final void setAdTypeValue(int i) {
            this._builder.setAdTypeValue(i);
        }

        @JvmName(name = "setCustomEventType")
        public final void setCustomEventType(@NotNull String str) {
            this._builder.setCustomEventType(str);
        }

        @JvmName(name = "setEventId")
        public final void setEventId(int i) {
            this._builder.setEventId(i);
        }

        @JvmName(name = "setEventType")
        public final void setEventType(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType) {
            this._builder.setEventType(diagnosticEventType);
        }

        @JvmName(name = "setEventTypeValue")
        public final void setEventTypeValue(int i) {
            this._builder.setEventTypeValue(i);
        }

        @JvmName(name = "setHeaderBiddingTokenNumber")
        public final void setHeaderBiddingTokenNumber(int i) {
            this._builder.setHeaderBiddingTokenNumber(i);
        }

        @JvmName(name = "setImpressionOpportunityId")
        public final void setImpressionOpportunityId(@NotNull ByteString byteString) {
            this._builder.setImpressionOpportunityId(byteString);
        }

        @JvmName(name = "setIsHeaderBidding")
        public final void setIsHeaderBidding(boolean z) {
            this._builder.setIsHeaderBidding(z);
        }

        @JvmName(name = "setPlacementId")
        public final void setPlacementId(@NotNull String str) {
            this._builder.setPlacementId(str);
        }

        @JvmName(name = "setTimeValue")
        public final void setTimeValue(double d) {
            this._builder.setTimeValue(d);
        }

        @JvmName(name = "setTimestamps")
        public final void setTimestamps(@NotNull TimestampsOuterClass.Timestamps timestamps) {
            this._builder.setTimestamps(timestamps);
        }

        private Dsl(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder) {
            this._builder = builder;
        }
    }

    private DiagnosticEventKt() {
    }
}
