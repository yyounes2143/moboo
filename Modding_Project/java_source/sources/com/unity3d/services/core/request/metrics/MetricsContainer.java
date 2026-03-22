package com.unity3d.services.core.request.metrics;

import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.Session;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/unity3d/services/core/request/metrics/MetricsContainer;", "", "metricSampleRate", "", "commonTags", "Lcom/unity3d/services/core/request/metrics/MetricCommonTags;", "metrics", "", "Lcom/unity3d/services/core/request/metrics/Metric;", MetricsContainer.METRIC_CONTAINER_SESSION_TOKEN, "(Ljava/lang/String;Lcom/unity3d/services/core/request/metrics/MetricCommonTags;Ljava/util/List;Ljava/lang/String;)V", "apiLevel", "deviceManufacturer", "kotlin.jvm.PlatformType", MetricsContainer.METRIC_CONTAINER_DEVICE_MODEL, MetricsContainer.METRIC_CONTAINER_DEVICE_NAME, "gameId", MetricsContainer.METRIC_CONTAINER_SHARED_SESSION_ID, "toMap", "", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMetricsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsContainer.kt\ncom/unity3d/services/core/request/metrics/MetricsContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1549#2:51\n1620#2,3:52\n1#3:55\n*S KotlinDebug\n*F\n+ 1 MetricsContainer.kt\ncom/unity3d/services/core/request/metrics/MetricsContainer\n*L\n20#1:51\n20#1:52,3\n*E\n"})
/* loaded from: classes6.dex */
public final class MetricsContainer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String METRICS_CONTAINER = "m";
    @NotNull
    private static final String METRICS_CONTAINER_TAGS = "t";
    @NotNull
    private static final String METRIC_CONTAINER_API_LEVEL = "apil";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_MAKE = "deviceMake";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_MODEL = "deviceModel";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_NAME = "deviceName";
    @NotNull
    private static final String METRIC_CONTAINER_GAME_ID = "gameId";
    @NotNull
    private static final String METRIC_CONTAINER_SAMPLE_RATE = "msr";
    @NotNull
    private static final String METRIC_CONTAINER_SESSION_TOKEN = "sTkn";
    @NotNull
    private static final String METRIC_CONTAINER_SHARED_SESSION_ID = "shSid";
    @NotNull
    private final MetricCommonTags commonTags;
    @NotNull
    private final String metricSampleRate;
    @NotNull
    private final List<Metric> metrics;
    @Nullable
    private final String sTkn;
    @NotNull
    private final String shSid = Session.Default.getId();
    @NotNull
    private final String apiLevel = String.valueOf(Device.getApiLevel());
    private final String deviceModel = Device.getModel();
    private final String deviceName = Device.getDevice();
    private final String deviceManufacturer = Device.getManufacturer();
    private final String gameId = ClientProperties.getGameId();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/unity3d/services/core/request/metrics/MetricsContainer$Companion;", "", "()V", "METRICS_CONTAINER", "", "METRICS_CONTAINER_TAGS", "METRIC_CONTAINER_API_LEVEL", "METRIC_CONTAINER_DEVICE_MAKE", "METRIC_CONTAINER_DEVICE_MODEL", "METRIC_CONTAINER_DEVICE_NAME", "METRIC_CONTAINER_GAME_ID", "METRIC_CONTAINER_SAMPLE_RATE", "METRIC_CONTAINER_SESSION_TOKEN", "METRIC_CONTAINER_SHARED_SESSION_ID", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MetricsContainer(@NotNull String str, @NotNull MetricCommonTags metricCommonTags, @NotNull List<Metric> list, @Nullable String str2) {
        this.metricSampleRate = str;
        this.commonTags = metricCommonTags;
        this.metrics = list;
        this.sTkn = str2;
    }

    @NotNull
    public final Map<String, Object> toMap() {
        List<Metric> list = this.metrics;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Metric metric : list) {
            arrayList.add(metric.toMap());
        }
        Map createMapBuilder = MapsKt.createMapBuilder();
        createMapBuilder.put(METRIC_CONTAINER_SAMPLE_RATE, this.metricSampleRate);
        createMapBuilder.put(METRICS_CONTAINER, arrayList);
        createMapBuilder.put(METRICS_CONTAINER_TAGS, this.commonTags.toMap());
        createMapBuilder.put(METRIC_CONTAINER_SHARED_SESSION_ID, this.shSid);
        createMapBuilder.put(METRIC_CONTAINER_API_LEVEL, this.apiLevel);
        String str = this.sTkn;
        if (str != null) {
            createMapBuilder.put(METRIC_CONTAINER_SESSION_TOKEN, str);
        }
        String str2 = this.deviceModel;
        if (str2 != null) {
            createMapBuilder.put(METRIC_CONTAINER_DEVICE_MODEL, str2);
        }
        String str3 = this.deviceName;
        if (str3 != null) {
            createMapBuilder.put(METRIC_CONTAINER_DEVICE_NAME, str3);
        }
        String str4 = this.deviceManufacturer;
        if (str4 != null) {
            createMapBuilder.put(METRIC_CONTAINER_DEVICE_MAKE, str4);
        }
        String str5 = this.gameId;
        if (str5 != null) {
            createMapBuilder.put("gameId", str5);
        }
        return MapsKt.build(createMapBuilder);
    }
}
