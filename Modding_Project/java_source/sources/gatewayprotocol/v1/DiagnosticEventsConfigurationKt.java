package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class DiagnosticEventsConfigurationKt {
    @NotNull
    public static final DiagnosticEventsConfigurationKt INSTANCE = new DiagnosticEventsConfigurationKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u001c\n\u0002\b\u0012\b\u0007\u0018\u0000 H2\u00020\u0001:\u0003FGHB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010*\u001a\u00020+H\u0001J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020-J\u0006\u00100\u001a\u00020-J\u0006\u00101\u001a\u00020-J%\u00102\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007¢\u0006\u0002\b3J%\u00102\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007¢\u0006\u0002\b4J+\u00105\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000707H\u0007¢\u0006\u0002\b8J+\u00105\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000707H\u0007¢\u0006\u0002\b9J\u001d\u0010:\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b;J\u001d\u0010:\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006H\u0007¢\u0006\u0002\b<J&\u0010=\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b>J,\u0010=\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000707H\u0087\n¢\u0006\u0002\b?J&\u0010=\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b@J,\u0010=\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000707H\u0087\n¢\u0006\u0002\bAJ.\u0010B\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010C\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\bDJ.\u0010B\u001a\u00020-*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010C\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\bER\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\nR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001aR$\u0010'\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010\u0014¨\u0006I"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;)V", "allowedEvents", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$AllowedEventsProxy;", "getAllowedEvents", "()Lcom/google/protobuf/kotlin/DslList;", "blockedEvents", "Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$BlockedEventsProxy;", "getBlockedEvents", "value", "", "enabled", "getEnabled", "()Z", "setEnabled", "(Z)V", "", "maxBatchIntervalMs", "getMaxBatchIntervalMs", "()I", "setMaxBatchIntervalMs", "(I)V", "maxBatchSize", "getMaxBatchSize", "setMaxBatchSize", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;", "severity", "getSeverity", "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;", "setSeverity", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V", "severityValue", "getSeverityValue", "setSeverityValue", "ttmEnabled", "getTtmEnabled", "setTtmEnabled", "_build", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "clearEnabled", "", "clearMaxBatchIntervalMs", "clearMaxBatchSize", "clearSeverity", "clearTtmEnabled", "add", "addAllowedEvents", "addBlockedEvents", "addAll", "values", "", "addAllAllowedEvents", "addAllBlockedEvents", "clear", "clearAllowedEvents", "clearBlockedEvents", "plusAssign", "plusAssignAllowedEvents", "plusAssignAllAllowedEvents", "plusAssignBlockedEvents", "plusAssignAllBlockedEvents", "set", FirebaseAnalytics.Param.INDEX, "setAllowedEvents", "setBlockedEvents", "AllowedEventsProxy", "BlockedEventsProxy", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$AllowedEventsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class AllowedEventsProxy extends DslProxy {
            private AllowedEventsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$BlockedEventsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class BlockedEventsProxy extends DslProxy {
            private BlockedEventsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;", "builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ NativeConfigurationOuterClass.DiagnosticEventsConfiguration _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAllAllowedEvents")
        /* renamed from: addAllAllowedEvents */
        public final /* synthetic */ void plusAssignAllAllowedEvents(DslList dslList, Iterable iterable) {
            this._builder.addAllAllowedEvents(iterable);
        }

        @JvmName(name = "addAllBlockedEvents")
        /* renamed from: addAllBlockedEvents */
        public final /* synthetic */ void plusAssignAllBlockedEvents(DslList dslList, Iterable iterable) {
            this._builder.addAllBlockedEvents(iterable);
        }

        @JvmName(name = "addAllowedEvents")
        /* renamed from: addAllowedEvents */
        public final /* synthetic */ void plusAssignAllowedEvents(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType) {
            this._builder.addAllowedEvents(diagnosticEventType);
        }

        @JvmName(name = "addBlockedEvents")
        /* renamed from: addBlockedEvents */
        public final /* synthetic */ void plusAssignBlockedEvents(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType) {
            this._builder.addBlockedEvents(diagnosticEventType);
        }

        @JvmName(name = "clearAllowedEvents")
        public final /* synthetic */ void clearAllowedEvents(DslList dslList) {
            this._builder.clearAllowedEvents();
        }

        @JvmName(name = "clearBlockedEvents")
        public final /* synthetic */ void clearBlockedEvents(DslList dslList) {
            this._builder.clearBlockedEvents();
        }

        public final void clearEnabled() {
            this._builder.clearEnabled();
        }

        public final void clearMaxBatchIntervalMs() {
            this._builder.clearMaxBatchIntervalMs();
        }

        public final void clearMaxBatchSize() {
            this._builder.clearMaxBatchSize();
        }

        public final void clearSeverity() {
            this._builder.clearSeverity();
        }

        public final void clearTtmEnabled() {
            this._builder.clearTtmEnabled();
        }

        public final /* synthetic */ DslList getAllowedEvents() {
            return new DslList(this._builder.getAllowedEventsList());
        }

        public final /* synthetic */ DslList getBlockedEvents() {
            return new DslList(this._builder.getBlockedEventsList());
        }

        @JvmName(name = "getEnabled")
        public final boolean getEnabled() {
            return this._builder.getEnabled();
        }

        @JvmName(name = "getMaxBatchIntervalMs")
        public final int getMaxBatchIntervalMs() {
            return this._builder.getMaxBatchIntervalMs();
        }

        @JvmName(name = "getMaxBatchSize")
        public final int getMaxBatchSize() {
            return this._builder.getMaxBatchSize();
        }

        @JvmName(name = "getSeverity")
        @NotNull
        public final DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity getSeverity() {
            return this._builder.getSeverity();
        }

        @JvmName(name = "getSeverityValue")
        public final int getSeverityValue() {
            return this._builder.getSeverityValue();
        }

        @JvmName(name = "getTtmEnabled")
        public final boolean getTtmEnabled() {
            return this._builder.getTtmEnabled();
        }

        @JvmName(name = "setAllowedEvents")
        public final /* synthetic */ void setAllowedEvents(DslList dslList, int i, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType) {
            this._builder.setAllowedEvents(i, diagnosticEventType);
        }

        @JvmName(name = "setBlockedEvents")
        public final /* synthetic */ void setBlockedEvents(DslList dslList, int i, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType) {
            this._builder.setBlockedEvents(i, diagnosticEventType);
        }

        @JvmName(name = "setEnabled")
        public final void setEnabled(boolean z) {
            this._builder.setEnabled(z);
        }

        @JvmName(name = "setMaxBatchIntervalMs")
        public final void setMaxBatchIntervalMs(int i) {
            this._builder.setMaxBatchIntervalMs(i);
        }

        @JvmName(name = "setMaxBatchSize")
        public final void setMaxBatchSize(int i) {
            this._builder.setMaxBatchSize(i);
        }

        @JvmName(name = "setSeverity")
        public final void setSeverity(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity diagnosticEventsSeverity) {
            this._builder.setSeverity(diagnosticEventsSeverity);
        }

        @JvmName(name = "setSeverityValue")
        public final void setSeverityValue(int i) {
            this._builder.setSeverityValue(i);
        }

        @JvmName(name = "setTtmEnabled")
        public final void setTtmEnabled(boolean z) {
            this._builder.setTtmEnabled(z);
        }

        private Dsl(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builder) {
            this._builder = builder;
        }
    }

    private DiagnosticEventsConfigurationKt() {
    }
}
