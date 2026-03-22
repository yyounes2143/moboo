package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b>\u0018\u0000 R2\u00020\u0001:\u0002RSB\u008d\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\f0\f\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016\u0012\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u0002¢\u0006\u0004\b&\u0010'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b.\u0010)\u001a\u0004\b/\u0010'R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R/\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\f0\f8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b0\u0010:R\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b;\u0010)\u001a\u0004\b(\u0010'R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b4\u0010>R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b,\u0010+\u001a\u0004\b?\u0010-R\u0017\u0010\u0013\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b@\u0010-R\u0017\u0010\u0014\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bA\u0010)\u001a\u0004\b;\u0010'R\u0017\u0010\u0015\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bB\u0010)\u001a\u0004\b.\u0010'R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\b8\u0010ER\u0017\u0010\u0018\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bF\u0010+\u001a\u0004\bG\u0010-R\u0017\u0010\u0019\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bG\u0010)\u001a\u0004\bH\u0010'R\u0017\u0010\u001a\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bI\u0010)\u001a\u0004\bJ\u0010'R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b2\u0010+\u001a\u0004\bB\u0010-R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b6\u0010+\u001a\u0004\bK\u0010-R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\bK\u0010+\u001a\u0004\bF\u0010-R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b&\u0010D\u001a\u0004\bA\u0010ER\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\bL\u0010D\u001a\u0004\b<\u0010ER%\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\bM\u00109\u001a\u0004\bN\u0010:R\u0019\u0010!\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\bO\u0010D\u001a\u0004\b*\u0010ER\u0019\u0010\"\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\bP\u0010D\u001a\u0004\bC\u0010ER\u0019\u0010#\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\bQ\u0010D\u001a\u0004\bI\u0010E¨\u0006T"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings;", "", "", "supportsImplicitLogging", "", "nuxContent", "nuxEnabled", "", "sessionTimeoutInSeconds", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "smartLoginOptions", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "dialogConfigurations", "automaticLoggingEnabled", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "errorClassification", "smartLoginBookmarkIconURL", "smartLoginMenuIconURL", "iAPAutomaticLoggingEnabled", "codelessEventsEnabled", "Lorg/json/JSONArray;", "eventBindings", "sdkUpdateMessage", "trackUninstallEnabled", "monitorViaDialogEnabled", "rawAamRules", "suggestedEventsSetting", "restrictiveDataSetting", "protectedModeStandardParamsSetting", "MACARuleMatchingSetting", "migratedAutoLogValues", "blocklistEvents", "redactedEvents", "sensitiveParams", "<init>", "(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V", "Wwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/EnumSet;", "Wwwwwwwwwwwwwwwww", "()Ljava/util/EnumSet;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "getSmartLoginBookmarkIconURL", "getSmartLoginMenuIconURL", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONArray;", "()Lorg/json/JSONArray;", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "getTrackUninstallEnabled", "Wwwwwwwwwwwwwwwwwww", "getMonitorViaDialogEnabled", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "getMigratedAutoLogValues", "Wwwwwwwwwwww", "Wwwwwwwwwww", "Wwwwwwwwww", "Companion", "DialogFeatureConfig", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FetchedAppSettings {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6668Wwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6669Wwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6670Wwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Boolean> f6671Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6672Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6673Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6674Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6675Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6676Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6677Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6678Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6679Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6680Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6681Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6682Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6683Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6684Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FacebookRequestErrorClassification f6685Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6686Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Map<String, DialogFeatureConfig>> f6687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EnumSet<SmartLoginOption> f6688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f6689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings$Companion;", "", "<init>", "()V", "", "applicationId", "actionName", "featureName", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final DialogFeatureConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3) {
            Map<String, DialogFeatureConfig> map;
            if (str2.length() == 0 || str3.length() == 0) {
                return null;
            }
            FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                map = null;
            } else {
                map = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(str2);
            }
            if (map == null) {
                return null;
            }
            return map.get(str3);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0010\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B-\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\f\u001a\u0004\b\u000e\u0010\rR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u000f\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "", "", "dialogName", "featureName", "Landroid/net/Uri;", "fallbackUrl", "", "versionSpec", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "getFallbackUrl", "()Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[I", "()[I", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DialogFeatureConfig {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int[] f6693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f6694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "dialogConfigJSON", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "Lorg/json/JSONArray;", "versionsJSON", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)[I", "", "DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR", "Ljava/lang/String;", "DIALOG_CONFIG_NAME_KEY", "DIALOG_CONFIG_URL_KEY", "DIALOG_CONFIG_VERSIONS_KEY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONArray jSONArray) {
                if (jSONArray != null) {
                    int length = jSONArray.length();
                    int[] iArr = new int[length];
                    if (length > 0) {
                        int i = 0;
                        while (true) {
                            int i2 = i + 1;
                            int i3 = -1;
                            int optInt = jSONArray.optInt(i, -1);
                            if (optInt == -1) {
                                String optString = jSONArray.optString(i);
                                if (!Utility.Kk(optString)) {
                                    try {
                                        i3 = Integer.parseInt(optString);
                                    } catch (NumberFormatException e) {
                                        Utility.Illlllllllllllllllllllll("FacebookSDK", e);
                                    }
                                    optInt = i3;
                                }
                            }
                            iArr[i] = optInt;
                            if (i2 >= length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    return iArr;
                }
                return null;
            }

            @Nullable
            public final DialogFeatureConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) {
                String optString = jSONObject.optString("name");
                Uri uri = null;
                if (Utility.Kk(optString)) {
                    return null;
                }
                List split$default = StringsKt.split$default((CharSequence) optString, new String[]{"|"}, false, 0, 6, (Object) null);
                if (split$default.size() != 2) {
                    return null;
                }
                String str = (String) CollectionsKt.first((List<? extends Object>) split$default);
                String str2 = (String) CollectionsKt.last((List<? extends Object>) split$default);
                if (Utility.Kk(str) || Utility.Kk(str2)) {
                    return null;
                }
                String optString2 = jSONObject.optString("url");
                if (!Utility.Kk(optString2)) {
                    uri = Uri.parse(optString2);
                }
                return new DialogFeatureConfig(str, str2, uri, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONArray("versions")), null);
            }

            public Companion() {
            }
        }

        public /* synthetic */ DialogFeatureConfig(String str, String str2, Uri uri, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, uri, iArr);
        }

        @Nullable
        public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public DialogFeatureConfig(String str, String str2, Uri uri, int[] iArr) {
            this.f6696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f6694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            this.f6693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FetchedAppSettings(boolean z, @NotNull String str, boolean z2, int i, @NotNull EnumSet<SmartLoginOption> enumSet, @NotNull Map<String, ? extends Map<String, DialogFeatureConfig>> map, boolean z3, @NotNull FacebookRequestErrorClassification facebookRequestErrorClassification, @NotNull String str2, @NotNull String str3, boolean z4, boolean z5, @Nullable JSONArray jSONArray, @NotNull String str4, boolean z6, boolean z7, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable JSONArray jSONArray2, @Nullable JSONArray jSONArray3, @Nullable Map<String, Boolean> map2, @Nullable JSONArray jSONArray4, @Nullable JSONArray jSONArray5, @Nullable JSONArray jSONArray6) {
        this.f6692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f6691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f6689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f6688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = enumSet;
        this.f6687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f6686Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
        this.f6685Wwwwwwwwwwwwwwwwwwwwwwwwwww = facebookRequestErrorClassification;
        this.f6684Wwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f6683Wwwwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f6682Wwwwwwwwwwwwwwwwwwwwwwww = z4;
        this.f6681Wwwwwwwwwwwwwwwwwwwwwww = z5;
        this.f6680Wwwwwwwwwwwwwwwwwwwwww = jSONArray;
        this.f6679Wwwwwwwwwwwwwwwwwwwww = str4;
        this.f6678Wwwwwwwwwwwwwwwwwwww = z6;
        this.f6677Wwwwwwwwwwwwwwwwwww = z7;
        this.f6676Wwwwwwwwwwwwwwwwww = str5;
        this.f6675Wwwwwwwwwwwwwwwww = str6;
        this.f6674Wwwwwwwwwwwwwwww = str7;
        this.f6673Wwwwwwwwwwwwwww = jSONArray2;
        this.f6672Wwwwwwwwwwwwww = jSONArray3;
        this.f6671Wwwwwwwwwwwww = map2;
        this.f6670Wwwwwwwwwwww = jSONArray4;
        this.f6669Wwwwwwwwwww = jSONArray5;
        this.f6668Wwwwwwwwww = jSONArray6;
    }

    public final boolean Wwwwwwwwwwwwwww() {
        return this.f6692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwww() {
        return this.f6675Wwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final EnumSet<SmartLoginOption> Wwwwwwwwwwwwwwwww() {
        return this.f6688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwww() {
        return this.f6689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwww() {
        return this.f6668Wwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwww() {
        return this.f6679Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwww() {
        return this.f6674Wwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f6669Wwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6676Wwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6673Wwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6672Wwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6682Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6680Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final FacebookRequestErrorClassification Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6685Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Map<String, Map<String, DialogFeatureConfig>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6681Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONArray Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6670Wwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6686Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
