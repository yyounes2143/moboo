package com.fluttercandies.photo_manager.core.entity.filter;

import com.applovin.sdk.AppLovinMediationProvider;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000  2\u00020\u0001:\u0003 !\"B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u0006J\u0013\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007¢\u0006\u0004\b\u000b\u0010\tR\"\u0010\u000e\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\n\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Z", "isShowTitle", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;)V", "sizeConstraint", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;", "()Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;)V", "durationConstraint", "Companion", "SizeConstraint", "DurationConstraint", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonFilterOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonFilterOption.kt\ncom/fluttercandies/photo_manager/core/entity/filter/FilterCond\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,247:1\n1563#2:248\n1634#2,3:249\n37#3:252\n36#3,3:253\n37#3:260\n36#3,3:261\n11228#4:256\n11563#4,3:257\n*S KotlinDebug\n*F\n+ 1 CommonFilterOption.kt\ncom/fluttercandies/photo_manager/core/entity/filter/FilterCond\n*L\n197#1:248\n197#1:249,3\n199#1:252\n199#1:253,3\n213#1:260\n213#1:261,3\n213#1:256\n213#1:257,3\n*E\n"})
/* loaded from: classes4.dex */
public final class FilterCond {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DurationConstraint f7445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SizeConstraint f7446Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7447Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0002X\u0083T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$Companion;", "", "<init>", "()V", "WIDTH_KEY", "", "HEIGHT_KEY", "DURATION_KEY", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\"\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0010\u001a\u0004\b\u0005\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$DurationConstraint;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "min", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", AppLovinMediationProvider.MAX, "", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "allowNullable", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DurationConstraint {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f7450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f7449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f7448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0006\u001a\u0004\b\u0010\u0010\b\"\u0004\b\u0011\u0010\nR\"\u0010\u0014\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\u0013\u0010\nR\"\u0010\u001a\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0005\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond$SizeConstraint;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "minWidth", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "maxWidth", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "minHeight", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "maxHeight", "", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "ignoreSize", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class SizeConstraint {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f7455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f7453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f7454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f7452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f7451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "width >= ? AND width <= ? AND height >= ? AND height <=?";
    }

    @NotNull
    public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List<Number> list = ArraysKt.toList(new Integer[]{Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())});
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Number number : list) {
            arrayList.add(String.valueOf(number.intValue()));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SizeConstraint sizeConstraint) {
        this.f7446Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sizeConstraint;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f7447Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DurationConstraint durationConstraint) {
        this.f7445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = durationConstraint;
    }

    @NotNull
    public final SizeConstraint Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SizeConstraint sizeConstraint = this.f7446Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sizeConstraint != null) {
            return sizeConstraint;
        }
        return null;
    }

    @NotNull
    public final DurationConstraint Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DurationConstraint durationConstraint = this.f7445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationConstraint != null) {
            return durationConstraint;
        }
        return null;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return "duration >=? AND duration <=?";
        }
        return "( duration IS NULL OR ( duration >=? AND duration <=? ) )";
    }

    @NotNull
    public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Long[] lArr = {Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())};
        ArrayList arrayList = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            arrayList.add(String.valueOf(lArr[i].longValue()));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
