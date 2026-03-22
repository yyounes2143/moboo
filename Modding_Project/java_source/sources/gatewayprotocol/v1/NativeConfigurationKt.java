package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/NativeConfigurationKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class NativeConfigurationKt {
    @NotNull
    public static final NativeConfigurationKt INSTANCE = new NativeConfigurationKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001b\n\u0002\u0010\u001c\n\u0002\b\u0012\b\u0007\u0018\u0000 \u0081\u00012\u00020\u0001:\u0006\u0080\u0001\u0081\u0001\u0082\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010R\u001a\u00020SH\u0001J\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020UJ\u0006\u0010X\u001a\u00020UJ\u0006\u0010Y\u001a\u00020UJ\u0006\u0010Z\u001a\u00020UJ\u0006\u0010[\u001a\u00020UJ\u0006\u0010\\\u001a\u00020UJ\u0006\u0010]\u001a\u00020UJ\u0006\u0010^\u001a\u00020UJ\u0006\u0010_\u001a\u00020UJ\u0006\u0010`\u001a\u00020UJ\u0006\u0010a\u001a\u00020UJ\u0006\u0010b\u001a\u000206J\u0006\u0010c\u001a\u000206J\u0006\u0010d\u001a\u000206J\u0006\u0010e\u001a\u000206J\u0006\u0010f\u001a\u000206J\u0006\u0010g\u001a\u000206J\u0006\u0010h\u001a\u000206J\u0006\u0010i\u001a\u000206J\u0006\u0010j\u001a\u000206J\u0006\u0010k\u001a\u000206J%\u0010l\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00132\u0006\u0010\u0005\u001a\u00020IH\u0007¢\u0006\u0002\bmJ%\u0010l\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0005\u001a\u00020\u0014H\u0007¢\u0006\u0002\bnJ+\u0010o\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00132\f\u0010p\u001a\b\u0012\u0004\u0012\u00020I0qH\u0007¢\u0006\u0002\brJ+\u0010o\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\f\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00140qH\u0007¢\u0006\u0002\bsJ\u001d\u0010t\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u0013H\u0007¢\u0006\u0002\buJ\u001d\u0010t\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007¢\u0006\u0002\bvJ&\u0010w\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00132\u0006\u0010\u0005\u001a\u00020IH\u0087\n¢\u0006\u0002\bxJ,\u0010w\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00132\f\u0010p\u001a\b\u0012\u0004\u0012\u00020I0qH\u0087\n¢\u0006\u0002\byJ&\u0010w\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0005\u001a\u00020\u0014H\u0087\n¢\u0006\u0002\bzJ,\u0010w\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\f\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00140qH\u0087\n¢\u0006\u0002\b{J.\u0010|\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00132\u0006\u0010}\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020IH\u0087\u0002¢\u0006\u0002\b~J.\u0010|\u001a\u00020U*\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010}\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u0014H\u0087\u0002¢\u0006\u0002\b\u007fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00138F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR$\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00103\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u000f\"\u0004\b5\u0010\u0011R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010<\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u00109\"\u0004\b>\u0010;R$\u0010@\u001a\u00020?2\u0006\u0010\u0005\u001a\u00020?8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010E\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bF\u0010\u000f\"\u0004\bG\u0010\u0011R\u001d\u0010H\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0\u00138F¢\u0006\u0006\u001a\u0004\bK\u0010\u0017R$\u0010L\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010\u000f\"\u0004\bN\u0010\u0011R$\u0010O\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010\u000f\"\u0004\bQ\u0010\u0011¨\u0006\u0083\u0001"}, d2 = {"Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V", "value", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "adOperations", "getAdOperations", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "setAdOperations", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;", "adPolicy", "getAdPolicy", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;", "setAdPolicy", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V", "additionalStorePackages", "Lcom/google/protobuf/kotlin/DslList;", "", "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;", "getAdditionalStorePackages", "()Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;", "cachedAssetsConfiguration", "getCachedAssetsConfiguration", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;", "setCachedAssetsConfiguration", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V", "cachedWebviewFilesConfiguration", "getCachedWebviewFilesConfiguration", "setCachedWebviewFilesConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;", "defaultShowCompletionState", "getDefaultShowCompletionState", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;", "setDefaultShowCompletionState", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V", "", "defaultShowCompletionStateValue", "getDefaultShowCompletionStateValue", "()I", "setDefaultShowCompletionStateValue", "(I)V", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "diagnosticEvents", "getDiagnosticEvents", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "setDiagnosticEvents", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V", "downloadPolicy", "getDownloadPolicy", "setDownloadPolicy", "", "enableIapEvent", "getEnableIapEvent", "()Z", "setEnableIapEvent", "(Z)V", "enableOm", "getEnableOm", "setEnableOm", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;", "featureFlags", "getFeatureFlags", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;", "setFeatureFlags", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V", "initPolicy", "getInitPolicy", "setInitPolicy", "observableAndroidActivities", "Lcom/google/protobuf/ByteString;", "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;", "getObservableAndroidActivities", "operativeEventPolicy", "getOperativeEventPolicy", "setOperativeEventPolicy", "otherPolicy", "getOtherPolicy", "setOtherPolicy", "_build", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "clearAdOperations", "", "clearAdPolicy", "clearCachedAssetsConfiguration", "clearCachedWebviewFilesConfiguration", "clearDefaultShowCompletionState", "clearDiagnosticEvents", "clearDownloadPolicy", "clearEnableIapEvent", "clearEnableOm", "clearFeatureFlags", "clearInitPolicy", "clearOperativeEventPolicy", "clearOtherPolicy", "hasAdOperations", "hasAdPolicy", "hasCachedAssetsConfiguration", "hasCachedWebviewFilesConfiguration", "hasDiagnosticEvents", "hasDownloadPolicy", "hasFeatureFlags", "hasInitPolicy", "hasOperativeEventPolicy", "hasOtherPolicy", "add", "addObservableAndroidActivities", "addAdditionalStorePackages", "addAll", "values", "", "addAllObservableAndroidActivities", "addAllAdditionalStorePackages", "clear", "clearObservableAndroidActivities", "clearAdditionalStorePackages", "plusAssign", "plusAssignObservableAndroidActivities", "plusAssignAllObservableAndroidActivities", "plusAssignAdditionalStorePackages", "plusAssignAllAdditionalStorePackages", "set", FirebaseAnalytics.Param.INDEX, "setObservableAndroidActivities", "setAdditionalStorePackages", "AdditionalStorePackagesProxy", "Companion", "ObservableAndroidActivitiesProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final NativeConfigurationOuterClass.NativeConfiguration.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class AdditionalStorePackagesProxy extends DslProxy {
            private AdditionalStorePackagesProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;", "builder", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.NativeConfiguration.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class ObservableAndroidActivitiesProxy extends DslProxy {
            private ObservableAndroidActivitiesProxy() {
            }
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.NativeConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ NativeConfigurationOuterClass.NativeConfiguration _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAdditionalStorePackages")
        /* renamed from: addAdditionalStorePackages */
        public final /* synthetic */ void plusAssignAdditionalStorePackages(DslList dslList, String str) {
            this._builder.addAdditionalStorePackages(str);
        }

        @JvmName(name = "addAllAdditionalStorePackages")
        /* renamed from: addAllAdditionalStorePackages */
        public final /* synthetic */ void plusAssignAllAdditionalStorePackages(DslList dslList, Iterable iterable) {
            this._builder.addAllAdditionalStorePackages(iterable);
        }

        @JvmName(name = "addAllObservableAndroidActivities")
        /* renamed from: addAllObservableAndroidActivities */
        public final /* synthetic */ void plusAssignAllObservableAndroidActivities(DslList dslList, Iterable iterable) {
            this._builder.addAllObservableAndroidActivities(iterable);
        }

        @JvmName(name = "addObservableAndroidActivities")
        /* renamed from: addObservableAndroidActivities */
        public final /* synthetic */ void plusAssignObservableAndroidActivities(DslList dslList, ByteString byteString) {
            this._builder.addObservableAndroidActivities(byteString);
        }

        public final void clearAdOperations() {
            this._builder.clearAdOperations();
        }

        public final void clearAdPolicy() {
            this._builder.clearAdPolicy();
        }

        @JvmName(name = "clearAdditionalStorePackages")
        public final /* synthetic */ void clearAdditionalStorePackages(DslList dslList) {
            this._builder.clearAdditionalStorePackages();
        }

        public final void clearCachedAssetsConfiguration() {
            this._builder.clearCachedAssetsConfiguration();
        }

        public final void clearCachedWebviewFilesConfiguration() {
            this._builder.clearCachedWebviewFilesConfiguration();
        }

        public final void clearDefaultShowCompletionState() {
            this._builder.clearDefaultShowCompletionState();
        }

        public final void clearDiagnosticEvents() {
            this._builder.clearDiagnosticEvents();
        }

        public final void clearDownloadPolicy() {
            this._builder.clearDownloadPolicy();
        }

        public final void clearEnableIapEvent() {
            this._builder.clearEnableIapEvent();
        }

        public final void clearEnableOm() {
            this._builder.clearEnableOm();
        }

        public final void clearFeatureFlags() {
            this._builder.clearFeatureFlags();
        }

        public final void clearInitPolicy() {
            this._builder.clearInitPolicy();
        }

        @JvmName(name = "clearObservableAndroidActivities")
        public final /* synthetic */ void clearObservableAndroidActivities(DslList dslList) {
            this._builder.clearObservableAndroidActivities();
        }

        public final void clearOperativeEventPolicy() {
            this._builder.clearOperativeEventPolicy();
        }

        public final void clearOtherPolicy() {
            this._builder.clearOtherPolicy();
        }

        @JvmName(name = "getAdOperations")
        @NotNull
        public final NativeConfigurationOuterClass.AdOperationsConfiguration getAdOperations() {
            return this._builder.getAdOperations();
        }

        @JvmName(name = "getAdPolicy")
        @NotNull
        public final NativeConfigurationOuterClass.RequestPolicy getAdPolicy() {
            return this._builder.getAdPolicy();
        }

        @NotNull
        public final DslList<String, AdditionalStorePackagesProxy> getAdditionalStorePackages() {
            return new DslList<>(this._builder.getAdditionalStorePackagesList());
        }

        @JvmName(name = "getCachedAssetsConfiguration")
        @NotNull
        public final NativeConfigurationOuterClass.CachedAssetsConfiguration getCachedAssetsConfiguration() {
            return this._builder.getCachedAssetsConfiguration();
        }

        @JvmName(name = "getCachedWebviewFilesConfiguration")
        @NotNull
        public final NativeConfigurationOuterClass.CachedAssetsConfiguration getCachedWebviewFilesConfiguration() {
            return this._builder.getCachedWebviewFilesConfiguration();
        }

        @JvmName(name = "getDefaultShowCompletionState")
        @NotNull
        public final NativeConfigurationOuterClass.ShowCompletionState getDefaultShowCompletionState() {
            return this._builder.getDefaultShowCompletionState();
        }

        @JvmName(name = "getDefaultShowCompletionStateValue")
        public final int getDefaultShowCompletionStateValue() {
            return this._builder.getDefaultShowCompletionStateValue();
        }

        @JvmName(name = "getDiagnosticEvents")
        @NotNull
        public final NativeConfigurationOuterClass.DiagnosticEventsConfiguration getDiagnosticEvents() {
            return this._builder.getDiagnosticEvents();
        }

        @JvmName(name = "getDownloadPolicy")
        @NotNull
        public final NativeConfigurationOuterClass.RequestPolicy getDownloadPolicy() {
            return this._builder.getDownloadPolicy();
        }

        @JvmName(name = "getEnableIapEvent")
        public final boolean getEnableIapEvent() {
            return this._builder.getEnableIapEvent();
        }

        @JvmName(name = "getEnableOm")
        public final boolean getEnableOm() {
            return this._builder.getEnableOm();
        }

        @JvmName(name = "getFeatureFlags")
        @NotNull
        public final NativeConfigurationOuterClass.FeatureFlags getFeatureFlags() {
            return this._builder.getFeatureFlags();
        }

        @JvmName(name = "getInitPolicy")
        @NotNull
        public final NativeConfigurationOuterClass.RequestPolicy getInitPolicy() {
            return this._builder.getInitPolicy();
        }

        public final /* synthetic */ DslList getObservableAndroidActivities() {
            return new DslList(this._builder.getObservableAndroidActivitiesList());
        }

        @JvmName(name = "getOperativeEventPolicy")
        @NotNull
        public final NativeConfigurationOuterClass.RequestPolicy getOperativeEventPolicy() {
            return this._builder.getOperativeEventPolicy();
        }

        @JvmName(name = "getOtherPolicy")
        @NotNull
        public final NativeConfigurationOuterClass.RequestPolicy getOtherPolicy() {
            return this._builder.getOtherPolicy();
        }

        public final boolean hasAdOperations() {
            return this._builder.hasAdOperations();
        }

        public final boolean hasAdPolicy() {
            return this._builder.hasAdPolicy();
        }

        public final boolean hasCachedAssetsConfiguration() {
            return this._builder.hasCachedAssetsConfiguration();
        }

        public final boolean hasCachedWebviewFilesConfiguration() {
            return this._builder.hasCachedWebviewFilesConfiguration();
        }

        public final boolean hasDiagnosticEvents() {
            return this._builder.hasDiagnosticEvents();
        }

        public final boolean hasDownloadPolicy() {
            return this._builder.hasDownloadPolicy();
        }

        public final boolean hasFeatureFlags() {
            return this._builder.hasFeatureFlags();
        }

        public final boolean hasInitPolicy() {
            return this._builder.hasInitPolicy();
        }

        public final boolean hasOperativeEventPolicy() {
            return this._builder.hasOperativeEventPolicy();
        }

        public final boolean hasOtherPolicy() {
            return this._builder.hasOtherPolicy();
        }

        @JvmName(name = "setAdOperations")
        public final void setAdOperations(@NotNull NativeConfigurationOuterClass.AdOperationsConfiguration adOperationsConfiguration) {
            this._builder.setAdOperations(adOperationsConfiguration);
        }

        @JvmName(name = "setAdPolicy")
        public final void setAdPolicy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
            this._builder.setAdPolicy(requestPolicy);
        }

        @JvmName(name = "setAdditionalStorePackages")
        public final /* synthetic */ void setAdditionalStorePackages(DslList dslList, int i, String str) {
            this._builder.setAdditionalStorePackages(i, str);
        }

        @JvmName(name = "setCachedAssetsConfiguration")
        public final void setCachedAssetsConfiguration(@NotNull NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration) {
            this._builder.setCachedAssetsConfiguration(cachedAssetsConfiguration);
        }

        @JvmName(name = "setCachedWebviewFilesConfiguration")
        public final void setCachedWebviewFilesConfiguration(@NotNull NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration) {
            this._builder.setCachedWebviewFilesConfiguration(cachedAssetsConfiguration);
        }

        @JvmName(name = "setDefaultShowCompletionState")
        public final void setDefaultShowCompletionState(@NotNull NativeConfigurationOuterClass.ShowCompletionState showCompletionState) {
            this._builder.setDefaultShowCompletionState(showCompletionState);
        }

        @JvmName(name = "setDefaultShowCompletionStateValue")
        public final void setDefaultShowCompletionStateValue(int i) {
            this._builder.setDefaultShowCompletionStateValue(i);
        }

        @JvmName(name = "setDiagnosticEvents")
        public final void setDiagnosticEvents(@NotNull NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEventsConfiguration) {
            this._builder.setDiagnosticEvents(diagnosticEventsConfiguration);
        }

        @JvmName(name = "setDownloadPolicy")
        public final void setDownloadPolicy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
            this._builder.setDownloadPolicy(requestPolicy);
        }

        @JvmName(name = "setEnableIapEvent")
        public final void setEnableIapEvent(boolean z) {
            this._builder.setEnableIapEvent(z);
        }

        @JvmName(name = "setEnableOm")
        public final void setEnableOm(boolean z) {
            this._builder.setEnableOm(z);
        }

        @JvmName(name = "setFeatureFlags")
        public final void setFeatureFlags(@NotNull NativeConfigurationOuterClass.FeatureFlags featureFlags) {
            this._builder.setFeatureFlags(featureFlags);
        }

        @JvmName(name = "setInitPolicy")
        public final void setInitPolicy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
            this._builder.setInitPolicy(requestPolicy);
        }

        @JvmName(name = "setObservableAndroidActivities")
        public final /* synthetic */ void setObservableAndroidActivities(DslList dslList, int i, ByteString byteString) {
            this._builder.setObservableAndroidActivities(i, byteString);
        }

        @JvmName(name = "setOperativeEventPolicy")
        public final void setOperativeEventPolicy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
            this._builder.setOperativeEventPolicy(requestPolicy);
        }

        @JvmName(name = "setOtherPolicy")
        public final void setOtherPolicy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
            this._builder.setOtherPolicy(requestPolicy);
        }

        private Dsl(NativeConfigurationOuterClass.NativeConfiguration.Builder builder) {
            this._builder = builder;
        }
    }

    private NativeConfigurationKt() {
    }
}
