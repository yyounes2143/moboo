package com.facebook.internal.instrument;

import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.facebook.internal.Utility;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.File;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 42\u00020\u0001:\u0003546B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0012\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0004\u0010\nB\u001d\b\u0012\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0004\u0010\u000eB\u0011\b\u0012\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0004\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001cR\u0018\u0010&\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001cR\u0018\u0010(\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001cR\u0018\u0010+\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010*R\u0011\u0010.\u001a\u00020,8F¢\u0006\u0006\u001a\u0004\b'\u0010-R\u0016\u00101\u001a\u0004\u0018\u00010/8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u00100R\u0016\u00102\u001a\u0004\u0018\u00010/8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u00100R\u0016\u00103\u001a\u0004\u0018\u00010/8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u00100¨\u00067"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentData;", "", "Lorg/json/JSONArray;", "features", "<init>", "(Lorg/json/JSONArray;)V", "", "e", "Lcom/facebook/internal/instrument/InstrumentData$Type;", "t", "(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)V", "", "anrCause", CmcdConfiguration.KEY_STREAM_TYPE, "(Ljava/lang/String;Ljava/lang/String;)V", "Ljava/io/File;", "file", "(Ljava/io/File;)V", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/instrument/InstrumentData;)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "toString", "()Ljava/lang/String;", "Ljava/lang/String;", "filename", "Lcom/facebook/internal/instrument/InstrumentData$Type;", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONArray;", "featureNames", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "cause", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "stackTrace", "", "Ljava/lang/Long;", CampaignEx.JSON_KEY_TIMESTAMP, "", "()Z", "isValid", "Lorg/json/JSONObject;", "()Lorg/json/JSONObject;", "parameters", "analysisReportParameters", "exceptionReportParameters", "Companion", "Builder", "Type", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class InstrumentData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONArray f6891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Type f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentData$Builder;", "", "<init>", "()V", "Ljava/io/File;", "file", "Lcom/facebook/internal/instrument/InstrumentData;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;", "", "e", "Lcom/facebook/internal/instrument/InstrumentData$Type;", "t", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;", "Lorg/json/JSONArray;", "features", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Lcom/facebook/internal/instrument/InstrumentData;", "", "anrCause", CmcdConfiguration.KEY_STREAM_TYPE, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder {
        @NotNull
        public static final Builder INSTANCE = new Builder();

        @JvmStatic
        @NotNull
        public static final InstrumentData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
            return new InstrumentData(file, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        @NotNull
        public static final InstrumentData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONArray jSONArray) {
            return new InstrumentData(jSONArray, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        @NotNull
        public static final InstrumentData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th, @NotNull Type type) {
            return new InstrumentData(th, type, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        @NotNull
        public static final InstrumentData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2) {
            return new InstrumentData(str, str2, (DefaultConstructorMarker) null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\nR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\nR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentData$Companion;", "", "<init>", "()V", "", "filename", "Lcom/facebook/internal/instrument/InstrumentData$Type;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;", "PARAM_APP_VERSION", "Ljava/lang/String;", "PARAM_CALLSTACK", "PARAM_DEVICE_MODEL", "PARAM_DEVICE_OS", "PARAM_FEATURE_NAMES", "PARAM_REASON", "PARAM_TIMESTAMP", "PARAM_TYPE", "UNKNOWN", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (StringsKt.startsWith$default(str, "crash_log_", false, 2, (Object) null)) {
                return Type.CrashReport;
            }
            if (StringsKt.startsWith$default(str, "shield_log_", false, 2, (Object) null)) {
                return Type.CrashShield;
            }
            if (StringsKt.startsWith$default(str, "thread_check_log_", false, 2, (Object) null)) {
                return Type.ThreadCheck;
            }
            if (StringsKt.startsWith$default(str, "analysis_log_", false, 2, (Object) null)) {
                return Type.Analysis;
            }
            if (StringsKt.startsWith$default(str, "anr_log_", false, 2, (Object) null)) {
                return Type.AnrReport;
            }
            return Type.Unknown;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentData$Type;", "", "(Ljava/lang/String;I)V", "logPrefix", "", "getLogPrefix", "()Ljava/lang/String;", "toString", "Unknown", "Analysis", "AnrReport", "CrashReport", "CrashShield", "ThreadCheck", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        Unknown,
        Analysis,
        AnrReport,
        CrashReport,
        CrashShield,
        ThreadCheck;

        /* compiled from: Proguard */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.valuesCustom().length];
                iArr[Type.Analysis.ordinal()] = 1;
                iArr[Type.AnrReport.ordinal()] = 2;
                iArr[Type.CrashReport.ordinal()] = 3;
                iArr[Type.CrashShield.ordinal()] = 4;
                iArr[Type.ThreadCheck.ordinal()] = 5;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            return (Type[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final String getLogPrefix() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return "Unknown";
                            }
                            return "thread_check_log_";
                        }
                        return "shield_log_";
                    }
                    return "crash_log_";
                }
                return "anr_log_";
            }
            return "analysis_log_";
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return "Unknown";
                            }
                            return "ThreadCheck";
                        }
                        return "CrashShield";
                    }
                    return "CrashReport";
                }
                return "AnrReport";
            }
            return "Analysis";
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.valuesCustom().length];
            iArr[Type.Analysis.ordinal()] = 1;
            iArr[Type.AnrReport.ordinal()] = 2;
            iArr[Type.CrashReport.ordinal()] = 3;
            iArr[Type.CrashShield.ordinal()] = 4;
            iArr[Type.ThreadCheck.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ InstrumentData(File file, DefaultConstructorMarker defaultConstructorMarker) {
        this(file);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.Wwwwwwwwwwwwwww(this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, toString());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        Type type = this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i != 1) {
            if (i != 2) {
                if ((i != 3 && i != 4 && i != 5) || this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null || this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    return false;
                }
                return true;
            } else if (this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null || this.f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null || this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return false;
            } else {
                return true;
            }
        } else if (this.f6891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null || this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return false;
        } else {
            return true;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        Type type = this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i != 1) {
            if (i != 2 && i != 3 && i != 4 && i != 5) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put(TPDownloadProxyEnum.USER_DEVICE_MODEL, Build.MODEL);
            String str = this.f6890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                jSONObject.put("app_version", str);
            }
            Long l = this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (l != null) {
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, l);
            }
            String str2 = this.f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str2 != null) {
                jSONObject.put("reason", str2);
            }
            String str3 = this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str3 != null) {
                jSONObject.put("callstack", str3);
            }
            Type type = this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (type != null) {
                jSONObject.put("type", type);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.f6891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (jSONArray != null) {
                jSONObject.put("feature_names", jSONArray);
            }
            Long l = this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (l != null) {
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, l);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull InstrumentData instrumentData) {
        Long l = this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l == null) {
            return -1;
        }
        long longValue = l.longValue();
        Long l2 = instrumentData.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l2 == null) {
            return 1;
        }
        return Intrinsics.compare(l2.longValue(), longValue);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new JSONObject().toString();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
    }

    public /* synthetic */ InstrumentData(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public /* synthetic */ InstrumentData(Throwable th, Type type, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, type);
    }

    public /* synthetic */ InstrumentData(JSONArray jSONArray, DefaultConstructorMarker defaultConstructorMarker) {
        this(jSONArray);
    }

    public InstrumentData(JSONArray jSONArray) {
        this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Type.Analysis;
        this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f6891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONArray;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("analysis_log_");
        stringBuffer.append(String.valueOf(this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww));
        stringBuffer.append(".json");
        this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringBuffer.toString();
    }

    public InstrumentData(Throwable th, Type type) {
        this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type;
        this.f6890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Utility.Wwwwwwwwwwww();
        this.f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
        this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwww(th);
        this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(type.getLogPrefix());
        stringBuffer.append(String.valueOf(this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww));
        stringBuffer.append(".json");
        this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringBuffer.toString();
    }

    public InstrumentData(String str, String str2) {
        this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Type.AnrReport;
        this.f6890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Utility.Wwwwwwwwwwww();
        this.f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("anr_log_");
        stringBuffer.append(String.valueOf(this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww));
        stringBuffer.append(".json");
        this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringBuffer.toString();
    }

    public InstrumentData(File file) {
        String name = file.getName();
        this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = name;
        this.f6892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(name);
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        JSONObject Wwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwww(this.f6893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, true);
        if (Wwwwwwwwwwwwwwwww2 != null) {
            this.f6887Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(Wwwwwwwwwwwwwwwww2.optLong(CampaignEx.JSON_KEY_TIMESTAMP, 0L));
            this.f6890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2.optString("app_version", null);
            this.f6889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2.optString("reason", null);
            this.f6888Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2.optString("callstack", null);
            this.f6891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2.optJSONArray("feature_names");
        }
    }
}
