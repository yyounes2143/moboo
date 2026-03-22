package com.vungle.ads.internal.signals;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 H2\u00020\u0001:\u0002GHBO\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\t\u001a\u00020\u0007\u0012\b\b\u0001\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB\u001b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0002\u0010\u0010J\u0006\u00104\u001a\u000205J\u0010\u00106\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001fJ\t\u00107\u001a\u00020\u0007HÆ\u0003J$\u00108\u001a\u00020\u00002\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u001f\u0010=\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0002\u0010>J\t\u0010?\u001a\u00020\u0003HÖ\u0001J\t\u0010@\u001a\u00020\u0005HÖ\u0001J!\u0010A\u001a\u0002052\u0006\u0010B\u001a\u00020\u00002\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FHÇ\u0001R$\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R&\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010 \u0012\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010\u000f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0013\u001a\u0004\b\"\u0010\u0015R$\u0010#\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b$\u0010\u0013\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\u0013\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R&\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b,\u0010\u0013\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010\u001cR$\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b/\u0010\u0013\u001a\u0004\b0\u0010\u0015\"\u0004\b1\u0010\u0017R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b2\u0010\u0013\u001a\u0004\b3\u0010\u0015¨\u0006I"}, d2 = {"Lcom/vungle/ads/internal/signals/SignaledAd;", "", "seen1", "", "templateSignals", "", "timeSinceLastAdLoad", "", "eventId", "timeBetweenAdAvailabilityAndPlayAd", "screenOrientation", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;JLjava/lang/String;JILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "lastAdLoadTime", "loadAdTime", "(Ljava/lang/Long;J)V", "adAvailabilityCallbackTime", "getAdAvailabilityCallbackTime$annotations", "()V", "getAdAvailabilityCallbackTime", "()J", "setAdAvailabilityCallbackTime", "(J)V", "getEventId$annotations", "getEventId", "()Ljava/lang/String;", "setEventId", "(Ljava/lang/String;)V", "getLastAdLoadTime$annotations", "getLastAdLoadTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getLoadAdTime$annotations", "getLoadAdTime", "playAdTime", "getPlayAdTime$annotations", "getPlayAdTime", "setPlayAdTime", "getScreenOrientation$annotations", "getScreenOrientation", "()I", "setScreenOrientation", "(I)V", "getTemplateSignals$annotations", "getTemplateSignals", "setTemplateSignals", "getTimeBetweenAdAvailabilityAndPlayAd$annotations", "getTimeBetweenAdAvailabilityAndPlayAd", "setTimeBetweenAdAvailabilityAndPlayAd", "getTimeSinceLastAdLoad$annotations", "getTimeSinceLastAdLoad", "calculateTimeBetweenAdAvailabilityAndPlayAd", "", "component1", "component2", "copy", "(Ljava/lang/Long;J)Lcom/vungle/ads/internal/signals/SignaledAd;", "equals", "", "other", "getTimeDifference", "(Ljava/lang/Long;J)J", "hashCode", "toString", "write$Self", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class SignaledAd {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private long adAvailabilityCallbackTime;
    @Nullable
    private String eventId;
    @Nullable
    private final Long lastAdLoadTime;
    private final long loadAdTime;
    private long playAdTime;
    private int screenOrientation;
    @Nullable
    private String templateSignals;
    private long timeBetweenAdAvailabilityAndPlayAd;
    private final long timeSinceLastAdLoad;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/signals/SignaledAd$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/signals/SignaledAd;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SignaledAd> serializer() {
            return SignaledAd$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SignaledAd() {
        this(null, 0L, 3, null);
    }

    public static /* synthetic */ SignaledAd copy$default(SignaledAd signaledAd, Long l, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            l = signaledAd.lastAdLoadTime;
        }
        if ((i & 2) != 0) {
            j = signaledAd.loadAdTime;
        }
        return signaledAd.copy(l, j);
    }

    private final long getTimeDifference(Long l, long j) {
        if (l == null) {
            return -1L;
        }
        long longValue = j - l.longValue();
        if (longValue < 0) {
            return -1L;
        }
        return longValue;
    }

    @JvmStatic
    public static final void write$Self(@NotNull SignaledAd signaledAd, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || signaledAd.templateSignals != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, signaledAd.templateSignals);
        }
        compositeEncoder.encodeLongElement(serialDescriptor, 1, signaledAd.timeSinceLastAdLoad);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || signaledAd.eventId != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, signaledAd.eventId);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || signaledAd.timeBetweenAdAvailabilityAndPlayAd != 0) {
            compositeEncoder.encodeLongElement(serialDescriptor, 3, signaledAd.timeBetweenAdAvailabilityAndPlayAd);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || signaledAd.screenOrientation != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 4, signaledAd.screenOrientation);
        }
    }

    public final void calculateTimeBetweenAdAvailabilityAndPlayAd() {
        this.timeBetweenAdAvailabilityAndPlayAd = getTimeDifference(Long.valueOf(this.adAvailabilityCallbackTime), this.playAdTime);
    }

    @Nullable
    public final Long component1() {
        return this.lastAdLoadTime;
    }

    public final long component2() {
        return this.loadAdTime;
    }

    @NotNull
    public final SignaledAd copy(@Nullable Long l, long j) {
        return new SignaledAd(l, j);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignaledAd)) {
            return false;
        }
        SignaledAd signaledAd = (SignaledAd) obj;
        if (Intrinsics.areEqual(this.lastAdLoadTime, signaledAd.lastAdLoadTime) && this.loadAdTime == signaledAd.loadAdTime) {
            return true;
        }
        return false;
    }

    public final long getAdAvailabilityCallbackTime() {
        return this.adAvailabilityCallbackTime;
    }

    @Nullable
    public final String getEventId() {
        return this.eventId;
    }

    @Nullable
    public final Long getLastAdLoadTime() {
        return this.lastAdLoadTime;
    }

    public final long getLoadAdTime() {
        return this.loadAdTime;
    }

    public final long getPlayAdTime() {
        return this.playAdTime;
    }

    public final int getScreenOrientation() {
        return this.screenOrientation;
    }

    @Nullable
    public final String getTemplateSignals() {
        return this.templateSignals;
    }

    public final long getTimeBetweenAdAvailabilityAndPlayAd() {
        return this.timeBetweenAdAvailabilityAndPlayAd;
    }

    public final long getTimeSinceLastAdLoad() {
        return this.timeSinceLastAdLoad;
    }

    public int hashCode() {
        int hashCode;
        Long l = this.lastAdLoadTime;
        if (l == null) {
            hashCode = 0;
        } else {
            hashCode = l.hashCode();
        }
        return (hashCode * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.loadAdTime);
    }

    public final void setAdAvailabilityCallbackTime(long j) {
        this.adAvailabilityCallbackTime = j;
    }

    public final void setEventId(@Nullable String str) {
        this.eventId = str;
    }

    public final void setPlayAdTime(long j) {
        this.playAdTime = j;
    }

    public final void setScreenOrientation(int i) {
        this.screenOrientation = i;
    }

    public final void setTemplateSignals(@Nullable String str) {
        this.templateSignals = str;
    }

    public final void setTimeBetweenAdAvailabilityAndPlayAd(long j) {
        this.timeBetweenAdAvailabilityAndPlayAd = j;
    }

    @NotNull
    public String toString() {
        return "SignaledAd(lastAdLoadTime=" + this.lastAdLoadTime + ", loadAdTime=" + this.loadAdTime + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SignaledAd(int i, @SerialName("500") String str, @SerialName("109") long j, @SerialName("107") String str2, @SerialName("110") long j2, @SerialName("108") int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i & 2)) {
            PluginExceptionsKt.throwMissingFieldException(i, 2, SignaledAd$$serializer.INSTANCE.getDescriptor());
        }
        this.lastAdLoadTime = 0L;
        this.loadAdTime = 0L;
        if ((i & 1) == 0) {
            this.templateSignals = null;
        } else {
            this.templateSignals = str;
        }
        this.timeSinceLastAdLoad = j;
        if ((i & 4) == 0) {
            this.eventId = null;
        } else {
            this.eventId = str2;
        }
        if ((i & 8) == 0) {
            this.timeBetweenAdAvailabilityAndPlayAd = 0L;
        } else {
            this.timeBetweenAdAvailabilityAndPlayAd = j2;
        }
        if ((i & 16) == 0) {
            this.screenOrientation = 0;
        } else {
            this.screenOrientation = i2;
        }
        this.adAvailabilityCallbackTime = 0L;
        this.playAdTime = 0L;
        this.timeSinceLastAdLoad = getTimeDifference(0L, 0L);
    }

    public SignaledAd(@Nullable Long l, long j) {
        this.lastAdLoadTime = l;
        this.loadAdTime = j;
        this.timeSinceLastAdLoad = getTimeDifference(l, j);
    }

    public /* synthetic */ SignaledAd(Long l, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : l, (i & 2) != 0 ? 0L : j);
    }

    @Transient
    public static /* synthetic */ void getAdAvailabilityCallbackTime$annotations() {
    }

    @SerialName("107")
    public static /* synthetic */ void getEventId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getLastAdLoadTime$annotations() {
    }

    @Transient
    public static /* synthetic */ void getLoadAdTime$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPlayAdTime$annotations() {
    }

    @SerialName("108")
    public static /* synthetic */ void getScreenOrientation$annotations() {
    }

    @SerialName("500")
    public static /* synthetic */ void getTemplateSignals$annotations() {
    }

    @SerialName("110")
    public static /* synthetic */ void getTimeBetweenAdAvailabilityAndPlayAd$annotations() {
    }

    @SerialName("109")
    public static /* synthetic */ void getTimeSinceLastAdLoad$annotations() {
    }
}
