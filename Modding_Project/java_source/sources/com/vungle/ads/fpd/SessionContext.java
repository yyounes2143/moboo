package com.vungle.ads.fpd;

import com.vungle.ads.internal.util.RangeUtil;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 :2\u00020\u0001:\u00029:B¯\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0001\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0015B\u0005¢\u0006\u0002\u0010\u0016J\u0016\u0010%\u001a\u00020\u00002\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010&J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0003J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0003J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u00100\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J!\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208HÇ\u0001R \u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u0019\u0012\u0004\b\u0018\u0010\u0016R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u0019\u0012\u0004\b\u001a\u0010\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u0019\u0012\u0004\b\u001b\u0010\u0016R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u0016R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b\u001d\u0010\u0016R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b\u001f\u0010\u0016R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b \u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b!\u0010\u0016R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\"\u0010\u0016R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u0019\u0012\u0004\b#\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u0019\u0012\u0004\b$\u0010\u0016¨\u0006;"}, d2 = {"Lcom/vungle/ads/fpd/SessionContext;", "", "seen1", "", "levelPercentile", "", "page", "", "timeSpent", "signupDate", "userScorePercentile", "userID", "friends", "", "userLevelPercentile", "healthPercentile", "sessionStartTime", "sessionDuration", "inGamePurchasesUSD", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "()V", "getFriends$annotations", "getHealthPercentile$annotations", "Ljava/lang/Float;", "getInGamePurchasesUSD$annotations", "getLevelPercentile$annotations", "getPage$annotations", "getSessionDuration$annotations", "Ljava/lang/Integer;", "getSessionStartTime$annotations", "getSignupDate$annotations", "getTimeSpent$annotations", "getUserID$annotations", "getUserLevelPercentile$annotations", "getUserScorePercentile$annotations", "setFriends", "", "setHealthPercentile", "setInGamePurchasesUSD", "setLevelPercentile", "setPage", "setSessionDuration", "setSessionStartTime", "setSignupDate", "setTimeSpent", "setUserID", "setUserLevelPercentile", "setUserScorePercentile", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class SessionContext {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private List<String> friends;
    @Nullable
    private Float healthPercentile;
    @Nullable
    private Float inGamePurchasesUSD;
    @Nullable
    private Float levelPercentile;
    @Nullable
    private String page;
    @Nullable
    private Integer sessionDuration;
    @Nullable
    private Integer sessionStartTime;
    @Nullable
    private Integer signupDate;
    @Nullable
    private Integer timeSpent;
    @Nullable
    private String userID;
    @Nullable
    private Float userLevelPercentile;
    @Nullable
    private Float userScorePercentile;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/fpd/SessionContext$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/fpd/SessionContext;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SessionContext> serializer() {
            return SessionContext$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SessionContext() {
    }

    @JvmStatic
    public static final void write$Self(@NotNull SessionContext sessionContext, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || sessionContext.levelPercentile != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, FloatSerializer.INSTANCE, sessionContext.levelPercentile);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || sessionContext.page != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, sessionContext.page);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || sessionContext.timeSpent != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, sessionContext.timeSpent);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || sessionContext.signupDate != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, IntSerializer.INSTANCE, sessionContext.signupDate);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || sessionContext.userScorePercentile != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, FloatSerializer.INSTANCE, sessionContext.userScorePercentile);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || sessionContext.userID != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, sessionContext.userID);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || sessionContext.friends != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, new ArrayListSerializer(StringSerializer.INSTANCE), sessionContext.friends);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || sessionContext.userLevelPercentile != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, FloatSerializer.INSTANCE, sessionContext.userLevelPercentile);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || sessionContext.healthPercentile != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, FloatSerializer.INSTANCE, sessionContext.healthPercentile);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || sessionContext.sessionStartTime != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, IntSerializer.INSTANCE, sessionContext.sessionStartTime);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) || sessionContext.sessionDuration != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, IntSerializer.INSTANCE, sessionContext.sessionDuration);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 11) || sessionContext.inGamePurchasesUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 11, FloatSerializer.INSTANCE, sessionContext.inGamePurchasesUSD);
        }
    }

    @NotNull
    public final SessionContext setFriends(@Nullable List<String> list) {
        List<String> list2;
        if (list != null) {
            list2 = CollectionsKt.toMutableList((Collection) list);
        } else {
            list2 = null;
        }
        this.friends = list2;
        return this;
    }

    @NotNull
    public final SessionContext setHealthPercentile(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.healthPercentile = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final SessionContext setInGamePurchasesUSD(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.inGamePurchasesUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final SessionContext setLevelPercentile(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.levelPercentile = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final SessionContext setPage(@NotNull String str) {
        this.page = str;
        return this;
    }

    @NotNull
    public final SessionContext setSessionDuration(int i) {
        this.sessionDuration = Integer.valueOf(i);
        return this;
    }

    @NotNull
    public final SessionContext setSessionStartTime(int i) {
        this.sessionStartTime = Integer.valueOf(i);
        return this;
    }

    @NotNull
    public final SessionContext setSignupDate(int i) {
        this.signupDate = Integer.valueOf(i);
        return this;
    }

    @NotNull
    public final SessionContext setTimeSpent(int i) {
        this.timeSpent = Integer.valueOf(i);
        return this;
    }

    @NotNull
    public final SessionContext setUserID(@NotNull String str) {
        this.userID = str;
        return this;
    }

    @NotNull
    public final SessionContext setUserLevelPercentile(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.userLevelPercentile = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final SessionContext setUserScorePercentile(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.userScorePercentile = Float.valueOf(f);
        }
        return this;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SessionContext(int i, @SerialName("level_percentile") Float f, @SerialName("page") String str, @SerialName("time_spent") Integer num, @SerialName("signup_date") Integer num2, @SerialName("user_score_percentile") Float f2, @SerialName("user_id") String str2, @SerialName("friends") List list, @SerialName("user_level_percentile") Float f3, @SerialName("health_percentile") Float f4, @SerialName("session_start_time") Integer num3, @SerialName("session_duration") Integer num4, @SerialName("in_game_purchases_usd") Float f5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.levelPercentile = null;
        } else {
            this.levelPercentile = f;
        }
        if ((i & 2) == 0) {
            this.page = null;
        } else {
            this.page = str;
        }
        if ((i & 4) == 0) {
            this.timeSpent = null;
        } else {
            this.timeSpent = num;
        }
        if ((i & 8) == 0) {
            this.signupDate = null;
        } else {
            this.signupDate = num2;
        }
        if ((i & 16) == 0) {
            this.userScorePercentile = null;
        } else {
            this.userScorePercentile = f2;
        }
        if ((i & 32) == 0) {
            this.userID = null;
        } else {
            this.userID = str2;
        }
        if ((i & 64) == 0) {
            this.friends = null;
        } else {
            this.friends = list;
        }
        if ((i & 128) == 0) {
            this.userLevelPercentile = null;
        } else {
            this.userLevelPercentile = f3;
        }
        if ((i & 256) == 0) {
            this.healthPercentile = null;
        } else {
            this.healthPercentile = f4;
        }
        if ((i & 512) == 0) {
            this.sessionStartTime = null;
        } else {
            this.sessionStartTime = num3;
        }
        if ((i & 1024) == 0) {
            this.sessionDuration = null;
        } else {
            this.sessionDuration = num4;
        }
        if ((i & 2048) == 0) {
            this.inGamePurchasesUSD = null;
        } else {
            this.inGamePurchasesUSD = f5;
        }
    }

    @SerialName("friends")
    private static /* synthetic */ void getFriends$annotations() {
    }

    @SerialName("health_percentile")
    private static /* synthetic */ void getHealthPercentile$annotations() {
    }

    @SerialName("in_game_purchases_usd")
    private static /* synthetic */ void getInGamePurchasesUSD$annotations() {
    }

    @SerialName("level_percentile")
    private static /* synthetic */ void getLevelPercentile$annotations() {
    }

    @SerialName("page")
    private static /* synthetic */ void getPage$annotations() {
    }

    @SerialName("session_duration")
    private static /* synthetic */ void getSessionDuration$annotations() {
    }

    @SerialName("session_start_time")
    private static /* synthetic */ void getSessionStartTime$annotations() {
    }

    @SerialName("signup_date")
    private static /* synthetic */ void getSignupDate$annotations() {
    }

    @SerialName("time_spent")
    private static /* synthetic */ void getTimeSpent$annotations() {
    }

    @SerialName("user_id")
    private static /* synthetic */ void getUserID$annotations() {
    }

    @SerialName("user_level_percentile")
    private static /* synthetic */ void getUserLevelPercentile$annotations() {
    }

    @SerialName("user_score_percentile")
    private static /* synthetic */ void getUserScorePercentile$annotations() {
    }
}
