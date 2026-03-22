package com.vungle.ads.internal.model;

import androidx.annotation.VisibleForTesting;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.media3.common.C;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.b;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.vungle.ads.AdConfig;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.Regex;
import kotlinx.serialization.Contextual;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;
import kotlinx.serialization.json.JsonTransformingSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0007\u0018\u0000 \u008a\u00012\u00020\u0001:\u0016\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008a\u0001\u008f\u0001\u0090\u0001\u0091\u0001\u0092\u0001\u0093\u0001\u0094\u0001B%\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bBq\b\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0010\b\u0001\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0016\b\u0001\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u0016\b\u0001\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0007\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J%\u0010\u001a\u001a\u00020\f*\u00020\f2\u0006\u0010\u0018\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\"\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fHÇ\u0001¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b&\u0010%J\u000f\u0010'\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b'\u0010%J\r\u0010(\u001a\u00020\t¢\u0006\u0004\b(\u0010)J\r\u0010*\u001a\u00020\t¢\u0006\u0004\b*\u0010)J\u000f\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b,\u0010-J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010.J\r\u0010/\u001a\u00020\u0010¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u0010¢\u0006\u0004\b1\u00100J\r\u00102\u001a\u00020\u0010¢\u0006\u0004\b2\u00100J\r\u00103\u001a\u00020\u0010¢\u0006\u0004\b3\u00100J\u0015\u00105\u001a\u00020\u00102\u0006\u00104\u001a\u00020\f¢\u0006\u0004\b5\u00106J\r\u00107\u001a\u00020\u0010¢\u0006\u0004\b7\u00100J\u001b\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u00022\u0006\u00109\u001a\u000208¢\u0006\u0004\b;\u0010<J5\u0010?\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00022\u0006\u0010=\u001a\u00020\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0010¢\u0006\u0004\bA\u00100J\u0015\u0010B\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0002¢\u0006\u0004\bB\u0010CJ\r\u0010D\u001a\u00020\u0010¢\u0006\u0004\bD\u00100J\u000f\u0010E\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bE\u0010%J-\u0010J\u001a\u00020!2\u0006\u0010F\u001a\u00020\f2\u0006\u0010G\u001a\u00020\f2\u0006\u0010H\u001a\u00020\f2\u0006\u0010I\u001a\u00020\f¢\u0006\u0004\bJ\u0010KJ\r\u0010L\u001a\u00020!¢\u0006\u0004\bL\u0010MJ\u0019\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000e¢\u0006\u0004\bN\u0010OJ\r\u0010Q\u001a\u00020P¢\u0006\u0004\bQ\u0010RJ\u0017\u0010T\u001a\u00020\t2\b\u0010S\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\bT\u0010UJ\r\u0010V\u001a\u00020\f¢\u0006\u0004\bV\u0010%J\u000f\u0010W\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bW\u0010%J\u000f\u0010X\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bX\u0010%J\u000f\u0010Y\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bY\u0010%J\u000f\u0010[\u001a\u0004\u0018\u00010Z¢\u0006\u0004\b[\u0010\\J\u0017\u0010^\u001a\u00020!2\b\u0010]\u001a\u0004\u0018\u00010:¢\u0006\u0004\b^\u0010_R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0004\u0010`\u0012\u0004\ba\u0010MR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0006\u0010b\u0012\u0004\bc\u0010MR(\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\r\u0010d\u0012\u0004\be\u0010MR4\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u000f\u0010f\u0012\u0004\bj\u0010M\u001a\u0004\bg\u0010O\"\u0004\bh\u0010iR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010k\u001a\u0004\bl\u00100\"\u0004\bm\u0010nR*\u0010p\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bp\u0010q\u0012\u0004\bv\u0010M\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR*\u0010x\u001a\u0004\u0018\u00010w8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bx\u0010y\u0012\u0004\b~\u0010M\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R4\u0010\u0080\u0001\u001a\u0004\u0018\u0001082\b\u0010\u007f\u001a\u0004\u0018\u0001088\u0006@BX\u0087\u000e¢\u0006\u0017\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u0012\u0005\b\u0084\u0001\u0010M\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u0004\u0018\u00010+8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010-¨\u0006\u0095\u0001"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload;", "", "", "Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit;", b.JSON_KEY_ADS, "Lcom/vungle/ads/internal/model/ConfigPayload;", "config", "<init>", "(Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload;)V", "", "seen1", "j$/util/concurrent/ConcurrentHashMap", "", "mraidFiles", "", "incentivizedTextSettings", "", "assetsFullyDownloaded", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/Map;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "value", "valueOrEmpty", "(Ljava/lang/String;)Ljava/lang/String;", "oldValue", "newValue", "complexReplace", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "self", "Lkotlinx/serialization/encoding/CompositeEncoder;", "output", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialDesc", "", "write$Self", "(Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "()Ljava/lang/String;", "eventId", "advAppId", "adWidth", "()I", "adHeight", "Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", OutOfContextTestingActivity.AD_UNIT_KEY, "()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "()Lcom/vungle/ads/internal/model/ConfigPayload;", "adLoadOptimizationEnabled", "()Z", "isCacheableAssetsRequired", "omEnabled", "isClickCoordinatesTrackingEnabled", "failingUrl", "isCriticalAsset", "(Ljava/lang/String;)Z", "heartbeatEnabled", "Ljava/io/File;", "dir", "Lcom/vungle/ads/internal/model/AdAsset;", "getDownloadableAssets", "(Ljava/io/File;)Ljava/util/List;", "event", "secondValue", "getTpatUrls", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "hasExpired", "getWinNotifications", "()Ljava/util/List;", "isNativeTemplateType", "templateType", CampaignEx.JSON_KEY_TITLE, "body", "keepWatching", "close", "setIncentivizedText", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "setAssetFullyDownloaded", "()V", "getMRAIDArgsInMap", "()Ljava/util/Map;", "Lkotlinx/serialization/json/JsonObject;", "createMRAIDArgs", "()Lkotlinx/serialization/json/JsonObject;", "incentivized", "getShowCloseDelay", "(Ljava/lang/Boolean;)I", "getCreativeId", "getAdSource", "getMediationName", "getViewMasterVersion", "Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "getWebViewSettings", "()Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "adAsset", "updateAdAssetPath", "(Lcom/vungle/ads/internal/model/AdAsset;)V", "Ljava/util/List;", "getAds$annotations", "Lcom/vungle/ads/internal/model/ConfigPayload;", "getConfig$annotations", "Lj$/util/concurrent/ConcurrentHashMap;", "getMraidFiles$annotations", "Ljava/util/Map;", "getIncentivizedTextSettings", "setIncentivizedTextSettings", "(Ljava/util/Map;)V", "getIncentivizedTextSettings$annotations", "Z", "getAssetsFullyDownloaded", "setAssetsFullyDownloaded", "(Z)V", "Lcom/vungle/ads/AdConfig;", "adConfig", "Lcom/vungle/ads/AdConfig;", "getAdConfig", "()Lcom/vungle/ads/AdConfig;", "setAdConfig", "(Lcom/vungle/ads/AdConfig;)V", "getAdConfig$annotations", "Lcom/vungle/ads/internal/util/LogEntry;", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "getLogEntry$vungle_ads_release", "()Lcom/vungle/ads/internal/util/LogEntry;", "setLogEntry$vungle_ads_release", "(Lcom/vungle/ads/internal/util/LogEntry;)V", "getLogEntry$vungle_ads_release$annotations", "<set-?>", "assetDirectory", "Ljava/io/File;", "getAssetDirectory", "()Ljava/io/File;", "getAssetDirectory$annotations", "getAd", "()Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit;", "ad", "getAdMarkup", LegacyLoadUseCase.KEY_AD_MARKUP, "Companion", "$serializer", "AdSizeInfo", "AdUnit", "CacheableReplacement", "PlacementAdUnit", "TemplateSettings", "TpatSerializer", "ViewAbility", "ViewAbilityInfo", "WebViewSettings", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class AdPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String FILE_SCHEME = "file://";
    @NotNull
    public static final String INCENTIVIZED_BODY_TEXT = "INCENTIVIZED_BODY_TEXT";
    @NotNull
    public static final String INCENTIVIZED_CLOSE_TEXT = "INCENTIVIZED_CLOSE_TEXT";
    @NotNull
    public static final String INCENTIVIZED_CONTINUE_TEXT = "INCENTIVIZED_CONTINUE_TEXT";
    @NotNull
    public static final String INCENTIVIZED_TITLE_TEXT = "INCENTIVIZED_TITLE_TEXT";
    @NotNull
    public static final String KEY_TEMPLATE = "template";
    @NotNull
    public static final String KEY_VM = "vmURL";
    @NotNull
    public static final String TPAT_CLICK_COORDINATES_URLS = "video.clickCoordinates";
    @NotNull
    private static final String UNKNOWN = "unknown";
    @Nullable
    private AdConfig adConfig;
    @Nullable
    private final List<PlacementAdUnit> ads;
    @Nullable
    private File assetDirectory;
    private boolean assetsFullyDownloaded;
    @Nullable
    private final ConfigPayload config;
    @NotNull
    private Map<String, String> incentivizedTextSettings;
    @Nullable
    private LogEntry logEntry;
    @NotNull
    private ConcurrentHashMap<String, String> mraidFiles;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\u001d\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÇ\u0001R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\r¨\u0006$"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;", "", "seen1", "", "width", "height", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getHeight$annotations", "()V", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getWidth$annotations", "getWidth", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class AdSizeInfo {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Integer height;
        @Nullable
        private final Integer width;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdSizeInfo> serializer() {
                return AdPayload$AdSizeInfo$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdSizeInfo() {
            this((Integer) null, (Integer) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ AdSizeInfo copy$default(AdSizeInfo adSizeInfo, Integer num, Integer num2, int i, Object obj) {
            if ((i & 1) != 0) {
                num = adSizeInfo.width;
            }
            if ((i & 2) != 0) {
                num2 = adSizeInfo.height;
            }
            return adSizeInfo.copy(num, num2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull AdSizeInfo adSizeInfo, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            Integer num;
            Integer num2;
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || (num2 = adSizeInfo.width) == null || num2.intValue() != 0) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, adSizeInfo.width);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || (num = adSizeInfo.height) == null || num.intValue() != 0) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, IntSerializer.INSTANCE, adSizeInfo.height);
            }
        }

        @Nullable
        public final Integer component1() {
            return this.width;
        }

        @Nullable
        public final Integer component2() {
            return this.height;
        }

        @NotNull
        public final AdSizeInfo copy(@Nullable Integer num, @Nullable Integer num2) {
            return new AdSizeInfo(num, num2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdSizeInfo)) {
                return false;
            }
            AdSizeInfo adSizeInfo = (AdSizeInfo) obj;
            if (Intrinsics.areEqual(this.width, adSizeInfo.width) && Intrinsics.areEqual(this.height, adSizeInfo.height)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer getHeight() {
            return this.height;
        }

        @Nullable
        public final Integer getWidth() {
            return this.width;
        }

        public int hashCode() {
            int hashCode;
            Integer num = this.width;
            int i = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i2 = hashCode * 31;
            Integer num2 = this.height;
            if (num2 != null) {
                i = num2.hashCode();
            }
            return i2 + i;
        }

        @NotNull
        public String toString() {
            return "AdSizeInfo(width=" + this.width + ", height=" + this.height + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ AdSizeInfo(int i, @SerialName("w") Integer num, @SerialName("h") Integer num2, SerializationConstructorMarker serializationConstructorMarker) {
            this.width = (i & 1) == 0 ? 0 : num;
            if ((i & 2) == 0) {
                this.height = 0;
            } else {
                this.height = num2;
            }
        }

        public AdSizeInfo(@Nullable Integer num, @Nullable Integer num2) {
            this.width = num;
            this.height = num2;
        }

        public /* synthetic */ AdSizeInfo(Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0 : num, (i & 2) != 0 ? 0 : num2);
        }

        @SerialName("h")
        public static /* synthetic */ void getHeight$annotations() {
        }

        @SerialName("w")
        public static /* synthetic */ void getWidth$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bk\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u009d\u00012\u00020\u0001:\u0004\u009c\u0001\u009d\u0001B\u0093\u0003\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u001c\b\u0001\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0014\u0018\u00010\u0013\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0001\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014\u0012\u0010\b\u0001\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014\u0012\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010'\u001a\u0004\u0018\u00010(\u0012\b\u0010)\u001a\u0004\u0018\u00010*¢\u0006\u0002\u0010+Bÿ\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u001c\b\u0002\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0014\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(¢\u0006\u0002\u0010,J\u000b\u0010r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010FJ\u0010\u0010u\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010FJ\u001d\u0010v\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0014\u0018\u00010\u0013HÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010z\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014HÆ\u0003J\u0011\u0010{\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014HÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010FJ\u0011\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010FJ\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010%HÆ\u0003J\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u00100J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010FJ\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u00100J\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u00100J\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u00100J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u008a\u0003\u0010\u008f\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0014\u0018\u00010\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00142\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00142\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(HÆ\u0001¢\u0006\u0003\u0010\u0090\u0001J\u0015\u0010\u0091\u0001\u001a\u00020\u000b2\t\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0003HÖ\u0001J\n\u0010\u0094\u0001\u001a\u00020\u0005HÖ\u0001J(\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020\u00002\b\u0010\u0098\u0001\u001a\u00030\u0099\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u0001HÇ\u0001R \u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00101\u0012\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b2\u0010.\u001a\u0004\b3\u00104R\u001e\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b5\u0010.\u001a\u0004\b6\u00107R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b8\u0010.\u001a\u0004\b9\u00104R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b:\u0010.\u001a\u0004\b;\u00104R\u001e\u0010!\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b<\u0010.\u001a\u0004\b=\u00104R \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00101\u0012\u0004\b>\u0010.\u001a\u0004\b?\u00100R\u001e\u0010 \u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b@\u0010.\u001a\u0004\bA\u00104R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bB\u0010.\u001a\u0004\bC\u00104R \u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010G\u0012\u0004\bD\u0010.\u001a\u0004\bE\u0010FR \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010G\u0012\u0004\bH\u0010.\u001a\u0004\bI\u0010FR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bJ\u0010.\u001a\u0004\bK\u00104R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bL\u0010.\u001a\u0004\bM\u00104R \u0010&\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00101\u0012\u0004\bN\u0010.\u001a\u0004\b&\u00100R$\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bO\u0010.\u001a\u0004\bP\u0010QR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bR\u0010.\u001a\u0004\bS\u00104R$\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bT\u0010.\u001a\u0004\bU\u0010QR \u0010\"\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010G\u0012\u0004\bV\u0010.\u001a\u0004\bW\u0010FR \u0010#\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010G\u0012\u0004\bX\u0010.\u001a\u0004\bY\u0010FR \u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010G\u0012\u0004\bZ\u0010.\u001a\u0004\b[\u0010FR \u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00101\u0012\u0004\b\\\u0010.\u001a\u0004\b]\u00100R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b^\u0010.\u001a\u0004\b_\u0010`R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u0010.\u001a\u0004\bb\u00104R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bc\u0010.\u001a\u0004\bd\u00104R0\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0014\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\be\u0010.\u001a\u0004\bf\u0010gR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bh\u0010.\u001a\u0004\bi\u0010jR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bk\u0010.\u001a\u0004\bl\u00104R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bm\u0010.\u001a\u0004\bn\u00104R\u001e\u0010'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bo\u0010.\u001a\u0004\bp\u0010q¨\u0006\u009e\u0001"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "", "seen1", "", "id", "", "adType", "adSource", "expiry", "deeplinkUrl", "clickCoordinatesEnabled", "", "adLoadOptimizationEnabled", "templateHeartbeatCheck", "mediationName", "info", "sleep", "errorCode", "tpat", "", "", AdPayload.KEY_VM, "vmVersion", "adMarketId", "notification", "loadAdUrls", "viewAbility", "Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;", "templateURL", "templateType", "templateSettings", "Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;", "creativeId", "advAppId", "showClose", "showCloseIncentivized", "adSizeInfo", "Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;", "isCacheableAssetsRequired", "webViewSettings", "Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;)V", "getAdLoadOptimizationEnabled$annotations", "()V", "getAdLoadOptimizationEnabled", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getAdMarketId$annotations", "getAdMarketId", "()Ljava/lang/String;", "getAdSizeInfo$annotations", "getAdSizeInfo", "()Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;", "getAdSource$annotations", "getAdSource", "getAdType$annotations", "getAdType", "getAdvAppId$annotations", "getAdvAppId", "getClickCoordinatesEnabled$annotations", "getClickCoordinatesEnabled", "getCreativeId$annotations", "getCreativeId", "getDeeplinkUrl$annotations", "getDeeplinkUrl", "getErrorCode$annotations", "getErrorCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getExpiry$annotations", "getExpiry", "getId$annotations", "getId", "getInfo$annotations", "getInfo", "isCacheableAssetsRequired$annotations", "getLoadAdUrls$annotations", "getLoadAdUrls", "()Ljava/util/List;", "getMediationName$annotations", "getMediationName", "getNotification$annotations", "getNotification", "getShowClose$annotations", "getShowClose", "getShowCloseIncentivized$annotations", "getShowCloseIncentivized", "getSleep$annotations", "getSleep", "getTemplateHeartbeatCheck$annotations", "getTemplateHeartbeatCheck", "getTemplateSettings$annotations", "getTemplateSettings", "()Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;", "getTemplateType$annotations", "getTemplateType", "getTemplateURL$annotations", "getTemplateURL", "getTpat$annotations", "getTpat", "()Ljava/util/Map;", "getViewAbility$annotations", "getViewAbility", "()Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;", "getVmURL$annotations", "getVmURL", "getVmVersion$annotations", "getVmVersion", "getWebViewSettings$annotations", "getWebViewSettings", "()Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$AdSizeInfo;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class AdUnit {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean adLoadOptimizationEnabled;
        @Nullable
        private final String adMarketId;
        @Nullable
        private final AdSizeInfo adSizeInfo;
        @Nullable
        private final String adSource;
        @Nullable
        private final String adType;
        @Nullable
        private final String advAppId;
        @Nullable
        private final Boolean clickCoordinatesEnabled;
        @Nullable
        private final String creativeId;
        @Nullable
        private final String deeplinkUrl;
        @Nullable
        private final Integer errorCode;
        @Nullable
        private final Integer expiry;
        @Nullable
        private final String id;
        @Nullable
        private final String info;
        @Nullable
        private final Boolean isCacheableAssetsRequired;
        @Nullable
        private final List<String> loadAdUrls;
        @Nullable
        private final String mediationName;
        @Nullable
        private final List<String> notification;
        @Nullable
        private final Integer showClose;
        @Nullable
        private final Integer showCloseIncentivized;
        @Nullable
        private final Integer sleep;
        @Nullable
        private final Boolean templateHeartbeatCheck;
        @Nullable
        private final TemplateSettings templateSettings;
        @Nullable
        private final String templateType;
        @Nullable
        private final String templateURL;
        @Nullable
        private final Map<String, List<String>> tpat;
        @Nullable
        private final ViewAbility viewAbility;
        @Nullable
        private final String vmURL;
        @Nullable
        private final String vmVersion;
        @Nullable
        private final WebViewSettings webViewSettings;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$AdUnit$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdUnit> serializer() {
                return AdPayload$AdUnit$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdUnit() {
            this((String) null, (String) null, (String) null, (Integer) null, (String) null, (Boolean) null, (Boolean) null, (Boolean) null, (String) null, (String) null, (Integer) null, (Integer) null, (Map) null, (String) null, (String) null, (String) null, (List) null, (List) null, (ViewAbility) null, (String) null, (String) null, (TemplateSettings) null, (String) null, (String) null, (Integer) null, (Integer) null, (AdSizeInfo) null, (Boolean) null, (WebViewSettings) null, 536870911, (DefaultConstructorMarker) null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AdUnit copy$default(AdUnit adUnit, String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map map, String str7, String str8, String str9, List list, List list2, ViewAbility viewAbility, String str10, String str11, TemplateSettings templateSettings, String str12, String str13, Integer num4, Integer num5, AdSizeInfo adSizeInfo, Boolean bool4, WebViewSettings webViewSettings, int i, Object obj) {
            WebViewSettings webViewSettings2;
            Boolean bool5;
            String str14 = (i & 1) != 0 ? adUnit.id : str;
            String str15 = (i & 2) != 0 ? adUnit.adType : str2;
            String str16 = (i & 4) != 0 ? adUnit.adSource : str3;
            Integer num6 = (i & 8) != 0 ? adUnit.expiry : num;
            String str17 = (i & 16) != 0 ? adUnit.deeplinkUrl : str4;
            Boolean bool6 = (i & 32) != 0 ? adUnit.clickCoordinatesEnabled : bool;
            Boolean bool7 = (i & 64) != 0 ? adUnit.adLoadOptimizationEnabled : bool2;
            Boolean bool8 = (i & 128) != 0 ? adUnit.templateHeartbeatCheck : bool3;
            String str18 = (i & 256) != 0 ? adUnit.mediationName : str5;
            String str19 = (i & 512) != 0 ? adUnit.info : str6;
            Integer num7 = (i & 1024) != 0 ? adUnit.sleep : num2;
            Integer num8 = (i & 2048) != 0 ? adUnit.errorCode : num3;
            Map<String, List<String>> map2 = (i & 4096) != 0 ? adUnit.tpat : map;
            String str20 = (i & 8192) != 0 ? adUnit.vmURL : str7;
            String str21 = str14;
            String str22 = (i & 16384) != 0 ? adUnit.vmVersion : str8;
            String str23 = (i & 32768) != 0 ? adUnit.adMarketId : str9;
            List<String> list3 = (i & 65536) != 0 ? adUnit.notification : list;
            List<String> list4 = (i & 131072) != 0 ? adUnit.loadAdUrls : list2;
            ViewAbility viewAbility2 = (i & 262144) != 0 ? adUnit.viewAbility : viewAbility;
            String str24 = (i & 524288) != 0 ? adUnit.templateURL : str10;
            String str25 = (i & 1048576) != 0 ? adUnit.templateType : str11;
            TemplateSettings templateSettings2 = (i & 2097152) != 0 ? adUnit.templateSettings : templateSettings;
            String str26 = (i & 4194304) != 0 ? adUnit.creativeId : str12;
            String str27 = (i & 8388608) != 0 ? adUnit.advAppId : str13;
            Integer num9 = (i & 16777216) != 0 ? adUnit.showClose : num4;
            Integer num10 = (i & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? adUnit.showCloseIncentivized : num5;
            AdSizeInfo adSizeInfo2 = (i & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? adUnit.adSizeInfo : adSizeInfo;
            Boolean bool9 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? adUnit.isCacheableAssetsRequired : bool4;
            if ((i & 268435456) != 0) {
                bool5 = bool9;
                webViewSettings2 = adUnit.webViewSettings;
            } else {
                webViewSettings2 = webViewSettings;
                bool5 = bool9;
            }
            return adUnit.copy(str21, str15, str16, num6, str17, bool6, bool7, bool8, str18, str19, num7, num8, map2, str20, str22, str23, list3, list4, viewAbility2, str24, str25, templateSettings2, str26, str27, num9, num10, adSizeInfo2, bool5, webViewSettings2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull AdUnit adUnit, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            Integer num;
            Integer num2;
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || adUnit.id != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, adUnit.id);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || adUnit.adType != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, adUnit.adType);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || adUnit.adSource != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, adUnit.adSource);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || adUnit.expiry != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, IntSerializer.INSTANCE, adUnit.expiry);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || adUnit.deeplinkUrl != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, adUnit.deeplinkUrl);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || adUnit.clickCoordinatesEnabled != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, BooleanSerializer.INSTANCE, adUnit.clickCoordinatesEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || adUnit.adLoadOptimizationEnabled != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, BooleanSerializer.INSTANCE, adUnit.adLoadOptimizationEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || adUnit.templateHeartbeatCheck != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, BooleanSerializer.INSTANCE, adUnit.templateHeartbeatCheck);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || adUnit.mediationName != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, adUnit.mediationName);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || adUnit.info != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, adUnit.info);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) || adUnit.sleep != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, IntSerializer.INSTANCE, adUnit.sleep);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 11) || adUnit.errorCode != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 11, IntSerializer.INSTANCE, adUnit.errorCode);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 12) || adUnit.tpat != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 12, TpatSerializer.INSTANCE, adUnit.tpat);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 13) || adUnit.vmURL != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 13, StringSerializer.INSTANCE, adUnit.vmURL);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 14) || adUnit.vmVersion != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 14, StringSerializer.INSTANCE, adUnit.vmVersion);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 15) || adUnit.adMarketId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 15, StringSerializer.INSTANCE, adUnit.adMarketId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 16) || adUnit.notification != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 16, new ArrayListSerializer(StringSerializer.INSTANCE), adUnit.notification);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 17) || adUnit.loadAdUrls != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 17, new ArrayListSerializer(StringSerializer.INSTANCE), adUnit.loadAdUrls);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 18) || adUnit.viewAbility != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 18, AdPayload$ViewAbility$$serializer.INSTANCE, adUnit.viewAbility);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 19) || adUnit.templateURL != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 19, StringSerializer.INSTANCE, adUnit.templateURL);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 20) || adUnit.templateType != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 20, StringSerializer.INSTANCE, adUnit.templateType);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 21) || adUnit.templateSettings != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 21, AdPayload$TemplateSettings$$serializer.INSTANCE, adUnit.templateSettings);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 22) || adUnit.creativeId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 22, StringSerializer.INSTANCE, adUnit.creativeId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 23) || adUnit.advAppId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 23, StringSerializer.INSTANCE, adUnit.advAppId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 24) || (num2 = adUnit.showClose) == null || num2.intValue() != 0) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 24, IntSerializer.INSTANCE, adUnit.showClose);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 25) || (num = adUnit.showCloseIncentivized) == null || num.intValue() != 0) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 25, IntSerializer.INSTANCE, adUnit.showCloseIncentivized);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 26) || adUnit.adSizeInfo != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 26, AdPayload$AdSizeInfo$$serializer.INSTANCE, adUnit.adSizeInfo);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 27) || adUnit.isCacheableAssetsRequired != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 27, BooleanSerializer.INSTANCE, adUnit.isCacheableAssetsRequired);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 28) || adUnit.webViewSettings != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 28, AdPayload$WebViewSettings$$serializer.INSTANCE, adUnit.webViewSettings);
            }
        }

        @Nullable
        public final String component1() {
            return this.id;
        }

        @Nullable
        public final String component10() {
            return this.info;
        }

        @Nullable
        public final Integer component11() {
            return this.sleep;
        }

        @Nullable
        public final Integer component12() {
            return this.errorCode;
        }

        @Nullable
        public final Map<String, List<String>> component13() {
            return this.tpat;
        }

        @Nullable
        public final String component14() {
            return this.vmURL;
        }

        @Nullable
        public final String component15() {
            return this.vmVersion;
        }

        @Nullable
        public final String component16() {
            return this.adMarketId;
        }

        @Nullable
        public final List<String> component17() {
            return this.notification;
        }

        @Nullable
        public final List<String> component18() {
            return this.loadAdUrls;
        }

        @Nullable
        public final ViewAbility component19() {
            return this.viewAbility;
        }

        @Nullable
        public final String component2() {
            return this.adType;
        }

        @Nullable
        public final String component20() {
            return this.templateURL;
        }

        @Nullable
        public final String component21() {
            return this.templateType;
        }

        @Nullable
        public final TemplateSettings component22() {
            return this.templateSettings;
        }

        @Nullable
        public final String component23() {
            return this.creativeId;
        }

        @Nullable
        public final String component24() {
            return this.advAppId;
        }

        @Nullable
        public final Integer component25() {
            return this.showClose;
        }

        @Nullable
        public final Integer component26() {
            return this.showCloseIncentivized;
        }

        @Nullable
        public final AdSizeInfo component27() {
            return this.adSizeInfo;
        }

        @Nullable
        public final Boolean component28() {
            return this.isCacheableAssetsRequired;
        }

        @Nullable
        public final WebViewSettings component29() {
            return this.webViewSettings;
        }

        @Nullable
        public final String component3() {
            return this.adSource;
        }

        @Nullable
        public final Integer component4() {
            return this.expiry;
        }

        @Nullable
        public final String component5() {
            return this.deeplinkUrl;
        }

        @Nullable
        public final Boolean component6() {
            return this.clickCoordinatesEnabled;
        }

        @Nullable
        public final Boolean component7() {
            return this.adLoadOptimizationEnabled;
        }

        @Nullable
        public final Boolean component8() {
            return this.templateHeartbeatCheck;
        }

        @Nullable
        public final String component9() {
            return this.mediationName;
        }

        @NotNull
        public final AdUnit copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable String str5, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable Map<String, ? extends List<String>> map, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ViewAbility viewAbility, @Nullable String str10, @Nullable String str11, @Nullable TemplateSettings templateSettings, @Nullable String str12, @Nullable String str13, @Nullable Integer num4, @Nullable Integer num5, @Nullable AdSizeInfo adSizeInfo, @Nullable Boolean bool4, @Nullable WebViewSettings webViewSettings) {
            return new AdUnit(str, str2, str3, num, str4, bool, bool2, bool3, str5, str6, num2, num3, map, str7, str8, str9, list, list2, viewAbility, str10, str11, templateSettings, str12, str13, num4, num5, adSizeInfo, bool4, webViewSettings);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdUnit)) {
                return false;
            }
            AdUnit adUnit = (AdUnit) obj;
            if (Intrinsics.areEqual(this.id, adUnit.id) && Intrinsics.areEqual(this.adType, adUnit.adType) && Intrinsics.areEqual(this.adSource, adUnit.adSource) && Intrinsics.areEqual(this.expiry, adUnit.expiry) && Intrinsics.areEqual(this.deeplinkUrl, adUnit.deeplinkUrl) && Intrinsics.areEqual(this.clickCoordinatesEnabled, adUnit.clickCoordinatesEnabled) && Intrinsics.areEqual(this.adLoadOptimizationEnabled, adUnit.adLoadOptimizationEnabled) && Intrinsics.areEqual(this.templateHeartbeatCheck, adUnit.templateHeartbeatCheck) && Intrinsics.areEqual(this.mediationName, adUnit.mediationName) && Intrinsics.areEqual(this.info, adUnit.info) && Intrinsics.areEqual(this.sleep, adUnit.sleep) && Intrinsics.areEqual(this.errorCode, adUnit.errorCode) && Intrinsics.areEqual(this.tpat, adUnit.tpat) && Intrinsics.areEqual(this.vmURL, adUnit.vmURL) && Intrinsics.areEqual(this.vmVersion, adUnit.vmVersion) && Intrinsics.areEqual(this.adMarketId, adUnit.adMarketId) && Intrinsics.areEqual(this.notification, adUnit.notification) && Intrinsics.areEqual(this.loadAdUrls, adUnit.loadAdUrls) && Intrinsics.areEqual(this.viewAbility, adUnit.viewAbility) && Intrinsics.areEqual(this.templateURL, adUnit.templateURL) && Intrinsics.areEqual(this.templateType, adUnit.templateType) && Intrinsics.areEqual(this.templateSettings, adUnit.templateSettings) && Intrinsics.areEqual(this.creativeId, adUnit.creativeId) && Intrinsics.areEqual(this.advAppId, adUnit.advAppId) && Intrinsics.areEqual(this.showClose, adUnit.showClose) && Intrinsics.areEqual(this.showCloseIncentivized, adUnit.showCloseIncentivized) && Intrinsics.areEqual(this.adSizeInfo, adUnit.adSizeInfo) && Intrinsics.areEqual(this.isCacheableAssetsRequired, adUnit.isCacheableAssetsRequired) && Intrinsics.areEqual(this.webViewSettings, adUnit.webViewSettings)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Boolean getAdLoadOptimizationEnabled() {
            return this.adLoadOptimizationEnabled;
        }

        @Nullable
        public final String getAdMarketId() {
            return this.adMarketId;
        }

        @Nullable
        public final AdSizeInfo getAdSizeInfo() {
            return this.adSizeInfo;
        }

        @Nullable
        public final String getAdSource() {
            return this.adSource;
        }

        @Nullable
        public final String getAdType() {
            return this.adType;
        }

        @Nullable
        public final String getAdvAppId() {
            return this.advAppId;
        }

        @Nullable
        public final Boolean getClickCoordinatesEnabled() {
            return this.clickCoordinatesEnabled;
        }

        @Nullable
        public final String getCreativeId() {
            return this.creativeId;
        }

        @Nullable
        public final String getDeeplinkUrl() {
            return this.deeplinkUrl;
        }

        @Nullable
        public final Integer getErrorCode() {
            return this.errorCode;
        }

        @Nullable
        public final Integer getExpiry() {
            return this.expiry;
        }

        @Nullable
        public final String getId() {
            return this.id;
        }

        @Nullable
        public final String getInfo() {
            return this.info;
        }

        @Nullable
        public final List<String> getLoadAdUrls() {
            return this.loadAdUrls;
        }

        @Nullable
        public final String getMediationName() {
            return this.mediationName;
        }

        @Nullable
        public final List<String> getNotification() {
            return this.notification;
        }

        @Nullable
        public final Integer getShowClose() {
            return this.showClose;
        }

        @Nullable
        public final Integer getShowCloseIncentivized() {
            return this.showCloseIncentivized;
        }

        @Nullable
        public final Integer getSleep() {
            return this.sleep;
        }

        @Nullable
        public final Boolean getTemplateHeartbeatCheck() {
            return this.templateHeartbeatCheck;
        }

        @Nullable
        public final TemplateSettings getTemplateSettings() {
            return this.templateSettings;
        }

        @Nullable
        public final String getTemplateType() {
            return this.templateType;
        }

        @Nullable
        public final String getTemplateURL() {
            return this.templateURL;
        }

        @Nullable
        public final Map<String, List<String>> getTpat() {
            return this.tpat;
        }

        @Nullable
        public final ViewAbility getViewAbility() {
            return this.viewAbility;
        }

        @Nullable
        public final String getVmURL() {
            return this.vmURL;
        }

        @Nullable
        public final String getVmVersion() {
            return this.vmVersion;
        }

        @Nullable
        public final WebViewSettings getWebViewSettings() {
            return this.webViewSettings;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int hashCode9;
            int hashCode10;
            int hashCode11;
            int hashCode12;
            int hashCode13;
            int hashCode14;
            int hashCode15;
            int hashCode16;
            int hashCode17;
            int hashCode18;
            int hashCode19;
            int hashCode20;
            int hashCode21;
            int hashCode22;
            int hashCode23;
            int hashCode24;
            int hashCode25;
            int hashCode26;
            int hashCode27;
            int hashCode28;
            String str = this.id;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            String str2 = this.adType;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            String str3 = this.adSource;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            Integer num = this.expiry;
            if (num == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = num.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            String str4 = this.deeplinkUrl;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i6 = (i5 + hashCode5) * 31;
            Boolean bool = this.clickCoordinatesEnabled;
            if (bool == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = bool.hashCode();
            }
            int i7 = (i6 + hashCode6) * 31;
            Boolean bool2 = this.adLoadOptimizationEnabled;
            if (bool2 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = bool2.hashCode();
            }
            int i8 = (i7 + hashCode7) * 31;
            Boolean bool3 = this.templateHeartbeatCheck;
            if (bool3 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = bool3.hashCode();
            }
            int i9 = (i8 + hashCode8) * 31;
            String str5 = this.mediationName;
            if (str5 == null) {
                hashCode9 = 0;
            } else {
                hashCode9 = str5.hashCode();
            }
            int i10 = (i9 + hashCode9) * 31;
            String str6 = this.info;
            if (str6 == null) {
                hashCode10 = 0;
            } else {
                hashCode10 = str6.hashCode();
            }
            int i11 = (i10 + hashCode10) * 31;
            Integer num2 = this.sleep;
            if (num2 == null) {
                hashCode11 = 0;
            } else {
                hashCode11 = num2.hashCode();
            }
            int i12 = (i11 + hashCode11) * 31;
            Integer num3 = this.errorCode;
            if (num3 == null) {
                hashCode12 = 0;
            } else {
                hashCode12 = num3.hashCode();
            }
            int i13 = (i12 + hashCode12) * 31;
            Map<String, List<String>> map = this.tpat;
            if (map == null) {
                hashCode13 = 0;
            } else {
                hashCode13 = map.hashCode();
            }
            int i14 = (i13 + hashCode13) * 31;
            String str7 = this.vmURL;
            if (str7 == null) {
                hashCode14 = 0;
            } else {
                hashCode14 = str7.hashCode();
            }
            int i15 = (i14 + hashCode14) * 31;
            String str8 = this.vmVersion;
            if (str8 == null) {
                hashCode15 = 0;
            } else {
                hashCode15 = str8.hashCode();
            }
            int i16 = (i15 + hashCode15) * 31;
            String str9 = this.adMarketId;
            if (str9 == null) {
                hashCode16 = 0;
            } else {
                hashCode16 = str9.hashCode();
            }
            int i17 = (i16 + hashCode16) * 31;
            List<String> list = this.notification;
            if (list == null) {
                hashCode17 = 0;
            } else {
                hashCode17 = list.hashCode();
            }
            int i18 = (i17 + hashCode17) * 31;
            List<String> list2 = this.loadAdUrls;
            if (list2 == null) {
                hashCode18 = 0;
            } else {
                hashCode18 = list2.hashCode();
            }
            int i19 = (i18 + hashCode18) * 31;
            ViewAbility viewAbility = this.viewAbility;
            if (viewAbility == null) {
                hashCode19 = 0;
            } else {
                hashCode19 = viewAbility.hashCode();
            }
            int i20 = (i19 + hashCode19) * 31;
            String str10 = this.templateURL;
            if (str10 == null) {
                hashCode20 = 0;
            } else {
                hashCode20 = str10.hashCode();
            }
            int i21 = (i20 + hashCode20) * 31;
            String str11 = this.templateType;
            if (str11 == null) {
                hashCode21 = 0;
            } else {
                hashCode21 = str11.hashCode();
            }
            int i22 = (i21 + hashCode21) * 31;
            TemplateSettings templateSettings = this.templateSettings;
            if (templateSettings == null) {
                hashCode22 = 0;
            } else {
                hashCode22 = templateSettings.hashCode();
            }
            int i23 = (i22 + hashCode22) * 31;
            String str12 = this.creativeId;
            if (str12 == null) {
                hashCode23 = 0;
            } else {
                hashCode23 = str12.hashCode();
            }
            int i24 = (i23 + hashCode23) * 31;
            String str13 = this.advAppId;
            if (str13 == null) {
                hashCode24 = 0;
            } else {
                hashCode24 = str13.hashCode();
            }
            int i25 = (i24 + hashCode24) * 31;
            Integer num4 = this.showClose;
            if (num4 == null) {
                hashCode25 = 0;
            } else {
                hashCode25 = num4.hashCode();
            }
            int i26 = (i25 + hashCode25) * 31;
            Integer num5 = this.showCloseIncentivized;
            if (num5 == null) {
                hashCode26 = 0;
            } else {
                hashCode26 = num5.hashCode();
            }
            int i27 = (i26 + hashCode26) * 31;
            AdSizeInfo adSizeInfo = this.adSizeInfo;
            if (adSizeInfo == null) {
                hashCode27 = 0;
            } else {
                hashCode27 = adSizeInfo.hashCode();
            }
            int i28 = (i27 + hashCode27) * 31;
            Boolean bool4 = this.isCacheableAssetsRequired;
            if (bool4 == null) {
                hashCode28 = 0;
            } else {
                hashCode28 = bool4.hashCode();
            }
            int i29 = (i28 + hashCode28) * 31;
            WebViewSettings webViewSettings = this.webViewSettings;
            if (webViewSettings != null) {
                i = webViewSettings.hashCode();
            }
            return i29 + i;
        }

        @Nullable
        public final Boolean isCacheableAssetsRequired() {
            return this.isCacheableAssetsRequired;
        }

        @NotNull
        public String toString() {
            return "AdUnit(id=" + this.id + ", adType=" + this.adType + ", adSource=" + this.adSource + ", expiry=" + this.expiry + ", deeplinkUrl=" + this.deeplinkUrl + ", clickCoordinatesEnabled=" + this.clickCoordinatesEnabled + ", adLoadOptimizationEnabled=" + this.adLoadOptimizationEnabled + ", templateHeartbeatCheck=" + this.templateHeartbeatCheck + ", mediationName=" + this.mediationName + ", info=" + this.info + ", sleep=" + this.sleep + ", errorCode=" + this.errorCode + ", tpat=" + this.tpat + ", vmURL=" + this.vmURL + ", vmVersion=" + this.vmVersion + ", adMarketId=" + this.adMarketId + ", notification=" + this.notification + ", loadAdUrls=" + this.loadAdUrls + ", viewAbility=" + this.viewAbility + ", templateURL=" + this.templateURL + ", templateType=" + this.templateType + ", templateSettings=" + this.templateSettings + ", creativeId=" + this.creativeId + ", advAppId=" + this.advAppId + ", showClose=" + this.showClose + ", showCloseIncentivized=" + this.showCloseIncentivized + ", adSizeInfo=" + this.adSizeInfo + ", isCacheableAssetsRequired=" + this.isCacheableAssetsRequired + ", webViewSettings=" + this.webViewSettings + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ AdUnit(int i, @SerialName("id") String str, @SerialName("ad_type") String str2, @SerialName("ad_source") String str3, @SerialName("expiry") Integer num, @SerialName("deeplink_url") String str4, @SerialName("click_coordinates_enabled") Boolean bool, @SerialName("ad_load_optimization") Boolean bool2, @SerialName("template_heartbeat_check") Boolean bool3, @SerialName("mediation_name") String str5, @SerialName("info") String str6, @SerialName("sleep") Integer num2, @SerialName("error_code") Integer num3, @Serializable(with = TpatSerializer.class) Map map, @SerialName("vm_url") String str7, @SerialName("vm_version") String str8, @SerialName("ad_market_id") String str9, @SerialName("notification") List list, @SerialName("load_ad") List list2, @SerialName("viewability") ViewAbility viewAbility, @SerialName("template_url") String str10, @SerialName("template_type") String str11, @SerialName("template_settings") TemplateSettings templateSettings, @SerialName("creative_id") String str12, @SerialName("app_id") String str13, @SerialName("show_close") Integer num4, @SerialName("show_close_incentivized") Integer num5, @SerialName("ad_size") AdSizeInfo adSizeInfo, @SerialName("cacheable_assets_required") Boolean bool4, @SerialName("webview_settings") WebViewSettings webViewSettings, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.id = null;
            } else {
                this.id = str;
            }
            if ((i & 2) == 0) {
                this.adType = null;
            } else {
                this.adType = str2;
            }
            if ((i & 4) == 0) {
                this.adSource = null;
            } else {
                this.adSource = str3;
            }
            if ((i & 8) == 0) {
                this.expiry = null;
            } else {
                this.expiry = num;
            }
            if ((i & 16) == 0) {
                this.deeplinkUrl = null;
            } else {
                this.deeplinkUrl = str4;
            }
            if ((i & 32) == 0) {
                this.clickCoordinatesEnabled = null;
            } else {
                this.clickCoordinatesEnabled = bool;
            }
            if ((i & 64) == 0) {
                this.adLoadOptimizationEnabled = null;
            } else {
                this.adLoadOptimizationEnabled = bool2;
            }
            if ((i & 128) == 0) {
                this.templateHeartbeatCheck = null;
            } else {
                this.templateHeartbeatCheck = bool3;
            }
            if ((i & 256) == 0) {
                this.mediationName = null;
            } else {
                this.mediationName = str5;
            }
            if ((i & 512) == 0) {
                this.info = null;
            } else {
                this.info = str6;
            }
            if ((i & 1024) == 0) {
                this.sleep = null;
            } else {
                this.sleep = num2;
            }
            if ((i & 2048) == 0) {
                this.errorCode = null;
            } else {
                this.errorCode = num3;
            }
            if ((i & 4096) == 0) {
                this.tpat = null;
            } else {
                this.tpat = map;
            }
            if ((i & 8192) == 0) {
                this.vmURL = null;
            } else {
                this.vmURL = str7;
            }
            if ((i & 16384) == 0) {
                this.vmVersion = null;
            } else {
                this.vmVersion = str8;
            }
            if ((32768 & i) == 0) {
                this.adMarketId = null;
            } else {
                this.adMarketId = str9;
            }
            if ((65536 & i) == 0) {
                this.notification = null;
            } else {
                this.notification = list;
            }
            if ((131072 & i) == 0) {
                this.loadAdUrls = null;
            } else {
                this.loadAdUrls = list2;
            }
            if ((262144 & i) == 0) {
                this.viewAbility = null;
            } else {
                this.viewAbility = viewAbility;
            }
            if ((524288 & i) == 0) {
                this.templateURL = null;
            } else {
                this.templateURL = str10;
            }
            if ((1048576 & i) == 0) {
                this.templateType = null;
            } else {
                this.templateType = str11;
            }
            if ((2097152 & i) == 0) {
                this.templateSettings = null;
            } else {
                this.templateSettings = templateSettings;
            }
            if ((4194304 & i) == 0) {
                this.creativeId = null;
            } else {
                this.creativeId = str12;
            }
            if ((8388608 & i) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str13;
            }
            this.showClose = (16777216 & i) == 0 ? 0 : num4;
            this.showCloseIncentivized = (33554432 & i) == 0 ? 0 : num5;
            if ((67108864 & i) == 0) {
                this.adSizeInfo = null;
            } else {
                this.adSizeInfo = adSizeInfo;
            }
            if ((134217728 & i) == 0) {
                this.isCacheableAssetsRequired = null;
            } else {
                this.isCacheableAssetsRequired = bool4;
            }
            if ((i & 268435456) == 0) {
                this.webViewSettings = null;
            } else {
                this.webViewSettings = webViewSettings;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AdUnit(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable String str5, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable Map<String, ? extends List<String>> map, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ViewAbility viewAbility, @Nullable String str10, @Nullable String str11, @Nullable TemplateSettings templateSettings, @Nullable String str12, @Nullable String str13, @Nullable Integer num4, @Nullable Integer num5, @Nullable AdSizeInfo adSizeInfo, @Nullable Boolean bool4, @Nullable WebViewSettings webViewSettings) {
            this.id = str;
            this.adType = str2;
            this.adSource = str3;
            this.expiry = num;
            this.deeplinkUrl = str4;
            this.clickCoordinatesEnabled = bool;
            this.adLoadOptimizationEnabled = bool2;
            this.templateHeartbeatCheck = bool3;
            this.mediationName = str5;
            this.info = str6;
            this.sleep = num2;
            this.errorCode = num3;
            this.tpat = map;
            this.vmURL = str7;
            this.vmVersion = str8;
            this.adMarketId = str9;
            this.notification = list;
            this.loadAdUrls = list2;
            this.viewAbility = viewAbility;
            this.templateURL = str10;
            this.templateType = str11;
            this.templateSettings = templateSettings;
            this.creativeId = str12;
            this.advAppId = str13;
            this.showClose = num4;
            this.showCloseIncentivized = num5;
            this.adSizeInfo = adSizeInfo;
            this.isCacheableAssetsRequired = bool4;
            this.webViewSettings = webViewSettings;
        }

        @SerialName("ad_load_optimization")
        public static /* synthetic */ void getAdLoadOptimizationEnabled$annotations() {
        }

        @SerialName("ad_market_id")
        public static /* synthetic */ void getAdMarketId$annotations() {
        }

        @SerialName("ad_size")
        public static /* synthetic */ void getAdSizeInfo$annotations() {
        }

        @SerialName(FirebaseAnalytics.Param.AD_SOURCE)
        public static /* synthetic */ void getAdSource$annotations() {
        }

        @SerialName("ad_type")
        public static /* synthetic */ void getAdType$annotations() {
        }

        @SerialName("app_id")
        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        @SerialName("click_coordinates_enabled")
        public static /* synthetic */ void getClickCoordinatesEnabled$annotations() {
        }

        @SerialName(CampaignEx.JSON_KEY_CREATIVE_ID)
        public static /* synthetic */ void getCreativeId$annotations() {
        }

        @SerialName("deeplink_url")
        public static /* synthetic */ void getDeeplinkUrl$annotations() {
        }

        @SerialName("error_code")
        public static /* synthetic */ void getErrorCode$annotations() {
        }

        @SerialName("expiry")
        public static /* synthetic */ void getExpiry$annotations() {
        }

        @SerialName("id")
        public static /* synthetic */ void getId$annotations() {
        }

        @SerialName("info")
        public static /* synthetic */ void getInfo$annotations() {
        }

        @SerialName(Constants.LOAD_AD)
        public static /* synthetic */ void getLoadAdUrls$annotations() {
        }

        @SerialName("mediation_name")
        public static /* synthetic */ void getMediationName$annotations() {
        }

        @SerialName("notification")
        public static /* synthetic */ void getNotification$annotations() {
        }

        @SerialName("show_close")
        public static /* synthetic */ void getShowClose$annotations() {
        }

        @SerialName("show_close_incentivized")
        public static /* synthetic */ void getShowCloseIncentivized$annotations() {
        }

        @SerialName("sleep")
        public static /* synthetic */ void getSleep$annotations() {
        }

        @SerialName("template_heartbeat_check")
        public static /* synthetic */ void getTemplateHeartbeatCheck$annotations() {
        }

        @SerialName("template_settings")
        public static /* synthetic */ void getTemplateSettings$annotations() {
        }

        @SerialName("template_type")
        public static /* synthetic */ void getTemplateType$annotations() {
        }

        @SerialName("template_url")
        public static /* synthetic */ void getTemplateURL$annotations() {
        }

        @Serializable(with = TpatSerializer.class)
        public static /* synthetic */ void getTpat$annotations() {
        }

        @SerialName("viewability")
        public static /* synthetic */ void getViewAbility$annotations() {
        }

        @SerialName("vm_url")
        public static /* synthetic */ void getVmURL$annotations() {
        }

        @SerialName("vm_version")
        public static /* synthetic */ void getVmVersion$annotations() {
        }

        @SerialName("webview_settings")
        public static /* synthetic */ void getWebViewSettings$annotations() {
        }

        @SerialName("cacheable_assets_required")
        public static /* synthetic */ void isCacheableAssetsRequired$annotations() {
        }

        public /* synthetic */ AdUnit(String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map map, String str7, String str8, String str9, List list, List list2, ViewAbility viewAbility, String str10, String str11, TemplateSettings templateSettings, String str12, String str13, Integer num4, Integer num5, AdSizeInfo adSizeInfo, Boolean bool4, WebViewSettings webViewSettings, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : bool2, (i & 128) != 0 ? null : bool3, (i & 256) != 0 ? null : str5, (i & 512) != 0 ? null : str6, (i & 1024) != 0 ? null : num2, (i & 2048) != 0 ? null : num3, (i & 4096) != 0 ? null : map, (i & 8192) != 0 ? null : str7, (i & 16384) != 0 ? null : str8, (i & 32768) != 0 ? null : str9, (i & 65536) != 0 ? null : list, (i & 131072) != 0 ? null : list2, (i & 262144) != 0 ? null : viewAbility, (i & 524288) != 0 ? null : str10, (i & 1048576) != 0 ? null : str11, (i & 2097152) != 0 ? null : templateSettings, (i & 4194304) != 0 ? null : str12, (i & 8388608) != 0 ? null : str13, (i & 16777216) != 0 ? 0 : num4, (i & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? 0 : num5, (i & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? null : adSizeInfo, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? null : bool4, (i & 268435456) != 0 ? null : webViewSettings);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002#$B7\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB)\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0010J2\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001J!\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"HÇ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006%"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;", "", "seen1", "", "url", "", "extension", "required", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getExtension", "()Ljava/lang/String;", "getRequired", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getUrl", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class CacheableReplacement {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String extension;
        @Nullable
        private final Boolean required;
        @Nullable
        private final String url;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<CacheableReplacement> serializer() {
                return AdPayload$CacheableReplacement$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public CacheableReplacement() {
            this((String) null, (String) null, (Boolean) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ CacheableReplacement copy$default(CacheableReplacement cacheableReplacement, String str, String str2, Boolean bool, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cacheableReplacement.url;
            }
            if ((i & 2) != 0) {
                str2 = cacheableReplacement.extension;
            }
            if ((i & 4) != 0) {
                bool = cacheableReplacement.required;
            }
            return cacheableReplacement.copy(str, str2, bool);
        }

        @JvmStatic
        public static final void write$Self(@NotNull CacheableReplacement cacheableReplacement, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || cacheableReplacement.url != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, cacheableReplacement.url);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || cacheableReplacement.extension != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, cacheableReplacement.extension);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || cacheableReplacement.required != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, BooleanSerializer.INSTANCE, cacheableReplacement.required);
            }
        }

        @Nullable
        public final String component1() {
            return this.url;
        }

        @Nullable
        public final String component2() {
            return this.extension;
        }

        @Nullable
        public final Boolean component3() {
            return this.required;
        }

        @NotNull
        public final CacheableReplacement copy(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
            return new CacheableReplacement(str, str2, bool);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheableReplacement)) {
                return false;
            }
            CacheableReplacement cacheableReplacement = (CacheableReplacement) obj;
            if (Intrinsics.areEqual(this.url, cacheableReplacement.url) && Intrinsics.areEqual(this.extension, cacheableReplacement.extension) && Intrinsics.areEqual(this.required, cacheableReplacement.required)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getExtension() {
            return this.extension;
        }

        @Nullable
        public final Boolean getRequired() {
            return this.required;
        }

        @Nullable
        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String str = this.url;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            String str2 = this.extension;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            Boolean bool = this.required;
            if (bool != null) {
                i = bool.hashCode();
            }
            return i3 + i;
        }

        @NotNull
        public String toString() {
            return "CacheableReplacement(url=" + this.url + ", extension=" + this.extension + ", required=" + this.required + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ CacheableReplacement(int i, String str, String str2, Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.url = null;
            } else {
                this.url = str;
            }
            if ((i & 2) == 0) {
                this.extension = null;
            } else {
                this.extension = str2;
            }
            if ((i & 4) == 0) {
                this.required = null;
            } else {
                this.required = bool;
            }
        }

        public CacheableReplacement(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
            this.url = str;
            this.extension = str2;
            this.required = bool;
        }

        public /* synthetic */ CacheableReplacement(String str, String str2, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : bool);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eHÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$Companion;", "", "()V", "FILE_SCHEME", "", AdPayload.INCENTIVIZED_BODY_TEXT, AdPayload.INCENTIVIZED_CLOSE_TEXT, AdPayload.INCENTIVIZED_CONTINUE_TEXT, AdPayload.INCENTIVIZED_TITLE_TEXT, "KEY_TEMPLATE", "KEY_VM", "TPAT_CLICK_COORDINATES_URLS", "UNKNOWN", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<AdPayload> serializer() {
            return AdPayload$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J!\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÇ\u0001R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006$"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit;", "", "seen1", "", "placementReferenceId", "", LegacyLoadUseCase.KEY_AD_MARKUP, "Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$AdUnit;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)V", "getAdMarkup$annotations", "()V", "getAdMarkup", "()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;", "getPlacementReferenceId$annotations", "getPlacementReferenceId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class PlacementAdUnit {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final AdUnit adMarkup;
        @Nullable
        private final String placementReferenceId;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<PlacementAdUnit> serializer() {
                return AdPayload$PlacementAdUnit$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public PlacementAdUnit() {
            this((String) null, (AdUnit) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ PlacementAdUnit copy$default(PlacementAdUnit placementAdUnit, String str, AdUnit adUnit, int i, Object obj) {
            if ((i & 1) != 0) {
                str = placementAdUnit.placementReferenceId;
            }
            if ((i & 2) != 0) {
                adUnit = placementAdUnit.adMarkup;
            }
            return placementAdUnit.copy(str, adUnit);
        }

        @JvmStatic
        public static final void write$Self(@NotNull PlacementAdUnit placementAdUnit, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || placementAdUnit.placementReferenceId != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, placementAdUnit.placementReferenceId);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || placementAdUnit.adMarkup != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, AdPayload$AdUnit$$serializer.INSTANCE, placementAdUnit.adMarkup);
            }
        }

        @Nullable
        public final String component1() {
            return this.placementReferenceId;
        }

        @Nullable
        public final AdUnit component2() {
            return this.adMarkup;
        }

        @NotNull
        public final PlacementAdUnit copy(@Nullable String str, @Nullable AdUnit adUnit) {
            return new PlacementAdUnit(str, adUnit);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlacementAdUnit)) {
                return false;
            }
            PlacementAdUnit placementAdUnit = (PlacementAdUnit) obj;
            if (Intrinsics.areEqual(this.placementReferenceId, placementAdUnit.placementReferenceId) && Intrinsics.areEqual(this.adMarkup, placementAdUnit.adMarkup)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final AdUnit getAdMarkup() {
            return this.adMarkup;
        }

        @Nullable
        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        public int hashCode() {
            int hashCode;
            String str = this.placementReferenceId;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            AdUnit adUnit = this.adMarkup;
            if (adUnit != null) {
                i = adUnit.hashCode();
            }
            return i2 + i;
        }

        @NotNull
        public String toString() {
            return "PlacementAdUnit(placementReferenceId=" + this.placementReferenceId + ", adMarkup=" + this.adMarkup + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ PlacementAdUnit(int i, @SerialName("placement_reference_id") String str, @SerialName("ad_markup") AdUnit adUnit, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str;
            }
            if ((i & 2) == 0) {
                this.adMarkup = null;
            } else {
                this.adMarkup = adUnit;
            }
        }

        public PlacementAdUnit(@Nullable String str, @Nullable AdUnit adUnit) {
            this.placementReferenceId = str;
            this.adMarkup = adUnit;
        }

        public /* synthetic */ PlacementAdUnit(String str, AdUnit adUnit, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : adUnit);
        }

        @SerialName("ad_markup")
        public static /* synthetic */ void getAdMarkup$annotations() {
        }

        @SerialName("placement_reference_id")
        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#BI\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\b\u0001\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0016\b\u0001\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB5\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\u0017\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0017\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J9\u0010\u0015\u001a\u00020\u00002\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÇ\u0001R*\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R*\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010¨\u0006$"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;", "", "seen1", "", "normalReplacements", "", "", "cacheableReplacements", "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Map;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/util/Map;Ljava/util/Map;)V", "getCacheableReplacements$annotations", "()V", "getCacheableReplacements", "()Ljava/util/Map;", "getNormalReplacements$annotations", "getNormalReplacements", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class TemplateSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Map<String, CacheableReplacement> cacheableReplacements;
        @Nullable
        private final Map<String, String> normalReplacements;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<TemplateSettings> serializer() {
                return AdPayload$TemplateSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public TemplateSettings() {
            this((Map) null, (Map) null, 3, (DefaultConstructorMarker) null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TemplateSettings copy$default(TemplateSettings templateSettings, Map map, Map map2, int i, Object obj) {
            if ((i & 1) != 0) {
                map = templateSettings.normalReplacements;
            }
            if ((i & 2) != 0) {
                map2 = templateSettings.cacheableReplacements;
            }
            return templateSettings.copy(map, map2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull TemplateSettings templateSettings, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || templateSettings.normalReplacements != null) {
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, new LinkedHashMapSerializer(stringSerializer, stringSerializer), templateSettings.normalReplacements);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || templateSettings.cacheableReplacements != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, new LinkedHashMapSerializer(StringSerializer.INSTANCE, AdPayload$CacheableReplacement$$serializer.INSTANCE), templateSettings.cacheableReplacements);
            }
        }

        @Nullable
        public final Map<String, String> component1() {
            return this.normalReplacements;
        }

        @Nullable
        public final Map<String, CacheableReplacement> component2() {
            return this.cacheableReplacements;
        }

        @NotNull
        public final TemplateSettings copy(@Nullable Map<String, String> map, @Nullable Map<String, CacheableReplacement> map2) {
            return new TemplateSettings(map, map2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TemplateSettings)) {
                return false;
            }
            TemplateSettings templateSettings = (TemplateSettings) obj;
            if (Intrinsics.areEqual(this.normalReplacements, templateSettings.normalReplacements) && Intrinsics.areEqual(this.cacheableReplacements, templateSettings.cacheableReplacements)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Map<String, CacheableReplacement> getCacheableReplacements() {
            return this.cacheableReplacements;
        }

        @Nullable
        public final Map<String, String> getNormalReplacements() {
            return this.normalReplacements;
        }

        public int hashCode() {
            int hashCode;
            Map<String, String> map = this.normalReplacements;
            int i = 0;
            if (map == null) {
                hashCode = 0;
            } else {
                hashCode = map.hashCode();
            }
            int i2 = hashCode * 31;
            Map<String, CacheableReplacement> map2 = this.cacheableReplacements;
            if (map2 != null) {
                i = map2.hashCode();
            }
            return i2 + i;
        }

        @NotNull
        public String toString() {
            return "TemplateSettings(normalReplacements=" + this.normalReplacements + ", cacheableReplacements=" + this.cacheableReplacements + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ TemplateSettings(int i, @SerialName("normal_replacements") Map map, @SerialName("cacheable_replacements") Map map2, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.normalReplacements = null;
            } else {
                this.normalReplacements = map;
            }
            if ((i & 2) == 0) {
                this.cacheableReplacements = null;
            } else {
                this.cacheableReplacements = map2;
            }
        }

        public TemplateSettings(@Nullable Map<String, String> map, @Nullable Map<String, CacheableReplacement> map2) {
            this.normalReplacements = map;
            this.cacheableReplacements = map2;
        }

        public /* synthetic */ TemplateSettings(Map map, Map map2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : map, (i & 2) != 0 ? null : map2);
        }

        @SerialName("cacheable_replacements")
        public static /* synthetic */ void getCacheableReplacements$annotations() {
        }

        @SerialName("normal_replacements")
        public static /* synthetic */ void getNormalReplacements$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00040\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0014¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$TpatSerializer;", "Lkotlinx/serialization/json/JsonTransformingSerializer;", "", "", "", "()V", "transformDeserialize", "Lkotlinx/serialization/json/JsonElement;", "element", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class TpatSerializer extends JsonTransformingSerializer<Map<String, ? extends List<? extends String>>> {
        @NotNull
        public static final TpatSerializer INSTANCE = new TpatSerializer();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private TpatSerializer() {
            /*
                r2 = this;
                kotlin.jvm.internal.StringCompanionObject r0 = kotlin.jvm.internal.StringCompanionObject.INSTANCE
                kotlinx.serialization.KSerializer r1 = kotlinx.serialization.builtins.BuiltinSerializersKt.serializer(r0)
                kotlinx.serialization.KSerializer r0 = kotlinx.serialization.builtins.BuiltinSerializersKt.serializer(r0)
                kotlinx.serialization.KSerializer r0 = kotlinx.serialization.builtins.BuiltinSerializersKt.ListSerializer(r0)
                kotlinx.serialization.KSerializer r0 = kotlinx.serialization.builtins.BuiltinSerializersKt.MapSerializer(r1, r0)
                r2.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.AdPayload.TpatSerializer.<init>():void");
        }

        @Override // kotlinx.serialization.json.JsonTransformingSerializer
        @NotNull
        public JsonElement transformDeserialize(@NotNull JsonElement jsonElement) {
            JsonObject jsonObject = JsonElementKt.getJsonObject(jsonElement);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                if (!Intrinsics.areEqual(entry.getKey(), "moat")) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return new JsonObject(linkedHashMap);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\u0011\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0015\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J!\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aHÇ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;", "", "seen1", "", "om", "Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;)V", "getOm", "()Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class ViewAbility {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final ViewAbilityInfo om;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$ViewAbility$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$ViewAbility;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<ViewAbility> serializer() {
                return AdPayload$ViewAbility$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public ViewAbility() {
            this((ViewAbilityInfo) null, 1, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ ViewAbility copy$default(ViewAbility viewAbility, ViewAbilityInfo viewAbilityInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                viewAbilityInfo = viewAbility.om;
            }
            return viewAbility.copy(viewAbilityInfo);
        }

        @JvmStatic
        public static final void write$Self(@NotNull ViewAbility viewAbility, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || viewAbility.om != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, AdPayload$ViewAbilityInfo$$serializer.INSTANCE, viewAbility.om);
            }
        }

        @Nullable
        public final ViewAbilityInfo component1() {
            return this.om;
        }

        @NotNull
        public final ViewAbility copy(@Nullable ViewAbilityInfo viewAbilityInfo) {
            return new ViewAbility(viewAbilityInfo);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ViewAbility) && Intrinsics.areEqual(this.om, ((ViewAbility) obj).om)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final ViewAbilityInfo getOm() {
            return this.om;
        }

        public int hashCode() {
            ViewAbilityInfo viewAbilityInfo = this.om;
            if (viewAbilityInfo == null) {
                return 0;
            }
            return viewAbilityInfo.hashCode();
        }

        @NotNull
        public String toString() {
            return "ViewAbility(om=" + this.om + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ ViewAbility(int i, ViewAbilityInfo viewAbilityInfo, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.om = null;
            } else {
                this.om = viewAbilityInfo;
            }
        }

        public ViewAbility(@Nullable ViewAbilityInfo viewAbilityInfo) {
            this.om = viewAbilityInfo;
        }

        public /* synthetic */ ViewAbility(ViewAbilityInfo viewAbilityInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : viewAbilityInfo);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J&\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÇ\u0001R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0004\u0010\u0011¨\u0006$"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;", "", "seen1", "", "isEnabled", "", "extraVast", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Boolean;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "getExtraVast$annotations", "()V", "getExtraVast", "()Ljava/lang/String;", "isEnabled$annotations", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class ViewAbilityInfo {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String extraVast;
        @Nullable
        private final Boolean isEnabled;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$ViewAbilityInfo;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<ViewAbilityInfo> serializer() {
                return AdPayload$ViewAbilityInfo$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public ViewAbilityInfo() {
            this((Boolean) null, (String) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ ViewAbilityInfo copy$default(ViewAbilityInfo viewAbilityInfo, Boolean bool, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = viewAbilityInfo.isEnabled;
            }
            if ((i & 2) != 0) {
                str = viewAbilityInfo.extraVast;
            }
            return viewAbilityInfo.copy(bool, str);
        }

        @JvmStatic
        public static final void write$Self(@NotNull ViewAbilityInfo viewAbilityInfo, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || viewAbilityInfo.isEnabled != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, BooleanSerializer.INSTANCE, viewAbilityInfo.isEnabled);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || viewAbilityInfo.extraVast != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, viewAbilityInfo.extraVast);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.isEnabled;
        }

        @Nullable
        public final String component2() {
            return this.extraVast;
        }

        @NotNull
        public final ViewAbilityInfo copy(@Nullable Boolean bool, @Nullable String str) {
            return new ViewAbilityInfo(bool, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ViewAbilityInfo)) {
                return false;
            }
            ViewAbilityInfo viewAbilityInfo = (ViewAbilityInfo) obj;
            if (Intrinsics.areEqual(this.isEnabled, viewAbilityInfo.isEnabled) && Intrinsics.areEqual(this.extraVast, viewAbilityInfo.extraVast)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getExtraVast() {
            return this.extraVast;
        }

        public int hashCode() {
            int hashCode;
            Boolean bool = this.isEnabled;
            int i = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i2 = hashCode * 31;
            String str = this.extraVast;
            if (str != null) {
                i = str.hashCode();
            }
            return i2 + i;
        }

        @Nullable
        public final Boolean isEnabled() {
            return this.isEnabled;
        }

        @NotNull
        public String toString() {
            return "ViewAbilityInfo(isEnabled=" + this.isEnabled + ", extraVast=" + this.extraVast + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ ViewAbilityInfo(int i, @SerialName("is_enabled") Boolean bool, @SerialName("extra_vast") String str, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.isEnabled = null;
            } else {
                this.isEnabled = bool;
            }
            if ((i & 2) == 0) {
                this.extraVast = null;
            } else {
                this.extraVast = str;
            }
        }

        public ViewAbilityInfo(@Nullable Boolean bool, @Nullable String str) {
            this.isEnabled = bool;
            this.extraVast = str;
        }

        public /* synthetic */ ViewAbilityInfo(Boolean bool, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : str);
        }

        @SerialName("extra_vast")
        public static /* synthetic */ void getExtraVast$annotations() {
        }

        @SerialName("is_enabled")
        public static /* synthetic */ void isEnabled$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u001d\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ&\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÇ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u000f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u000f\u0012\u0004\b\u0010\u0010\f\u001a\u0004\b\u0011\u0010\u000e¨\u0006$"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "", "seen1", "", "allowFileAccessFromFileUrls", "", "allowUniversalAccessFromFileUrls", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getAllowFileAccessFromFileUrls$annotations", "()V", "getAllowFileAccessFromFileUrls", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getAllowUniversalAccessFromFileUrls$annotations", "getAllowUniversalAccessFromFileUrls", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Serializable
    /* loaded from: classes6.dex */
    public static final class WebViewSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean allowFileAccessFromFileUrls;
        @Nullable
        private final Boolean allowUniversalAccessFromFileUrls;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<WebViewSettings> serializer() {
                return AdPayload$WebViewSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public WebViewSettings() {
            this((Boolean) null, (Boolean) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ WebViewSettings copy$default(WebViewSettings webViewSettings, Boolean bool, Boolean bool2, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = webViewSettings.allowFileAccessFromFileUrls;
            }
            if ((i & 2) != 0) {
                bool2 = webViewSettings.allowUniversalAccessFromFileUrls;
            }
            return webViewSettings.copy(bool, bool2);
        }

        @JvmStatic
        public static final void write$Self(@NotNull WebViewSettings webViewSettings, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || webViewSettings.allowFileAccessFromFileUrls != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, BooleanSerializer.INSTANCE, webViewSettings.allowFileAccessFromFileUrls);
            }
            if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || webViewSettings.allowUniversalAccessFromFileUrls != null) {
                compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, BooleanSerializer.INSTANCE, webViewSettings.allowUniversalAccessFromFileUrls);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.allowFileAccessFromFileUrls;
        }

        @Nullable
        public final Boolean component2() {
            return this.allowUniversalAccessFromFileUrls;
        }

        @NotNull
        public final WebViewSettings copy(@Nullable Boolean bool, @Nullable Boolean bool2) {
            return new WebViewSettings(bool, bool2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebViewSettings)) {
                return false;
            }
            WebViewSettings webViewSettings = (WebViewSettings) obj;
            if (Intrinsics.areEqual(this.allowFileAccessFromFileUrls, webViewSettings.allowFileAccessFromFileUrls) && Intrinsics.areEqual(this.allowUniversalAccessFromFileUrls, webViewSettings.allowUniversalAccessFromFileUrls)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Boolean getAllowFileAccessFromFileUrls() {
            return this.allowFileAccessFromFileUrls;
        }

        @Nullable
        public final Boolean getAllowUniversalAccessFromFileUrls() {
            return this.allowUniversalAccessFromFileUrls;
        }

        public int hashCode() {
            int hashCode;
            Boolean bool = this.allowFileAccessFromFileUrls;
            int i = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i2 = hashCode * 31;
            Boolean bool2 = this.allowUniversalAccessFromFileUrls;
            if (bool2 != null) {
                i = bool2.hashCode();
            }
            return i2 + i;
        }

        @NotNull
        public String toString() {
            return "WebViewSettings(allowFileAccessFromFileUrls=" + this.allowFileAccessFromFileUrls + ", allowUniversalAccessFromFileUrls=" + this.allowUniversalAccessFromFileUrls + ')';
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ WebViewSettings(int i, @SerialName("allow_file_access_from_file_urls") Boolean bool, @SerialName("allow_universal_access_from_file_urls") Boolean bool2, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.allowFileAccessFromFileUrls = null;
            } else {
                this.allowFileAccessFromFileUrls = bool;
            }
            if ((i & 2) == 0) {
                this.allowUniversalAccessFromFileUrls = null;
            } else {
                this.allowUniversalAccessFromFileUrls = bool2;
            }
        }

        public WebViewSettings(@Nullable Boolean bool, @Nullable Boolean bool2) {
            this.allowFileAccessFromFileUrls = bool;
            this.allowUniversalAccessFromFileUrls = bool2;
        }

        public /* synthetic */ WebViewSettings(Boolean bool, Boolean bool2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : bool2);
        }

        @SerialName("allow_file_access_from_file_urls")
        public static /* synthetic */ void getAllowFileAccessFromFileUrls$annotations() {
        }

        @SerialName("allow_universal_access_from_file_urls")
        public static /* synthetic */ void getAllowUniversalAccessFromFileUrls$annotations() {
        }
    }

    public AdPayload() {
        this(null, null, 3, null);
    }

    private final String complexReplace(String str, String str2, String str3) {
        return new Regex(Pattern.quote(str2)).replace(str, valueOrEmpty(str3));
    }

    private final PlacementAdUnit getAd() {
        List<PlacementAdUnit> list = this.ads;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private final AdUnit getAdMarkup() {
        PlacementAdUnit ad = getAd();
        if (ad != null) {
            return ad.getAdMarkup();
        }
        return null;
    }

    public static /* synthetic */ List getTpatUrls$default(AdPayload adPayload, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        return adPayload.getTpatUrls(str, str2, str3);
    }

    private final String valueOrEmpty(String str) {
        if (str == null) {
            return "";
        }
        return str;
    }

    @JvmStatic
    public static final void write$Self(@NotNull AdPayload adPayload, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || adPayload.ads != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, new ArrayListSerializer(AdPayload$PlacementAdUnit$$serializer.INSTANCE), adPayload.ads);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || adPayload.config != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, ConfigPayload$$serializer.INSTANCE, adPayload.config);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || !Intrinsics.areEqual(adPayload.mraidFiles, new ConcurrentHashMap())) {
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            compositeEncoder.encodeSerializableElement(serialDescriptor, 2, new ContextualSerializer(orCreateKotlinClass, null, new KSerializer[]{stringSerializer, stringSerializer}), adPayload.mraidFiles);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || !Intrinsics.areEqual(adPayload.incentivizedTextSettings, new HashMap())) {
            StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
            compositeEncoder.encodeSerializableElement(serialDescriptor, 3, new LinkedHashMapSerializer(stringSerializer2, stringSerializer2), adPayload.incentivizedTextSettings);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || adPayload.assetsFullyDownloaded) {
            compositeEncoder.encodeBooleanElement(serialDescriptor, 4, adPayload.assetsFullyDownloaded);
        }
    }

    public final int adHeight() {
        AdSizeInfo adSizeInfo;
        Integer height;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adSizeInfo = adMarkup.getAdSizeInfo()) != null && (height = adSizeInfo.getHeight()) != null) {
            return height.intValue();
        }
        return 0;
    }

    public final boolean adLoadOptimizationEnabled() {
        Boolean adLoadOptimizationEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adLoadOptimizationEnabled = adMarkup.getAdLoadOptimizationEnabled()) != null) {
            return adLoadOptimizationEnabled.booleanValue();
        }
        return true;
    }

    @Nullable
    public final AdUnit adUnit() {
        return getAdMarkup();
    }

    public final int adWidth() {
        AdSizeInfo adSizeInfo;
        Integer width;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adSizeInfo = adMarkup.getAdSizeInfo()) != null && (width = adSizeInfo.getWidth()) != null) {
            return width.intValue();
        }
        return 0;
    }

    @Nullable
    public final String advAppId() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdvAppId();
        }
        return null;
    }

    @Nullable
    public final ConfigPayload config() {
        return this.config;
    }

    @NotNull
    public final JsonObject createMRAIDArgs() {
        Map<String, String> mRAIDArgsInMap = getMRAIDArgsInMap();
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        for (Map.Entry<String, String> entry : mRAIDArgsInMap.entrySet()) {
            JsonElementBuildersKt.put(jsonObjectBuilder, entry.getKey(), entry.getValue());
        }
        return jsonObjectBuilder.build();
    }

    @Nullable
    public final String eventId() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getId();
        }
        return null;
    }

    @Nullable
    public final AdConfig getAdConfig() {
        return this.adConfig;
    }

    @Nullable
    public final String getAdSource() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdSource();
        }
        return null;
    }

    @Nullable
    public final File getAssetDirectory() {
        return this.assetDirectory;
    }

    public final boolean getAssetsFullyDownloaded() {
        return this.assetsFullyDownloaded;
    }

    @NotNull
    public final String getCreativeId() {
        String creativeId;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (creativeId = adMarkup.getCreativeId()) != null) {
            return creativeId;
        }
        return "unknown";
    }

    @NotNull
    public final List<AdAsset> getDownloadableAssets(@NotNull File file) {
        TemplateSettings templateSettings;
        Map<String, CacheableReplacement> cacheableReplacements;
        boolean z;
        boolean z2;
        String templateURL;
        String vmURL;
        this.assetDirectory = file;
        ArrayList arrayList = new ArrayList();
        if (!isNativeTemplateType()) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup != null && (vmURL = adMarkup.getVmURL()) != null) {
                if (FileUtility.INSTANCE.isValidUrl(vmURL)) {
                    arrayList.add(new AdAsset(KEY_VM, vmURL, new File(file, Constants.AD_INDEX_FILE_NAME).getAbsolutePath(), AdAsset.FileType.ASSET, true));
                }
            } else {
                AdUnit adMarkup2 = getAdMarkup();
                if (adMarkup2 != null && (templateURL = adMarkup2.getTemplateURL()) != null && FileUtility.INSTANCE.isValidUrl(templateURL)) {
                    arrayList.add(new AdAsset("template", templateURL, new File(file, "template").getAbsolutePath(), AdAsset.FileType.ZIP, true));
                }
            }
        }
        AdUnit adMarkup3 = getAdMarkup();
        if (adMarkup3 != null && (templateSettings = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                CacheableReplacement value = entry.getValue();
                if (value.getUrl() != null) {
                    FileUtility fileUtility = FileUtility.INSTANCE;
                    if (fileUtility.isValidUrl(value.getUrl())) {
                        Boolean required = value.getRequired();
                        if (required != null) {
                            z = required.booleanValue();
                        } else {
                            z = false;
                        }
                        if (isNativeTemplateType() || !adLoadOptimizationEnabled()) {
                            z2 = true;
                        } else if (!isCacheableAssetsRequired()) {
                            z2 = false;
                        } else {
                            z2 = z;
                        }
                        arrayList.add(new AdAsset(entry.getKey(), value.getUrl(), new File(file, fileUtility.guessFileName(value.getUrl(), value.getExtension())).getAbsolutePath(), AdAsset.FileType.ASSET, z2));
                    }
                }
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt.sortWith(arrayList, new Comparator() { // from class: com.vungle.ads.internal.model.AdPayload$getDownloadableAssets$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Boolean.valueOf(((AdAsset) t2).isRequired()), Boolean.valueOf(((AdAsset) t).isRequired()));
                }
            });
        }
        return arrayList;
    }

    @NotNull
    public final Map<String, String> getIncentivizedTextSettings() {
        return this.incentivizedTextSettings;
    }

    @Nullable
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @NotNull
    public final Map<String, String> getMRAIDArgsInMap() {
        TemplateSettings templateSettings;
        TemplateSettings templateSettings2;
        Map<String, CacheableReplacement> cacheableReplacements;
        TemplateSettings templateSettings3;
        Map<String, String> normalReplacements;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            templateSettings = adMarkup.getTemplateSettings();
        } else {
            templateSettings = null;
        }
        if (templateSettings != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            AdUnit adMarkup2 = getAdMarkup();
            if (adMarkup2 != null && (templateSettings3 = adMarkup2.getTemplateSettings()) != null && (normalReplacements = templateSettings3.getNormalReplacements()) != null) {
                linkedHashMap.putAll(normalReplacements);
            }
            AdUnit adMarkup3 = getAdMarkup();
            if (adMarkup3 != null && (templateSettings2 = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings2.getCacheableReplacements()) != null) {
                for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                    String url = entry.getValue().getUrl();
                    if (url != null) {
                        linkedHashMap.put(entry.getKey(), url);
                    }
                }
            }
            if (!this.mraidFiles.isEmpty()) {
                linkedHashMap.putAll(this.mraidFiles);
            }
            if (!this.incentivizedTextSettings.isEmpty()) {
                linkedHashMap.putAll(this.incentivizedTextSettings);
            }
            return linkedHashMap;
        }
        throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
    }

    @Nullable
    public final String getMediationName() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getMediationName();
        }
        return null;
    }

    public final int getShowCloseDelay(@Nullable Boolean bool) {
        Integer showClose;
        int intValue;
        Integer showCloseIncentivized;
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup == null || (showCloseIncentivized = adMarkup.getShowCloseIncentivized()) == null) {
                return 0;
            }
            intValue = showCloseIncentivized.intValue();
        } else {
            AdUnit adMarkup2 = getAdMarkup();
            if (adMarkup2 == null || (showClose = adMarkup2.getShowClose()) == null) {
                return 0;
            }
            intValue = showClose.intValue();
        }
        return intValue * 1000;
    }

    @Nullable
    public final List<String> getTpatUrls(@NotNull String str, @Nullable String str2, @Nullable String str3) {
        List<String> list;
        Map<String, List<String>> tpat;
        Map<String, List<String>> tpat2;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (tpat2 = adMarkup.getTpat()) != null && !tpat2.containsKey(str)) {
            new TpatError(Sdk.SDKError.Reason.INVALID_TPAT_KEY, "Arbitrary tpat key: " + str).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        AdUnit adMarkup2 = getAdMarkup();
        if (adMarkup2 != null && (tpat = adMarkup2.getTpat()) != null) {
            list = tpat.get(str);
        } else {
            list = null;
        }
        List<String> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            switch (str.hashCode()) {
                case -2125915830:
                    if (str.equals(Constants.CHECKPOINT_0)) {
                        List<String> list3 = list;
                        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                        for (String str4 : list3) {
                            arrayList.add(complexReplace(complexReplace(complexReplace(str4, Constants.REMOTE_PLAY_KEY, String.valueOf(!this.assetsFullyDownloaded)), Constants.NETWORK_OPERATOR_KEY, str2), Constants.DEVICE_VOLUME_KEY, str3));
                        }
                        return arrayList;
                    }
                    break;
                case -747709511:
                    if (str.equals(Constants.VIDEO_LENGTH_TPAT)) {
                        List<String> list4 = list;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
                        for (String str5 : list4) {
                            arrayList2.add(complexReplace(str5, Constants.VIDEO_LENGTH_KEY, str2));
                        }
                        return arrayList2;
                    }
                    break;
                case -132489083:
                    if (str.equals(Constants.AD_LOAD_DURATION)) {
                        List<String> list5 = list;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list5, 10));
                        for (String str6 : list5) {
                            arrayList3.add(complexReplace(str6, Constants.AD_LOAD_DURATION_KEY, str2));
                        }
                        return arrayList3;
                    }
                    break;
                case 1516630125:
                    if (str.equals(Constants.AD_CLOSE)) {
                        List<String> list6 = list;
                        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list6, 10));
                        for (String str7 : list6) {
                            arrayList4.add(complexReplace(complexReplace(str7, Constants.AD_DURATION_KEY, str2), Constants.DEVICE_VOLUME_KEY, str3));
                        }
                        return arrayList4;
                    }
                    break;
                case 1940309120:
                    if (str.equals(Constants.DEEPLINK_CLICK)) {
                        List<String> list7 = list;
                        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list7, 10));
                        for (String str8 : list7) {
                            arrayList5.add(complexReplace(str8, Constants.DEEPLINK_SUCCESS_KEY, str2));
                        }
                        return arrayList5;
                    }
                    break;
            }
            return list;
        }
        new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: " + str).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
        return null;
    }

    @Nullable
    public final String getViewMasterVersion() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getVmVersion();
        }
        return null;
    }

    @Nullable
    public final WebViewSettings getWebViewSettings() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getWebViewSettings();
        }
        return null;
    }

    @Nullable
    public final List<String> getWinNotifications() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getNotification();
        }
        return null;
    }

    public final boolean hasExpired() {
        Integer expiry;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup == null || (expiry = adMarkup.getExpiry()) == null || expiry.intValue() >= System.currentTimeMillis() / 1000) {
            return false;
        }
        return true;
    }

    public final boolean heartbeatEnabled() {
        Boolean templateHeartbeatCheck;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (templateHeartbeatCheck = adMarkup.getTemplateHeartbeatCheck()) != null) {
            return templateHeartbeatCheck.booleanValue();
        }
        return false;
    }

    public final boolean isCacheableAssetsRequired() {
        Boolean isCacheableAssetsRequired;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (isCacheableAssetsRequired = adMarkup.isCacheableAssetsRequired()) != null) {
            return isCacheableAssetsRequired.booleanValue();
        }
        return true;
    }

    public final boolean isClickCoordinatesTrackingEnabled() {
        Boolean clickCoordinatesEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (clickCoordinatesEnabled = adMarkup.getClickCoordinatesEnabled()) != null) {
            return clickCoordinatesEnabled.booleanValue();
        }
        return false;
    }

    public final boolean isCriticalAsset(@NotNull String str) {
        TemplateSettings templateSettings;
        Map<String, CacheableReplacement> cacheableReplacements;
        String str2;
        if (!isNativeTemplateType()) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup != null) {
                str2 = adMarkup.getTemplateURL();
            } else {
                str2 = null;
            }
            if (Intrinsics.areEqual(str2, str)) {
                return true;
            }
        }
        AdUnit adMarkup2 = getAdMarkup();
        if (adMarkup2 != null && (templateSettings = adMarkup2.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                if (Intrinsics.areEqual(entry.getValue().getUrl(), str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return !linkedHashMap.isEmpty();
        }
        return false;
    }

    public final boolean isNativeTemplateType() {
        return Intrinsics.areEqual(templateType(), "native");
    }

    public final boolean omEnabled() {
        ViewAbility viewAbility;
        ViewAbilityInfo om;
        Boolean isEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (viewAbility = adMarkup.getViewAbility()) != null && (om = viewAbility.getOm()) != null && (isEnabled = om.isEnabled()) != null) {
            return isEnabled.booleanValue();
        }
        return false;
    }

    @Nullable
    public final String placementId() {
        PlacementAdUnit ad = getAd();
        if (ad != null) {
            return ad.getPlacementReferenceId();
        }
        return null;
    }

    public final void setAdConfig(@Nullable AdConfig adConfig) {
        this.adConfig = adConfig;
    }

    public final void setAssetFullyDownloaded() {
        this.assetsFullyDownloaded = true;
    }

    public final void setAssetsFullyDownloaded(boolean z) {
        this.assetsFullyDownloaded = z;
    }

    public final void setIncentivizedText(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        if (str.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_TITLE_TEXT, str);
        }
        if (str2.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_BODY_TEXT, str2);
        }
        if (str3.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CONTINUE_TEXT, str3);
        }
        if (str4.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CLOSE_TEXT, str4);
        }
    }

    public final void setIncentivizedTextSettings(@NotNull Map<String, String> map) {
        this.incentivizedTextSettings = map;
    }

    public final void setLogEntry$vungle_ads_release(@Nullable LogEntry logEntry) {
        this.logEntry = logEntry;
    }

    @Nullable
    public final String templateType() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getTemplateType();
        }
        return null;
    }

    public final synchronized void updateAdAssetPath(@Nullable AdAsset adAsset) {
        if (adAsset != null) {
            if (!Intrinsics.areEqual("template", adAsset.getAdIdentifier())) {
                File file = new File(adAsset.getLocalPath());
                if (file.exists()) {
                    String adIdentifier = adAsset.getAdIdentifier();
                    ConcurrentHashMap<String, String> concurrentHashMap = this.mraidFiles;
                    concurrentHashMap.put(adIdentifier, FILE_SCHEME + file.getPath());
                }
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ AdPayload(int i, @SerialName("ads") List list, @SerialName("config") ConfigPayload configPayload, @Contextual ConcurrentHashMap concurrentHashMap, @VisibleForTesting Map map, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.ads = null;
        } else {
            this.ads = list;
        }
        if ((i & 2) == 0) {
            this.config = null;
        } else {
            this.config = configPayload;
        }
        if ((i & 4) == 0) {
            this.mraidFiles = new ConcurrentHashMap<>();
        } else {
            this.mraidFiles = concurrentHashMap;
        }
        if ((i & 8) == 0) {
            this.incentivizedTextSettings = new HashMap();
        } else {
            this.incentivizedTextSettings = map;
        }
        if ((i & 16) == 0) {
            this.assetsFullyDownloaded = false;
        } else {
            this.assetsFullyDownloaded = z;
        }
        this.adConfig = null;
        this.logEntry = null;
        this.assetDirectory = null;
    }

    public AdPayload(@Nullable List<PlacementAdUnit> list, @Nullable ConfigPayload configPayload) {
        this.ads = list;
        this.config = configPayload;
        this.mraidFiles = new ConcurrentHashMap<>();
        this.incentivizedTextSettings = new HashMap();
    }

    public /* synthetic */ AdPayload(List list, ConfigPayload configPayload, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : configPayload);
    }

    @Transient
    public static /* synthetic */ void getAdConfig$annotations() {
    }

    @SerialName(b.JSON_KEY_ADS)
    private static /* synthetic */ void getAds$annotations() {
    }

    @Transient
    public static /* synthetic */ void getAssetDirectory$annotations() {
    }

    @SerialName("config")
    private static /* synthetic */ void getConfig$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getIncentivizedTextSettings$annotations() {
    }

    @Transient
    public static /* synthetic */ void getLogEntry$vungle_ads_release$annotations() {
    }

    @Contextual
    private static /* synthetic */ void getMraidFiles$annotations() {
    }
}
