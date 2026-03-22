package com.vungle.ads.internal.signals;

import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.model.UnclosedAd$$serializer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
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
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 >2\u00020\u0001:\u0002=>Bq\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\u0010\b\u0001\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\b\u0001\u0010\f\u001a\u00020\b\u0012\b\b\u0001\u0010\r\u001a\u00020\u0003\u0012\u0010\b\u0001\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0014J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u0013\u00100\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u0003HÖ\u0001J\t\u00105\u001a\u00020\u0006HÖ\u0001J!\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<HÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R$\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u0014R$\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\u0016\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u0016\u001a\u0004\b%\u0010&R*\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R*\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b,\u0010\u0016\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+¨\u0006?"}, d2 = {"Lcom/vungle/ads/internal/signals/SessionData;", "", "seen1", "", "sessionCount", JsonStorageKeyNames.SESSION_ID_KEY, "", "sessionCreationTime", "", "signaledAd", "", "Lcom/vungle/ads/internal/signals/SignaledAd;", "sessionDuration", "sessionDepthCounter", "unclosedAd", "", "Lcom/vungle/ads/internal/model/UnclosedAd;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;JLjava/util/List;JILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(I)V", "getSessionCount$annotations", "()V", "getSessionCount", "()I", "getSessionCreationTime$annotations", "getSessionCreationTime", "()J", "setSessionCreationTime", "(J)V", "getSessionDepthCounter$annotations", "getSessionDepthCounter", "setSessionDepthCounter", "getSessionDuration$annotations", "getSessionDuration", "setSessionDuration", "getSessionId$annotations", "getSessionId", "()Ljava/lang/String;", "getSignaledAd$annotations", "getSignaledAd", "()Ljava/util/List;", "setSignaledAd", "(Ljava/util/List;)V", "getUnclosedAd$annotations", "getUnclosedAd", "setUnclosedAd", "component1", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class SessionData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int sessionCount;
    private long sessionCreationTime;
    private int sessionDepthCounter;
    private long sessionDuration;
    @NotNull
    private final String sessionId;
    @NotNull
    private List<SignaledAd> signaledAd;
    @NotNull
    private List<UnclosedAd> unclosedAd;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/signals/SessionData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/signals/SessionData;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SessionData> serializer() {
            return SessionData$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SessionData(int i) {
        this.sessionCount = i;
        this.sessionId = UUID.randomUUID().toString();
        this.sessionCreationTime = System.currentTimeMillis() / 1000;
        this.signaledAd = new ArrayList();
        this.unclosedAd = new ArrayList();
    }

    public static /* synthetic */ SessionData copy$default(SessionData sessionData, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = sessionData.sessionCount;
        }
        return sessionData.copy(i);
    }

    @JvmStatic
    public static final void write$Self(@NotNull SessionData sessionData, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, sessionData.sessionCount);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || !Intrinsics.areEqual(sessionData.sessionId, UUID.randomUUID().toString())) {
            compositeEncoder.encodeStringElement(serialDescriptor, 1, sessionData.sessionId);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || sessionData.sessionCreationTime != System.currentTimeMillis() / 1000) {
            compositeEncoder.encodeLongElement(serialDescriptor, 2, sessionData.sessionCreationTime);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || !Intrinsics.areEqual(sessionData.signaledAd, new ArrayList())) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 3, new ArrayListSerializer(SignaledAd$$serializer.INSTANCE), sessionData.signaledAd);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || sessionData.sessionDuration != 0) {
            compositeEncoder.encodeLongElement(serialDescriptor, 4, sessionData.sessionDuration);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || sessionData.sessionDepthCounter != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 5, sessionData.sessionDepthCounter);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || !Intrinsics.areEqual(sessionData.unclosedAd, new ArrayList())) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 6, new ArrayListSerializer(UnclosedAd$$serializer.INSTANCE), sessionData.unclosedAd);
        }
    }

    public final int component1() {
        return this.sessionCount;
    }

    @NotNull
    public final SessionData copy(int i) {
        return new SessionData(i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SessionData) && this.sessionCount == ((SessionData) obj).sessionCount) {
            return true;
        }
        return false;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionCreationTime() {
        return this.sessionCreationTime;
    }

    public final int getSessionDepthCounter() {
        return this.sessionDepthCounter;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    @NotNull
    public final String getSessionId() {
        return this.sessionId;
    }

    @NotNull
    public final List<SignaledAd> getSignaledAd() {
        return this.signaledAd;
    }

    @NotNull
    public final List<UnclosedAd> getUnclosedAd() {
        return this.unclosedAd;
    }

    public int hashCode() {
        return this.sessionCount;
    }

    public final void setSessionCreationTime(long j) {
        this.sessionCreationTime = j;
    }

    public final void setSessionDepthCounter(int i) {
        this.sessionDepthCounter = i;
    }

    public final void setSessionDuration(long j) {
        this.sessionDuration = j;
    }

    public final void setSignaledAd(@NotNull List<SignaledAd> list) {
        this.signaledAd = list;
    }

    public final void setUnclosedAd(@NotNull List<UnclosedAd> list) {
        this.unclosedAd = list;
    }

    @NotNull
    public String toString() {
        return "SessionData(sessionCount=" + this.sessionCount + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SessionData(int i, @SerialName("103") int i2, @SerialName("101") String str, @SerialName("100") long j, @SerialName("106") List list, @SerialName("102") long j2, @SerialName("104") int i3, @SerialName("105") List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, SessionData$$serializer.INSTANCE.getDescriptor());
        }
        this.sessionCount = i2;
        if ((i & 2) == 0) {
            this.sessionId = UUID.randomUUID().toString();
        } else {
            this.sessionId = str;
        }
        if ((i & 4) == 0) {
            this.sessionCreationTime = System.currentTimeMillis() / 1000;
        } else {
            this.sessionCreationTime = j;
        }
        if ((i & 8) == 0) {
            this.signaledAd = new ArrayList();
        } else {
            this.signaledAd = list;
        }
        if ((i & 16) == 0) {
            this.sessionDuration = 0L;
        } else {
            this.sessionDuration = j2;
        }
        if ((i & 32) == 0) {
            this.sessionDepthCounter = 0;
        } else {
            this.sessionDepthCounter = i3;
        }
        if ((i & 64) == 0) {
            this.unclosedAd = new ArrayList();
        } else {
            this.unclosedAd = list2;
        }
    }

    @SerialName("103")
    public static /* synthetic */ void getSessionCount$annotations() {
    }

    @SerialName("100")
    public static /* synthetic */ void getSessionCreationTime$annotations() {
    }

    @SerialName("104")
    public static /* synthetic */ void getSessionDepthCounter$annotations() {
    }

    @SerialName("102")
    public static /* synthetic */ void getSessionDuration$annotations() {
    }

    @SerialName("101")
    public static /* synthetic */ void getSessionId$annotations() {
    }

    @SerialName("106")
    public static /* synthetic */ void getSignaledAd$annotations() {
    }

    @SerialName("105")
    public static /* synthetic */ void getUnclosedAd$annotations() {
    }
}
