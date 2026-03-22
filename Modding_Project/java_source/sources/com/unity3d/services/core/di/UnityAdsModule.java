package com.unity3d.services.core.di;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.ByteStringSerializer;
import com.unity3d.ads.core.data.model.UniversalRequestStoreSerializer;
import com.unity3d.ads.core.data.model.WebViewConfigurationStoreSerializer;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.extensions.ContextExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.ads.measurements.MeasurementsService;
import com.unity3d.services.ads.token.AsyncTokenStorage;
import com.unity3d.services.ads.token.InMemoryAsyncTokenStorage;
import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.ads.topics.TopicsService;
import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.device.VolumeChange;
import com.unity3d.services.core.device.VolumeChangeMonitor;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.SDKDispatchers;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.request.metrics.SDKMetrics;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import com.unity3d.services.core.webview.bridge.SharedInstances;
import gatewayprotocol.v1.AdOperationsConfigurationKt;
import gatewayprotocol.v1.DiagnosticEventsConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J*\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00112\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000f0*J\u0014\u0010(\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\u0014\u0010+\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0014\u0010,\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001e\u0010-\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u0006\u0010.\u001a\u00020\u0011J\u001e\u0010/\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u0006\u00100\u001a\u00020\u0011J\u0016\u00101\u001a\u0002022\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#J\u0006\u00103\u001a\u000204J\u001c\u00105\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\u0014\u00105\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001e\u00106\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u001e\u00107\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\u0014\u00108\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\u0014\u00109\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0006\u0010:\u001a\u000204J\u0016\u0010;\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J&\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002042\u0006\u0010@\u001a\u00020AH\u0002J\u000e\u0010B\u001a\u00020'2\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u000204J\u001e\u0010F\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u0006\u0010G\u001a\u00020#J\u0006\u0010H\u001a\u00020\nJ\u001e\u0010I\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u0016\u0010J\u001a\u00020K2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#J\u001e\u0010L\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020N0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J\u000e\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00020T0\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011¨\u0006U"}, d2 = {"Lcom/unity3d/services/core/di/UnityAdsModule;", "", "()V", "androidContext", "Landroid/content/Context;", "asyncTokenStorage", "Lcom/unity3d/services/ads/token/AsyncTokenStorage;", "tokenStorage", "Lcom/unity3d/services/ads/token/TokenStorage;", "sdkMetricsSender", "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;", "auidDataStore", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "dataStore", "Landroidx/datastore/core/DataStore;", "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "defaultNativeConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "gatewayCacheDataStore", "gatewayDataStore", "context", "dispatcher", "getDefaultAdOperations", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "getDefaultRequestPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;", "getDefaultRequestRetryPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;", "getDefaultRequestTimeoutPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "getTokenCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "errorHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "parentJob", "Lkotlinx/coroutines/Job;", "glInfoDataStore", "fetchGLInfo", "Landroidx/datastore/core/DataMigration;", "iapTransactionDataStore", "idfiDataStore", "initCoroutineScope", "ioDispatcher", "loadCoroutineScope", "mainDispatcher", "measurementService", "Lcom/unity3d/services/ads/measurements/MeasurementsService;", "memoryJsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "nativeConfigurationDataStore", "offerwallSignalsCoroutineScope", "omidCoroutineScope", "privacyDataStore", "privacyFsmDataStore", "privateJsonStorage", "provideByteStringDataSource", "provideByteStringDataStore", "dataStoreFile", "", "provideJsonStorage", "storageType", "Lcom/unity3d/services/core/device/StorageManager$StorageType;", "publicApiJob", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "publicJsonStorage", "scarSignalsCoroutineScope", "sdkDispatchers", "sdkMetrics", "showCoroutineScope", "topicsService", "Lcom/unity3d/services/ads/topics/TopicsService;", "transactionCoroutineScope", "universalRequestDataStore", "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;", "volumeChangeMonitor", "Lcom/unity3d/services/core/device/VolumeChangeMonitor;", "volumeChange", "Lcom/unity3d/services/core/device/VolumeChange;", "webViewConfigurationDataStore", "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUnityAdsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n+ 2 NativeConfigurationKt.kt\ngatewayprotocol/v1/NativeConfigurationKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DiagnosticEventsConfigurationKt.kt\ngatewayprotocol/v1/DiagnosticEventsConfigurationKtKt\n+ 5 AdOperationsConfigurationKt.kt\ngatewayprotocol/v1/AdOperationsConfigurationKtKt\n+ 6 RequestPolicyKt.kt\ngatewayprotocol/v1/RequestPolicyKtKt\n+ 7 RequestRetryPolicyKt.kt\ngatewayprotocol/v1/RequestRetryPolicyKtKt\n+ 8 RequestTimeoutPolicyKt.kt\ngatewayprotocol/v1/RequestTimeoutPolicyKtKt\n*L\n1#1,307:1\n10#2:308\n1#3:309\n1#3:311\n1#3:313\n1#3:315\n1#3:317\n1#3:319\n10#4:310\n10#5:312\n10#6:314\n10#7:316\n10#8:318\n*S KotlinDebug\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n*L\n211#1:308\n211#1:309\n217#1:311\n273#1:313\n281#1:315\n288#1:317\n299#1:319\n217#1:310\n273#1:312\n281#1:314\n288#1:316\n299#1:318\n*E\n"})
/* loaded from: classes6.dex */
public final class UnityAdsModule {
    private final NativeConfigurationOuterClass.AdOperationsConfiguration getDefaultAdOperations() {
        AdOperationsConfigurationKt.Dsl _create = AdOperationsConfigurationKt.Dsl.Companion._create(NativeConfigurationOuterClass.AdOperationsConfiguration.newBuilder());
        _create.setLoadTimeoutMs(30000);
        _create.setShowTimeoutMs(10000);
        _create.setGetTokenTimeoutMs(UnityAdsConstants.AdOperations.GET_TOKEN_TIMEOUT_MS);
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestPolicy getDefaultRequestPolicy() {
        RequestPolicyKt.Dsl _create = RequestPolicyKt.Dsl.Companion._create(NativeConfigurationOuterClass.RequestPolicy.newBuilder());
        _create.setRetryPolicy(getDefaultRequestRetryPolicy());
        _create.setTimeoutPolicy(getDefaultRequestTimeoutPolicy());
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestRetryPolicy getDefaultRequestRetryPolicy() {
        RequestRetryPolicyKt.Dsl _create = RequestRetryPolicyKt.Dsl.Companion._create(NativeConfigurationOuterClass.RequestRetryPolicy.newBuilder());
        _create.setMaxDuration(UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        _create.setRetryWaitBase(500);
        _create.setRetryJitterPct(0.1f);
        _create.setShouldStoreLocally(false);
        _create.setRetryMaxInterval(2500);
        _create.setRetryScalingFactor(2.0f);
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestTimeoutPolicy getDefaultRequestTimeoutPolicy() {
        RequestTimeoutPolicyKt.Dsl _create = RequestTimeoutPolicyKt.Dsl.Companion._create(NativeConfigurationOuterClass.RequestTimeoutPolicy.newBuilder());
        _create.setConnectTimeoutMs(30000);
        _create.setReadTimeoutMs(30000);
        _create.setWriteTimeoutMs(30000);
        _create.setOverallTimeoutMs(30000);
        return _create._build();
    }

    private final ByteStringDataSource provideByteStringDataSource(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return new AndroidByteStringDataSource(dataStore);
    }

    private final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideByteStringDataStore(final Context context, CoroutineDispatcher coroutineDispatcher, final String str) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, null, CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$provideByteStringDataStore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, str);
            }
        }, 4, null);
    }

    private final JsonStorage provideJsonStorage(StorageManager.StorageType storageType) {
        if (StorageManager.init(ClientProperties.getApplicationContext())) {
            return StorageManager.getStorage(storageType);
        }
        throw new IllegalStateException("StorageManager failed to initialize");
    }

    @NotNull
    public final Context androidContext() {
        return ClientProperties.getApplicationContext();
    }

    @NotNull
    public final AsyncTokenStorage asyncTokenStorage(@NotNull TokenStorage tokenStorage, @NotNull SDKMetricsSender sDKMetricsSender) {
        return new InMemoryAsyncTokenStorage(null, new Handler(Looper.getMainLooper()), sDKMetricsSender, tokenStorage);
    }

    @NotNull
    public final ByteStringDataSource auidDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final CoroutineDispatcher defaultDispatcher() {
        return Dispatchers.getDefault();
    }

    @NotNull
    public final NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration() {
        NativeConfigurationKt.Dsl _create = NativeConfigurationKt.Dsl.Companion._create(NativeConfigurationOuterClass.NativeConfiguration.newBuilder());
        _create.setAdOperations(getDefaultAdOperations());
        _create.setInitPolicy(getDefaultRequestPolicy());
        _create.setAdPolicy(getDefaultRequestPolicy());
        _create.setOtherPolicy(getDefaultRequestPolicy());
        _create.setOperativeEventPolicy(getDefaultRequestPolicy());
        DiagnosticEventsConfigurationKt.Dsl _create2 = DiagnosticEventsConfigurationKt.Dsl.Companion._create(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.newBuilder());
        _create2.setEnabled(true);
        _create2.setMaxBatchSize(10);
        _create2.setMaxBatchIntervalMs(30000);
        _create2.setTtmEnabled(false);
        _create.setDiagnosticEvents(_create2._build());
        return _create._build();
    }

    @NotNull
    public final ByteStringDataSource gatewayCacheDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> gatewayDataStore(@NotNull Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return provideByteStringDataStore(context, coroutineDispatcher, ServiceProvider.DATA_STORE_GATEWAY_CACHE);
    }

    @NotNull
    public final CoroutineScope getTokenCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_GET_TOKEN_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> glInfoDataStore(@NotNull final Context context, @NotNull CoroutineDispatcher coroutineDispatcher, @NotNull DataMigration<ByteStringStoreOuterClass.ByteStringStore> dataMigration) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, CollectionsKt.listOf(dataMigration), CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$glInfoDataStore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_GL_INFO);
            }
        }, 2, null);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> iapTransactionDataStore(@NotNull Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return provideByteStringDataStore(context, coroutineDispatcher, ServiceProvider.DATA_STORE_IAP_TRANSACTION);
    }

    @NotNull
    public final ByteStringDataSource idfiDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final CoroutineScope initCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_INIT_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final CoroutineDispatcher ioDispatcher() {
        return Dispatchers.getIO();
    }

    @NotNull
    public final CoroutineScope loadCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_LOAD_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final CoroutineDispatcher mainDispatcher() {
        return Dispatchers.getMain();
    }

    @NotNull
    public final MeasurementsService measurementService(@NotNull Context context, @NotNull ISDKDispatchers iSDKDispatchers) {
        return new MeasurementsService(context, iSDKDispatchers, SharedInstances.INSTANCE.getWebViewEventSender());
    }

    @NotNull
    public final JsonStorage memoryJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.MEMORY);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> nativeConfigurationDataStore(@NotNull Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return provideByteStringDataStore(context, coroutineDispatcher, ServiceProvider.DATA_STORE_NATIVE_CONFIG);
    }

    @NotNull
    public final CoroutineScope offerwallSignalsCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_OFFERWALL_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final CoroutineScope omidCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_OMID_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyDataStore(@NotNull Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return provideByteStringDataStore(context, coroutineDispatcher, ServiceProvider.DATA_STORE_PRIVACY);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyFsmDataStore(@NotNull Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return provideByteStringDataStore(context, coroutineDispatcher, ServiceProvider.DATA_STORE_PRIVACY_FSM);
    }

    @NotNull
    public final JsonStorage privateJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PRIVATE);
    }

    @NotNull
    public final Job publicApiJob(@NotNull final DiagnosticEventRepository diagnosticEventRepository) {
        CompletableJob Job$default;
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        Job$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: com.unity3d.services.core.di.UnityAdsModule$publicApiJob$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                DiagnosticEventRepository.this.flush();
            }
        });
        return Job$default;
    }

    @NotNull
    public final JsonStorage publicJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PUBLIC);
    }

    @NotNull
    public final CoroutineScope scarSignalsCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_SCAR_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final ISDKDispatchers sdkDispatchers() {
        return new SDKDispatchers();
    }

    @NotNull
    public final SDKMetricsSender sdkMetrics() {
        return SDKMetrics.getInstance();
    }

    @NotNull
    public final CoroutineScope showCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_SHOW_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final TopicsService topicsService(@NotNull Context context, @NotNull ISDKDispatchers iSDKDispatchers) {
        return new TopicsService(context, iSDKDispatchers, SharedInstances.INSTANCE.getWebViewEventSender());
    }

    @NotNull
    public final CoroutineScope transactionCoroutineScope(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull CoroutineExceptionHandler coroutineExceptionHandler, @NotNull Job job) {
        return CoroutineScopeKt.CoroutineScope(job.plus(iSDKDispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_TRANSACTION_SCOPE)).plus(coroutineExceptionHandler));
    }

    @NotNull
    public final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> universalRequestDataStore(@NotNull final Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new UniversalRequestStoreSerializer(), null, null, CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$universalRequestDataStore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST);
            }
        }, 4, null);
    }

    @NotNull
    public final VolumeChangeMonitor volumeChangeMonitor(@NotNull VolumeChange volumeChange) {
        return new VolumeChangeMonitor(SharedInstances.INSTANCE.getWebViewEventSender(), volumeChange);
    }

    @NotNull
    public final DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webViewConfigurationDataStore(@NotNull final Context context, @NotNull CoroutineDispatcher coroutineDispatcher) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new WebViewConfigurationStoreSerializer(), null, null, CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$webViewConfigurationDataStore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_WEBVIEW_CONFIG);
            }
        }, 4, null);
    }

    @NotNull
    public final ByteStringDataSource iapTransactionDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource nativeConfigurationDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource privacyDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource privacyFsmDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource glInfoDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return provideByteStringDataSource(dataStore);
    }
}
