package com.vungle.ads.internal.model;

import android.util.Base64;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 42\u00020\u0001:\u000234BG\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB/\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0003J8\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\"\u001a\u0004\u0018\u00010\nJ\b\u0010#\u001a\u0004\u0018\u00010\u0006J\b\u0010$\u001a\u0004\u0018\u00010\u0006J\b\u0010%\u001a\u0004\u0018\u00010\u0006J\b\u0010&\u001a\u0004\u0018\u00010\u0006J\u0010\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)H\u0002J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0006HÖ\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202HÇ\u0001R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00148\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018¨\u00065"}, d2 = {"Lcom/vungle/ads/internal/model/BidPayload;", "", "seen1", "", "version", "adunit", "", "impression", "", "ad", "Lcom/vungle/ads/internal/model/AdPayload;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V", "getAdunit", "()Ljava/lang/String;", "getImpression", "()Ljava/util/List;", "json", "Lkotlinx/serialization/json/Json;", "getJson$annotations", "()V", MobileAdsBridge.versionMethodName, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vungle/ads/internal/model/BidPayload;", "equals", "", "other", "getAdPayload", "getCreativeId", "getDecodedAdsResponse", "getEventId", "getPlacementId", "gzipDecode", "compressed", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class BidPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final AdPayload ad;
    @Nullable
    private final String adunit;
    @Nullable
    private final List<String> impression;
    @NotNull
    private final Json json;
    @Nullable
    private final Integer version;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/BidPayload$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/BidPayload;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<BidPayload> serializer() {
            return BidPayload$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public BidPayload() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BidPayload copy$default(BidPayload bidPayload, Integer num, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            num = bidPayload.version;
        }
        if ((i & 2) != 0) {
            str = bidPayload.adunit;
        }
        if ((i & 4) != 0) {
            list = bidPayload.impression;
        }
        return bidPayload.copy(num, str, list);
    }

    private final String gzipDecode(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 1024);
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(gZIPInputStream, null);
                    CloseableKt.closeFinally(byteArrayInputStream, null);
                    return byteArrayOutputStream.toString();
                }
            }
        } finally {
        }
    }

    @JvmStatic
    public static final void write$Self(@NotNull BidPayload bidPayload, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        String decodedAdsResponse;
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || bidPayload.version != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, bidPayload.version);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || bidPayload.adunit != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, bidPayload.adunit);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || bidPayload.impression != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, new ArrayListSerializer(StringSerializer.INSTANCE), bidPayload.impression);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3)) {
            AdPayload adPayload = bidPayload.ad;
            AdPayload adPayload2 = null;
            if (bidPayload.adunit != null && (decodedAdsResponse = bidPayload.getDecodedAdsResponse()) != null) {
                Json json = bidPayload.json;
                adPayload2 = (AdPayload) json.decodeFromString(SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(AdPayload.class)), decodedAdsResponse);
            }
            if (Intrinsics.areEqual(adPayload, adPayload2)) {
                return;
            }
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, AdPayload$$serializer.INSTANCE, bidPayload.ad);
    }

    @Nullable
    public final Integer component1() {
        return this.version;
    }

    @Nullable
    public final String component2() {
        return this.adunit;
    }

    @Nullable
    public final List<String> component3() {
        return this.impression;
    }

    @NotNull
    public final BidPayload copy(@Nullable Integer num, @Nullable String str, @Nullable List<String> list) {
        return new BidPayload(num, str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BidPayload)) {
            return false;
        }
        BidPayload bidPayload = (BidPayload) obj;
        if (Intrinsics.areEqual(this.version, bidPayload.version) && Intrinsics.areEqual(this.adunit, bidPayload.adunit) && Intrinsics.areEqual(this.impression, bidPayload.impression)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AdPayload getAdPayload() {
        return this.ad;
    }

    @Nullable
    public final String getAdunit() {
        return this.adunit;
    }

    @Nullable
    public final String getCreativeId() {
        AdPayload adPayload = this.ad;
        if (adPayload != null) {
            return adPayload.getCreativeId();
        }
        return null;
    }

    @Nullable
    public final String getDecodedAdsResponse() throws Throwable {
        byte[] decode = Base64.decode(this.adunit, 0);
        if (decode != null) {
            return gzipDecode(decode);
        }
        return null;
    }

    @Nullable
    public final String getEventId() {
        AdPayload adPayload = this.ad;
        if (adPayload != null) {
            return adPayload.eventId();
        }
        return null;
    }

    @Nullable
    public final List<String> getImpression() {
        return this.impression;
    }

    @Nullable
    public final String getPlacementId() {
        AdPayload adPayload = this.ad;
        if (adPayload != null) {
            return adPayload.placementId();
        }
        return null;
    }

    @Nullable
    public final Integer getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.version;
        int i = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i2 = hashCode * 31;
        String str = this.adunit;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        List<String> list = this.impression;
        if (list != null) {
            i = list.hashCode();
        }
        return i3 + i;
    }

    @NotNull
    public String toString() {
        return "BidPayload(version=" + this.version + ", adunit=" + this.adunit + ", impression=" + this.impression + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ BidPayload(int i, Integer num, String str, List list, AdPayload adPayload, SerializationConstructorMarker serializationConstructorMarker) {
        String decodedAdsResponse;
        AdPayload adPayload2 = null;
        if ((i & 1) == 0) {
            this.version = null;
        } else {
            this.version = num;
        }
        if ((i & 2) == 0) {
            this.adunit = null;
        } else {
            this.adunit = str;
        }
        if ((i & 4) == 0) {
            this.impression = null;
        } else {
            this.impression = list;
        }
        Json Json$default = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
                invoke2(jsonBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
                jsonBuilder.setIgnoreUnknownKeys(true);
                jsonBuilder.setEncodeDefaults(true);
                jsonBuilder.setExplicitNulls(false);
            }
        }, 1, null);
        this.json = Json$default;
        if ((i & 8) != 0) {
            this.ad = adPayload;
            return;
        }
        if (this.adunit != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            adPayload2 = (AdPayload) Json$default.decodeFromString(SerializersKt.serializer(Json$default.getSerializersModule(), Reflection.typeOf(AdPayload.class)), decodedAdsResponse);
        }
        this.ad = adPayload2;
    }

    public BidPayload(@Nullable Integer num, @Nullable String str, @Nullable List<String> list) {
        String decodedAdsResponse;
        this.version = num;
        this.adunit = str;
        this.impression = list;
        AdPayload adPayload = null;
        Json Json$default = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
                invoke2(jsonBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
                jsonBuilder.setIgnoreUnknownKeys(true);
                jsonBuilder.setEncodeDefaults(true);
                jsonBuilder.setExplicitNulls(false);
            }
        }, 1, null);
        this.json = Json$default;
        if (str != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            adPayload = (AdPayload) Json$default.decodeFromString(SerializersKt.serializer(Json$default.getSerializersModule(), Reflection.typeOf(AdPayload.class)), decodedAdsResponse);
        }
        this.ad = adPayload;
    }

    @Transient
    private static /* synthetic */ void getJson$annotations() {
    }

    public /* synthetic */ BidPayload(Integer num, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : list);
    }
}
