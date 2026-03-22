package com.vungle.ads.fpd;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000  2\u00020\u0001:\u0002\u001f BI\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0005¢\u0006\u0002\u0010\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0003J!\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eHÇ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\r\u0012\u0004\b\f\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\r\u0012\u0004\b\u000e\u0010\u000bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\r\u0012\u0004\b\u000f\u0010\u000bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\r\u0012\u0004\b\u0010\u0010\u000b¨\u0006!"}, d2 = {"Lcom/vungle/ads/fpd/Demographic;", "", "seen1", "", "ageRange", "lengthOfResidence", "medianHomeValueUSD", "monthlyHousingPaymentUSD", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "()V", "getAgeRange$annotations", "Ljava/lang/Integer;", "getLengthOfResidence$annotations", "getMedianHomeValueUSD$annotations", "getMonthlyHousingPaymentUSD$annotations", "setAgeRange", "age", "setLengthOfResidence", "setMedianHomeValueUSD", "homeValue", "setMonthlyHousingCosts", "housingCost", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class Demographic {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Integer ageRange;
    @Nullable
    private Integer lengthOfResidence;
    @Nullable
    private Integer medianHomeValueUSD;
    @Nullable
    private Integer monthlyHousingPaymentUSD;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/fpd/Demographic$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/fpd/Demographic;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Demographic> serializer() {
            return Demographic$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public Demographic() {
    }

    @JvmStatic
    public static final void write$Self(@NotNull Demographic demographic, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || demographic.ageRange != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, demographic.ageRange);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || demographic.lengthOfResidence != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, IntSerializer.INSTANCE, demographic.lengthOfResidence);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || demographic.medianHomeValueUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, demographic.medianHomeValueUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || demographic.monthlyHousingPaymentUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, IntSerializer.INSTANCE, demographic.monthlyHousingPaymentUSD);
        }
    }

    @NotNull
    public final Demographic setAgeRange(int i) {
        this.ageRange = Integer.valueOf(AgeRange.Companion.fromAge$vungle_ads_release(i).getId());
        return this;
    }

    @NotNull
    public final Demographic setLengthOfResidence(int i) {
        this.lengthOfResidence = Integer.valueOf(LengthOfResidence.Companion.fromYears$vungle_ads_release(i).getId());
        return this;
    }

    @NotNull
    public final Demographic setMedianHomeValueUSD(int i) {
        this.medianHomeValueUSD = Integer.valueOf(MedianHomeValueUSD.Companion.fromPrice$vungle_ads_release(i).getId());
        return this;
    }

    @NotNull
    public final Demographic setMonthlyHousingCosts(int i) {
        this.monthlyHousingPaymentUSD = Integer.valueOf(MonthlyHousingCosts.Companion.fromCost$vungle_ads_release(i).getId());
        return this;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Demographic(int i, @SerialName("age_range") Integer num, @SerialName("length_of_residence") Integer num2, @SerialName("median_home_value_usd") Integer num3, @SerialName("monthly_housing_payment_usd") Integer num4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.ageRange = null;
        } else {
            this.ageRange = num;
        }
        if ((i & 2) == 0) {
            this.lengthOfResidence = null;
        } else {
            this.lengthOfResidence = num2;
        }
        if ((i & 4) == 0) {
            this.medianHomeValueUSD = null;
        } else {
            this.medianHomeValueUSD = num3;
        }
        if ((i & 8) == 0) {
            this.monthlyHousingPaymentUSD = null;
        } else {
            this.monthlyHousingPaymentUSD = num4;
        }
    }

    @SerialName("age_range")
    private static /* synthetic */ void getAgeRange$annotations() {
    }

    @SerialName("length_of_residence")
    private static /* synthetic */ void getLengthOfResidence$annotations() {
    }

    @SerialName("median_home_value_usd")
    private static /* synthetic */ void getMedianHomeValueUSD$annotations() {
    }

    @SerialName("monthly_housing_payment_usd")
    private static /* synthetic */ void getMonthlyHousingPaymentUSD$annotations() {
    }
}
