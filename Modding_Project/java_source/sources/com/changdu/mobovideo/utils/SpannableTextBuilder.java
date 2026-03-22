package com.changdu.mobovideo.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/changdu/mobovideo/utils/SpannableTextBuilder;", "", "SpanConfig", "PlaceholderPosition", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSpannableStrUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpannableStrUtil.kt\ncom/changdu/mobovideo/utils/SpannableTextBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,656:1\n1869#2,2:657\n1011#2,2:659\n1869#2,2:661\n774#2:664\n865#2,2:665\n1869#2,2:667\n216#3:663\n217#3:669\n*S KotlinDebug\n*F\n+ 1 SpannableStrUtil.kt\ncom/changdu/mobovideo/utils/SpannableTextBuilder\n*L\n470#1:657,2\n478#1:659,2\n483#1:661,2\n500#1:664\n500#1:665,2\n500#1:667,2\n499#1:663\n499#1:669\n*E\n"})
/* loaded from: classes3.dex */
public final class SpannableTextBuilder {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0082\b\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u0017\u0010\u0012\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\f\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/changdu/mobovideo/utils/SpannableTextBuilder$PlaceholderPosition;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getPlaceholder", "placeholder", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "start", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PlaceholderPosition {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlaceholderPosition)) {
                return false;
            }
            PlaceholderPosition placeholderPosition = (PlaceholderPosition) obj;
            if (Intrinsics.areEqual(this.f5667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, placeholderPosition.f5667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == placeholderPosition.f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f5667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public String toString() {
            String str = this.f5667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = this.f5666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "PlaceholderPosition(placeholder=" + str + ", start=" + i + ")";
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0082\b\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u0017\u0010\u0014\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0018\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/changdu/mobovideo/utils/SpannableTextBuilder$SpanConfig;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getPlaceholder", "placeholder", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "getSpan", "()Ljava/lang/Object;", "span", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getFlag", "flag", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class SpanConfig {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f5669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpanConfig)) {
                return false;
            }
            SpanConfig spanConfig = (SpanConfig) obj;
            if (Intrinsics.areEqual(this.f5670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, spanConfig.f5670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, spanConfig.f5669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == spanConfig.f5668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f5670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f5669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public String toString() {
            String str = this.f5670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Object obj = this.f5669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = this.f5668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "SpanConfig(placeholder=" + str + ", span=" + obj + ", flag=" + i + ")";
        }
    }
}
