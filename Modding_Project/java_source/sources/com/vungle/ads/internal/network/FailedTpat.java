package com.vungle.ads.internal.network;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 42\u00020\u0001:\u000234B]\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fBQ\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u0017\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003JW\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\bHÖ\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202HÇ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001c\u0010\f\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u001f¨\u00065"}, d2 = {"Lcom/vungle/ads/internal/network/FailedTpat;", "", "seen1", "", FirebaseAnalytics.Param.METHOD, "Lcom/vungle/ads/internal/network/HttpMethod;", "headers", "", "", "body", "retryAttempt", "retryCount", "tpatKey", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V", "getBody", "()Ljava/lang/String;", "getHeaders", "()Ljava/util/Map;", "getMethod", "()Lcom/vungle/ads/internal/network/HttpMethod;", "getRetryAttempt", "()I", "setRetryAttempt", "(I)V", "getRetryCount", "setRetryCount", "getTpatKey", "setTpatKey", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class FailedTpat {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String body;
    @Nullable
    private final Map<String, String> headers;
    @NotNull
    private final HttpMethod method;
    private int retryAttempt;
    private int retryCount;
    @Nullable
    private String tpatKey;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/network/FailedTpat$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/network/FailedTpat;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<FailedTpat> serializer() {
            return FailedTpat$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ FailedTpat(int i, HttpMethod httpMethod, Map map, String str, int i2, int i3, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (16 != (i & 16)) {
            PluginExceptionsKt.throwMissingFieldException(i, 16, FailedTpat$$serializer.INSTANCE.getDescriptor());
        }
        this.method = (i & 1) == 0 ? HttpMethod.GET : httpMethod;
        if ((i & 2) == 0) {
            this.headers = null;
        } else {
            this.headers = map;
        }
        if ((i & 4) == 0) {
            this.body = null;
        } else {
            this.body = str;
        }
        if ((i & 8) == 0) {
            this.retryAttempt = 0;
        } else {
            this.retryAttempt = i2;
        }
        this.retryCount = i3;
        if ((i & 32) == 0) {
            this.tpatKey = null;
        } else {
            this.tpatKey = str2;
        }
    }

    public static /* synthetic */ FailedTpat copy$default(FailedTpat failedTpat, HttpMethod httpMethod, Map map, String str, int i, int i2, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            httpMethod = failedTpat.method;
        }
        Map<String, String> map2 = map;
        if ((i3 & 2) != 0) {
            map2 = failedTpat.headers;
        }
        if ((i3 & 4) != 0) {
            str = failedTpat.body;
        }
        if ((i3 & 8) != 0) {
            i = failedTpat.retryAttempt;
        }
        if ((i3 & 16) != 0) {
            i2 = failedTpat.retryCount;
        }
        if ((i3 & 32) != 0) {
            str2 = failedTpat.tpatKey;
        }
        int i4 = i2;
        String str3 = str2;
        return failedTpat.copy(httpMethod, map2, str, i, i4, str3);
    }

    @JvmStatic
    public static final void write$Self(@NotNull FailedTpat failedTpat, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || failedTpat.method != HttpMethod.GET) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, HttpMethod$$serializer.INSTANCE, failedTpat.method);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || failedTpat.headers != null) {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, new LinkedHashMapSerializer(stringSerializer, stringSerializer), failedTpat.headers);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || failedTpat.body != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, failedTpat.body);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || failedTpat.retryAttempt != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 3, failedTpat.retryAttempt);
        }
        compositeEncoder.encodeIntElement(serialDescriptor, 4, failedTpat.retryCount);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || failedTpat.tpatKey != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, failedTpat.tpatKey);
        }
    }

    @NotNull
    public final HttpMethod component1() {
        return this.method;
    }

    @Nullable
    public final Map<String, String> component2() {
        return this.headers;
    }

    @Nullable
    public final String component3() {
        return this.body;
    }

    public final int component4() {
        return this.retryAttempt;
    }

    public final int component5() {
        return this.retryCount;
    }

    @Nullable
    public final String component6() {
        return this.tpatKey;
    }

    @NotNull
    public final FailedTpat copy(@NotNull HttpMethod httpMethod, @Nullable Map<String, String> map, @Nullable String str, int i, int i2, @Nullable String str2) {
        return new FailedTpat(httpMethod, map, str, i, i2, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FailedTpat)) {
            return false;
        }
        FailedTpat failedTpat = (FailedTpat) obj;
        if (this.method == failedTpat.method && Intrinsics.areEqual(this.headers, failedTpat.headers) && Intrinsics.areEqual(this.body, failedTpat.body) && this.retryAttempt == failedTpat.retryAttempt && this.retryCount == failedTpat.retryCount && Intrinsics.areEqual(this.tpatKey, failedTpat.tpatKey)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getBody() {
        return this.body;
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @NotNull
    public final HttpMethod getMethod() {
        return this.method;
    }

    public final int getRetryAttempt() {
        return this.retryAttempt;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    @Nullable
    public final String getTpatKey() {
        return this.tpatKey;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.method.hashCode() * 31;
        Map<String, String> map = this.headers;
        int i = 0;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        int i2 = (hashCode3 + hashCode) * 31;
        String str = this.body;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (((((i2 + hashCode2) * 31) + this.retryAttempt) * 31) + this.retryCount) * 31;
        String str2 = this.tpatKey;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i3 + i;
    }

    public final void setRetryAttempt(int i) {
        this.retryAttempt = i;
    }

    public final void setRetryCount(int i) {
        this.retryCount = i;
    }

    public final void setTpatKey(@Nullable String str) {
        this.tpatKey = str;
    }

    @NotNull
    public String toString() {
        return "FailedTpat(method=" + this.method + ", headers=" + this.headers + ", body=" + this.body + ", retryAttempt=" + this.retryAttempt + ", retryCount=" + this.retryCount + ", tpatKey=" + this.tpatKey + ')';
    }

    public FailedTpat(@NotNull HttpMethod httpMethod, @Nullable Map<String, String> map, @Nullable String str, int i, int i2, @Nullable String str2) {
        this.method = httpMethod;
        this.headers = map;
        this.body = str;
        this.retryAttempt = i;
        this.retryCount = i2;
        this.tpatKey = str2;
    }

    public /* synthetic */ FailedTpat(HttpMethod httpMethod, Map map, String str, int i, int i2, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        String str3;
        int i4;
        String str4;
        int i5;
        HttpMethod httpMethod2;
        Map map2;
        FailedTpat failedTpat;
        httpMethod = (i3 & 1) != 0 ? HttpMethod.GET : httpMethod;
        map = (i3 & 2) != 0 ? null : map;
        str = (i3 & 4) != 0 ? null : str;
        i = (i3 & 8) != 0 ? 0 : i;
        if ((i3 & 32) != 0) {
            str3 = null;
            i5 = i;
            i4 = i2;
            map2 = map;
            str4 = str;
            failedTpat = this;
            httpMethod2 = httpMethod;
        } else {
            str3 = str2;
            i4 = i2;
            str4 = str;
            i5 = i;
            httpMethod2 = httpMethod;
            map2 = map;
            failedTpat = this;
        }
        new FailedTpat(httpMethod2, map2, str4, i5, i4, str3);
    }
}
