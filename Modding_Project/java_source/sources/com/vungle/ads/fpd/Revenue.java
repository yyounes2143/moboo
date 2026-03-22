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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 V2\u00020\u0001:\u0002UVBë\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0001\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bB\u0005¢\u0006\u0002\u0010\u001cJ\u000e\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u00103\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u00109\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0005J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0005J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0005J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0005J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\u0005J\u000e\u0010H\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\u0005J\u0016\u0010J\u001a\u00020\u00002\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010KJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0005J!\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020THÇ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b\u001d\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010 \u0012\u0004\b\u001f\u0010\u001cR\u001c\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010 \u0012\u0004\b!\u0010\u001cR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b\"\u0010\u001cR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b#\u0010\u001cR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b$\u0010\u001cR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b%\u0010\u001cR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b&\u0010\u001cR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b'\u0010\u001cR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b(\u0010\u001cR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b)\u0010\u001cR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b*\u0010\u001cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b+\u0010\u001cR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b,\u0010\u001cR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b-\u0010\u001cR \u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b.\u0010\u001cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u001e\u0012\u0004\b/\u0010\u001c¨\u0006W"}, d2 = {"Lcom/vungle/ads/fpd/Revenue;", "", "seen1", "", "totalEarningsUSD", "", "earningsByPlacementUSD", "topNAdomain", "", "", "isUserAPurchaser", "", "isUserASubscriber", "last7DaysTotalSpendUSD", "last7DaysMedianSpendUSD", "last7DaysMeanSpendUSD", "last30DaysTotalSpendUSD", "last30DaysMedianSpendUSD", "last30DaysMeanSpendUSD", "last7DaysUserPltvUSD", "last7DaysUserLtvUSD", "last30DaysUserPltvUSD", "last30DaysUserLtvUSD", "last7DaysPlacementFillRate", "last30DaysPlacementFillRate", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Float;Ljava/lang/Float;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "()V", "getEarningsByPlacementUSD$annotations", "Ljava/lang/Float;", "isUserAPurchaser$annotations", "Ljava/lang/Boolean;", "isUserASubscriber$annotations", "getLast30DaysMeanSpendUSD$annotations", "getLast30DaysMedianSpendUSD$annotations", "getLast30DaysPlacementFillRate$annotations", "getLast30DaysTotalSpendUSD$annotations", "getLast30DaysUserLtvUSD$annotations", "getLast30DaysUserPltvUSD$annotations", "getLast7DaysMeanSpendUSD$annotations", "getLast7DaysMedianSpendUSD$annotations", "getLast7DaysPlacementFillRate$annotations", "getLast7DaysTotalSpendUSD$annotations", "getLast7DaysUserLtvUSD$annotations", "getLast7DaysUserPltvUSD$annotations", "getTopNAdomain$annotations", "getTotalEarningsUSD$annotations", "setEarningsByPlacement", "earningsByPlacement", "setIsUserAPurchaser", "setIsUserASubscriber", "setLast30DaysMeanSpendUsd", "last30DaysMeanSpendUsd", "setLast30DaysMedianSpendUsd", "last30DaysMedianSpendUsd", "setLast30DaysPlacementFillRate", "setLast30DaysTotalSpendUsd", "last30DaysTotalSpendUsd", "setLast30DaysUserLtvUsd", "last30DaysUserLtvUsd", "setLast30DaysUserPltvUsd", "last30DaysUserPltvUsd", "setLast7DaysMeanSpendUsd", "last7DaysMeanSpendUsd", "setLast7DaysMedianSpendUsd", "last7DaysMedianSpendUsd", "setLast7DaysPlacementFillRate", "setLast7DaysTotalSpendUsd", "last7DaysTotalSpendUsd", "setLast7DaysUserLtvUsd", "last7DaysUserLtvUsd", "setLast7DaysUserPltvUsd", "last7DaysUserPltvUsd", "setTopNAdomain", "", "setTotalEarningsUsd", "totalEarningsUsd", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Serializable
/* loaded from: classes6.dex */
public final class Revenue {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Float earningsByPlacementUSD;
    @Nullable
    private Boolean isUserAPurchaser;
    @Nullable
    private Boolean isUserASubscriber;
    @Nullable
    private Float last30DaysMeanSpendUSD;
    @Nullable
    private Float last30DaysMedianSpendUSD;
    @Nullable
    private Float last30DaysPlacementFillRate;
    @Nullable
    private Float last30DaysTotalSpendUSD;
    @Nullable
    private Float last30DaysUserLtvUSD;
    @Nullable
    private Float last30DaysUserPltvUSD;
    @Nullable
    private Float last7DaysMeanSpendUSD;
    @Nullable
    private Float last7DaysMedianSpendUSD;
    @Nullable
    private Float last7DaysPlacementFillRate;
    @Nullable
    private Float last7DaysTotalSpendUSD;
    @Nullable
    private Float last7DaysUserLtvUSD;
    @Nullable
    private Float last7DaysUserPltvUSD;
    @Nullable
    private List<String> topNAdomain;
    @Nullable
    private Float totalEarningsUSD;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/fpd/Revenue$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/fpd/Revenue;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Revenue> serializer() {
            return Revenue$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public Revenue() {
    }

    @JvmStatic
    public static final void write$Self(@NotNull Revenue revenue, @NotNull CompositeEncoder compositeEncoder, @NotNull SerialDescriptor serialDescriptor) {
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) || revenue.totalEarningsUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, FloatSerializer.INSTANCE, revenue.totalEarningsUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || revenue.earningsByPlacementUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, FloatSerializer.INSTANCE, revenue.earningsByPlacementUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || revenue.topNAdomain != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, new ArrayListSerializer(StringSerializer.INSTANCE), revenue.topNAdomain);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || revenue.isUserAPurchaser != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, BooleanSerializer.INSTANCE, revenue.isUserAPurchaser);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || revenue.isUserASubscriber != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, BooleanSerializer.INSTANCE, revenue.isUserASubscriber);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || revenue.last7DaysTotalSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, FloatSerializer.INSTANCE, revenue.last7DaysTotalSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || revenue.last7DaysMedianSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, FloatSerializer.INSTANCE, revenue.last7DaysMedianSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || revenue.last7DaysMeanSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, FloatSerializer.INSTANCE, revenue.last7DaysMeanSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || revenue.last30DaysTotalSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, FloatSerializer.INSTANCE, revenue.last30DaysTotalSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || revenue.last30DaysMedianSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, FloatSerializer.INSTANCE, revenue.last30DaysMedianSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) || revenue.last30DaysMeanSpendUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, FloatSerializer.INSTANCE, revenue.last30DaysMeanSpendUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 11) || revenue.last7DaysUserPltvUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 11, FloatSerializer.INSTANCE, revenue.last7DaysUserPltvUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 12) || revenue.last7DaysUserLtvUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 12, FloatSerializer.INSTANCE, revenue.last7DaysUserLtvUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 13) || revenue.last30DaysUserPltvUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 13, FloatSerializer.INSTANCE, revenue.last30DaysUserPltvUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 14) || revenue.last30DaysUserLtvUSD != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 14, FloatSerializer.INSTANCE, revenue.last30DaysUserLtvUSD);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 15) || revenue.last7DaysPlacementFillRate != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 15, FloatSerializer.INSTANCE, revenue.last7DaysPlacementFillRate);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 16) || revenue.last30DaysPlacementFillRate != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 16, FloatSerializer.INSTANCE, revenue.last30DaysPlacementFillRate);
        }
    }

    @NotNull
    public final Revenue setEarningsByPlacement(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.earningsByPlacementUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setIsUserAPurchaser(boolean z) {
        this.isUserAPurchaser = Boolean.valueOf(z);
        return this;
    }

    @NotNull
    public final Revenue setIsUserASubscriber(boolean z) {
        this.isUserASubscriber = Boolean.valueOf(z);
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysMeanSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMeanSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysMedianSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMedianSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysPlacementFillRate(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.last30DaysPlacementFillRate = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysTotalSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysTotalSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysUserLtvUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserLtvUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysUserPltvUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserPltvUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysMeanSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMeanSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysMedianSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMedianSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysPlacementFillRate(float f) {
        if (RangeUtil.INSTANCE.isInRange(f, 0.0f, 100.0f)) {
            this.last7DaysPlacementFillRate = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysTotalSpendUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysTotalSpendUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysUserLtvUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserLtvUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysUserPltvUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserPltvUSD = Float.valueOf(f);
        }
        return this;
    }

    @NotNull
    public final Revenue setTopNAdomain(@Nullable List<String> list) {
        List<String> list2;
        if (list != null) {
            list2 = CollectionsKt.toMutableList((Collection) list);
        } else {
            list2 = null;
        }
        this.topNAdomain = list2;
        return this;
    }

    @NotNull
    public final Revenue setTotalEarningsUsd(float f) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f, 0.0f, 0.0f, 4, (Object) null)) {
            this.totalEarningsUSD = Float.valueOf(f);
        }
        return this;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Revenue(int i, @SerialName("total_earnings_usd") Float f, @SerialName("earnings_by_placement_usd") Float f2, @SerialName("top_n_adomain") List list, @SerialName("is_user_a_purchaser") Boolean bool, @SerialName("is_user_a_subscriber") Boolean bool2, @SerialName("last_7_days_total_spend_usd") Float f3, @SerialName("last_7_days_median_spend_usd") Float f4, @SerialName("last_7_days_mean_spend_usd") Float f5, @SerialName("last_30_days_total_spend_usd") Float f6, @SerialName("last_30_days_median_spend_usd") Float f7, @SerialName("last_30_days_mean_spend_usd") Float f8, @SerialName("last_7_days_user_pltv_usd") Float f9, @SerialName("last_7_days_user_ltv_usd") Float f10, @SerialName("last_30_days_user_pltv_usd") Float f11, @SerialName("last_30_days_user_ltv_usd") Float f12, @SerialName("last_7_days_placement_fill_rate") Float f13, @SerialName("last_30_days_placement_fill_rate") Float f14, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.totalEarningsUSD = null;
        } else {
            this.totalEarningsUSD = f;
        }
        if ((i & 2) == 0) {
            this.earningsByPlacementUSD = null;
        } else {
            this.earningsByPlacementUSD = f2;
        }
        if ((i & 4) == 0) {
            this.topNAdomain = null;
        } else {
            this.topNAdomain = list;
        }
        if ((i & 8) == 0) {
            this.isUserAPurchaser = null;
        } else {
            this.isUserAPurchaser = bool;
        }
        if ((i & 16) == 0) {
            this.isUserASubscriber = null;
        } else {
            this.isUserASubscriber = bool2;
        }
        if ((i & 32) == 0) {
            this.last7DaysTotalSpendUSD = null;
        } else {
            this.last7DaysTotalSpendUSD = f3;
        }
        if ((i & 64) == 0) {
            this.last7DaysMedianSpendUSD = null;
        } else {
            this.last7DaysMedianSpendUSD = f4;
        }
        if ((i & 128) == 0) {
            this.last7DaysMeanSpendUSD = null;
        } else {
            this.last7DaysMeanSpendUSD = f5;
        }
        if ((i & 256) == 0) {
            this.last30DaysTotalSpendUSD = null;
        } else {
            this.last30DaysTotalSpendUSD = f6;
        }
        if ((i & 512) == 0) {
            this.last30DaysMedianSpendUSD = null;
        } else {
            this.last30DaysMedianSpendUSD = f7;
        }
        if ((i & 1024) == 0) {
            this.last30DaysMeanSpendUSD = null;
        } else {
            this.last30DaysMeanSpendUSD = f8;
        }
        if ((i & 2048) == 0) {
            this.last7DaysUserPltvUSD = null;
        } else {
            this.last7DaysUserPltvUSD = f9;
        }
        if ((i & 4096) == 0) {
            this.last7DaysUserLtvUSD = null;
        } else {
            this.last7DaysUserLtvUSD = f10;
        }
        if ((i & 8192) == 0) {
            this.last30DaysUserPltvUSD = null;
        } else {
            this.last30DaysUserPltvUSD = f11;
        }
        if ((i & 16384) == 0) {
            this.last30DaysUserLtvUSD = null;
        } else {
            this.last30DaysUserLtvUSD = f12;
        }
        if ((32768 & i) == 0) {
            this.last7DaysPlacementFillRate = null;
        } else {
            this.last7DaysPlacementFillRate = f13;
        }
        if ((i & 65536) == 0) {
            this.last30DaysPlacementFillRate = null;
        } else {
            this.last30DaysPlacementFillRate = f14;
        }
    }

    @SerialName("earnings_by_placement_usd")
    private static /* synthetic */ void getEarningsByPlacementUSD$annotations() {
    }

    @SerialName("last_30_days_mean_spend_usd")
    private static /* synthetic */ void getLast30DaysMeanSpendUSD$annotations() {
    }

    @SerialName("last_30_days_median_spend_usd")
    private static /* synthetic */ void getLast30DaysMedianSpendUSD$annotations() {
    }

    @SerialName("last_30_days_placement_fill_rate")
    private static /* synthetic */ void getLast30DaysPlacementFillRate$annotations() {
    }

    @SerialName("last_30_days_total_spend_usd")
    private static /* synthetic */ void getLast30DaysTotalSpendUSD$annotations() {
    }

    @SerialName("last_30_days_user_ltv_usd")
    private static /* synthetic */ void getLast30DaysUserLtvUSD$annotations() {
    }

    @SerialName("last_30_days_user_pltv_usd")
    private static /* synthetic */ void getLast30DaysUserPltvUSD$annotations() {
    }

    @SerialName("last_7_days_mean_spend_usd")
    private static /* synthetic */ void getLast7DaysMeanSpendUSD$annotations() {
    }

    @SerialName("last_7_days_median_spend_usd")
    private static /* synthetic */ void getLast7DaysMedianSpendUSD$annotations() {
    }

    @SerialName("last_7_days_placement_fill_rate")
    private static /* synthetic */ void getLast7DaysPlacementFillRate$annotations() {
    }

    @SerialName("last_7_days_total_spend_usd")
    private static /* synthetic */ void getLast7DaysTotalSpendUSD$annotations() {
    }

    @SerialName("last_7_days_user_ltv_usd")
    private static /* synthetic */ void getLast7DaysUserLtvUSD$annotations() {
    }

    @SerialName("last_7_days_user_pltv_usd")
    private static /* synthetic */ void getLast7DaysUserPltvUSD$annotations() {
    }

    @SerialName("top_n_adomain")
    private static /* synthetic */ void getTopNAdomain$annotations() {
    }

    @SerialName("total_earnings_usd")
    private static /* synthetic */ void getTotalEarningsUSD$annotations() {
    }

    @SerialName("is_user_a_purchaser")
    private static /* synthetic */ void isUserAPurchaser$annotations() {
    }

    @SerialName("is_user_a_subscriber")
    private static /* synthetic */ void isUserASubscriber$annotations() {
    }
}
