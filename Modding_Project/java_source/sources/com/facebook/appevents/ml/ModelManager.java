package com.facebook.appevents.ml;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.FileDownloadTask;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\bÇ\u0002\u0018\u00002\u00020\u0001:\u00029:B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ;\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003J\u001b\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b#\u0010$J'\u0010(\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020\fH\u0002¢\u0006\u0004\b(\u0010)J'\u0010*\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020\fH\u0002¢\u0006\u0004\b*\u0010)R\"\u0010/\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020,0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u000e008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u000e008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00102R\u0014\u00108\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u0006;"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/ml/ModelManager$Task;", "task", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/ModelManager$Task;)Ljava/io/File;", "", "", "denses", "", "texts", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;", "", CampaignEx.JSON_KEY_TIMESTAMP, "", "Wwwwwwwwwwwwwwwwwwwww", "(J)Z", "Lorg/json/JSONObject;", "models", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)V", "jsonObject", "Wwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONArray;", "jsonArray", "Wwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)[F", "Lcom/facebook/appevents/ml/MTensor;", "res", "thresholds", "Wwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "taskHandlers", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "MTML_SUGGESTED_EVENTS_PREDICTION", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "MTML_INTEGRITY_DETECT_PREDICTION", "Wwwwwwwwwwwwwwwwwwwwww", "()Z", "isLocaleEnglish", "Task", "TaskHandler", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class ModelManager {
    @NotNull
    public static final ModelManager INSTANCE = new ModelManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, TaskHandler> f6475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f6474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.listOf((Object[]) new String[]{"other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout"});
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f6473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.listOf((Object[]) new String[]{"none", "address", "health"});

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$Task;", "", "(Ljava/lang/String;I)V", "toKey", "", "toUseCase", "MTML_INTEGRITY_DETECT", "MTML_APP_EVENT_PREDICTION", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Task {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        /* compiled from: Proguard */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Task.valuesCustom().length];
                iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 1;
                iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Task[] valuesCustom() {
            Task[] valuesCustom = values();
            return (Task[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final String toKey() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return "app_event_pred";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "integrity_detect";
        }

        @NotNull
        public final String toUseCase() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return "MTML_APP_EVENT_PRED";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "MTML_INTEGRITY_DETECT";
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 32\u00020\u0001:\u00013B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010+\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010'\u001a\u0004\b\u001b\u0010(\"\u0004\b)\u0010*R$\u00101\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010-\u001a\u0004\b\u0018\u0010.\"\u0004\b/\u00100R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u00102¨\u00064"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "", "", "useCase", "assetUri", "ruleUri", "", "versionId", "", "thresholds", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V", "Ljava/lang/Runnable;", "onPostExecute", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Runnable;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "setUseCase", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setAssetUri", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setRuleUri", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "setVersionId", "(I)V", "[F", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[F", "setThresholds", "([F)V", "Ljava/io/File;", "Ljava/io/File;", "()Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)V", "ruleFile", "Lcom/facebook/appevents/ml/Model;", "Lcom/facebook/appevents/ml/Model;", "()Lcom/facebook/appevents/ml/Model;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/Model;)V", "model", "Ljava/lang/Runnable;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TaskHandler {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Runnable f6476Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Model f6477Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public File f6478Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float[] f6479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f6480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6482Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6483Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u0019\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "json", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "master", "", "slaves", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V", "", "useCase", "", "versionId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;I)V", "uri", "name", "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;", "onComplete", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(TaskHandler taskHandler, Model model, File file) {
                taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(model);
                taskHandler.Wwwwwwwwwwwwwwwwwwwwwwww(file);
                Runnable runnable = taskHandler.f6476Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (runnable == null) {
                    return;
                }
                runnable.run();
            }

            public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(List list, File file) {
                final Model Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Model.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        final TaskHandler taskHandler = (TaskHandler) it.next();
                        TaskHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() + '_' + taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + "_rule", new FileDownloadTask.Callback() { // from class: Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file2) {
                                ModelManager.TaskHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.TaskHandler.this, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, file2);
                            }
                        });
                    }
                }
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskHandler taskHandler, @NotNull final List<TaskHandler> list) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() + '_' + taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), new FileDownloadTask.Callback() { // from class: Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
                        ModelManager.TaskHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list, file);
                    }
                });
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, FileDownloadTask.Callback callback) {
                File file = new File(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str2);
                if (str != null && !file.exists()) {
                    new FileDownloadTask(str, file, callback).execute(new String[0]);
                } else {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                }
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
                File[] listFiles;
                File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || (listFiles = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles()) == null || listFiles.length == 0) {
                    return;
                }
                String str2 = str + '_' + i;
                int length = listFiles.length;
                int i2 = 0;
                while (i2 < length) {
                    File file = listFiles[i2];
                    i2++;
                    String name = file.getName();
                    if (StringsKt.startsWith$default(name, str, false, 2, (Object) null) && !StringsKt.startsWith$default(name, str2, false, 2, (Object) null)) {
                        file.delete();
                    }
                }
            }

            @Nullable
            public final TaskHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
                if (jSONObject == null) {
                    return null;
                }
                try {
                    return new TaskHandler(jSONObject.getString("use_case"), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri", null), jSONObject.getInt("version_id"), ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.INSTANCE, jSONObject.getJSONArray("thresholds")));
                } catch (Exception unused) {
                    return null;
                }
            }

            public Companion() {
            }
        }

        public TaskHandler(@NotNull String str, @NotNull String str2, @Nullable String str3, int i, @Nullable float[] fArr) {
            this.f6483Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6482Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f6481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
            this.f6480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f6479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fArr;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable File file) {
            this.f6478Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = file;
        }

        @NotNull
        public final TaskHandler Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Runnable runnable) {
            this.f6476Wwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Model model) {
            this.f6477Wwwwwwwwwwwwwwwwwwwwwwwwwwww = model;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6483Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6478Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Model Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6477Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6482Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Task.valuesCustom().length];
            iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 1;
            iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    @Nullable
    public static final String[] Wwwwwwwwwwwwwwwwww(@NotNull Task task, @NotNull float[][] fArr, @NotNull String[] strArr) {
        Model Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return null;
        }
        try {
            TaskHandler taskHandler = f6475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(task.toUseCase());
            if (taskHandler == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int length = strArr.length;
            int length2 = fArr[0].length;
            MTensor mTensor = new MTensor(new int[]{length, length2});
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    System.arraycopy(fArr[i], 0, mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), i * length2, length2);
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mTensor, strArr, task.toKey());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length != 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length != 0) {
                int i3 = WhenMappings.$EnumSwitchMapping$0[task.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2) {
                        return INSTANCE.Wwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return INSTANCE.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Task task) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return null;
        }
        try {
            TaskHandler taskHandler = f6475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(task.toUseCase());
            if (taskHandler == null) {
                return null;
            }
            return taskHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return;
        }
        try {
            IntegrityManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return;
        }
        try {
            SuggestedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b A[Catch: all -> 0x002d, Exception -> 0x007e, TryCatch #2 {Exception -> 0x007e, all -> 0x002d, blocks: (B:5:0x000e, B:7:0x0020, B:10:0x0027, B:14:0x0034, B:16:0x0044, B:18:0x004a, B:24:0x0072, B:20:0x0052, B:23:0x005b, B:13:0x002f), top: B:29:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            java.lang.String r0 = "model_request_timestamp"
            java.lang.String r1 = "models"
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r2 = com.facebook.appevents.ml.ModelManager.class
            boolean r3 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            if (r3 == 0) goto Le
            goto L7e
        Le:
            android.content.Context r3 = com.facebook.FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            java.lang.String r4 = "com.facebook.internal.MODEL_STORE"
            r5 = 0
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r4 = 0
            java.lang.String r4 = r3.getString(r1, r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r4 == 0) goto L2f
            int r5 = r4.length()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r5 != 0) goto L27
            goto L2f
        L27:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            goto L34
        L2d:
            r0 = move-exception
            goto L7b
        L2f:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r5.<init>()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
        L34:
            r6 = 0
            long r6 = r3.getLong(r0, r6)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            com.facebook.internal.FeatureManager r4 = com.facebook.internal.FeatureManager.INSTANCE     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            com.facebook.internal.FeatureManager$Feature r4 = com.facebook.internal.FeatureManager.Feature.ModelRequest     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            boolean r4 = com.facebook.internal.FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r4 == 0) goto L52
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r4 == 0) goto L52
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            boolean r4 = r4.Wwwwwwwwwwwwwwwwwwwww(r6)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r4 != 0) goto L72
        L52:
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            org.json.JSONObject r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            if (r5 != 0) goto L5b
            goto L7e
        L5b:
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            android.content.SharedPreferences$Editor r1 = r3.putString(r1, r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            android.content.SharedPreferences$Editor r0 = r1.putLong(r0, r3)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r0.apply()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
        L72:
            com.facebook.appevents.ml.ModelManager r0 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            r0.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L7e
            return
        L7b:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r2)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.ml.ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww():void");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            Utility.Illl(new Runnable() { // from class: Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
        }
    }

    public static final /* synthetic */ float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager modelManager, JSONArray jSONArray) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelManager.class)) {
            return null;
        }
        try {
            return modelManager.Wwwwwwwwwwwwwwwwwwww(jSONArray);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ModelManager.class);
            return null;
        }
    }

    public final String[] Wwwwwwwwwwwwwwww(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != fArr.length) {
                return null;
            }
            IntRange until = RangesKt.until(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                String str = "other";
                int length = fArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[(nextInt * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + i2] >= fArr[i]) {
                        str = f6474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2);
                    }
                    i++;
                    i2 = i3;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final String[] Wwwwwwwwwwwwwwwww(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != fArr.length) {
                return null;
            }
            IntRange until = RangesKt.until(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                String str = "none";
                int length = fArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[(nextInt * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + i2] >= fArr[i]) {
                        str = f6473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2);
                    }
                    i++;
                    i2 = i3;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int length = jSONArray.length();
                if (length > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                        jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                        jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                        jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                        if (jSONObject3.has("rules_uri")) {
                            jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                        }
                        jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                }
                return jSONObject2;
            } catch (JSONException unused) {
                return new JSONObject();
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final float[] Wwwwwwwwwwwwwwwwwwww(JSONArray jSONArray) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) || jSONArray == null) {
            return null;
        }
        try {
            float[] fArr = new float[jSONArray.length()];
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    try {
                        fArr[i] = Float.parseFloat(jSONArray.getString(i));
                    } catch (JSONException unused) {
                    }
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return fArr;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwww(long j) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) || j == 0) {
            return false;
        }
        try {
            if (System.currentTimeMillis() - j >= 259200000) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            Locale Kkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkk();
            if (Kkkkkkkkkkkkkkkkkk2 != null) {
                if (!StringsKt.contains$default((CharSequence) Kkkkkkkkkkkkkkkkkk2.getLanguage(), (CharSequence) "en", false, 2, (Object) null)) {
                    return false;
                }
                return true;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
            GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(null, "app/model_asset", null);
            Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                ArrayList arrayList = new ArrayList();
                String str = null;
                int i = 0;
                for (Map.Entry<String, TaskHandler> entry : f6475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
                    String key = entry.getKey();
                    TaskHandler value = entry.getValue();
                    if (Intrinsics.areEqual(key, Task.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        int max = Math.max(i, value.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                        FeatureManager featureManager = FeatureManager.INSTANCE;
                        if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.SuggestedEvents) && Wwwwwwwwwwwwwwwwwwwwww()) {
                            arrayList.add(value.Wwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            }));
                        }
                        str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        i = max;
                    }
                    if (Intrinsics.areEqual(key, Task.MTML_INTEGRITY_DETECT.toUseCase())) {
                        str = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        i = Math.max(i, value.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                        FeatureManager featureManager2 = FeatureManager.INSTANCE;
                        if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.IntelligentIntegrity)) {
                            arrayList.add(value.Wwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            }));
                        }
                    }
                }
                if (str != null && i > 0 && !arrayList.isEmpty()) {
                    TaskHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TaskHandler("MTML", str, null, i, null), arrayList);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    try {
                        TaskHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TaskHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.getJSONObject(keys.next()));
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            f6475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } catch (JSONException unused) {
                        return;
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
