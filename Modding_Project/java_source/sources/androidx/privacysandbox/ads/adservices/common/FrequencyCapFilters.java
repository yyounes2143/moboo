package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.FrequencyCapFilters;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bBG\b\u0007\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\bJ\r\u0010\u000e\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0003R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001c"}, d2 = {"Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;", "", "keyedFrequencyCapsForWinEvents", "", "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;", "keyedFrequencyCapsForImpressionEvents", "keyedFrequencyCapsForViewEvents", "keyedFrequencyCapsForClickEvents", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getKeyedFrequencyCapsForClickEvents", "()Ljava/util/List;", "getKeyedFrequencyCapsForImpressionEvents", "getKeyedFrequencyCapsForViewEvents", "getKeyedFrequencyCapsForWinEvents", "convertToAdServices", "Landroid/adservices/common/FrequencyCapFilters;", "convertToAdServices$ads_adservices_release", "equals", "", "other", "hashCode", "", "toString", "", "", "Landroid/adservices/common/KeyedFrequencyCap;", "AdEventType", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes.dex */
public final class FrequencyCapFilters {
    public static final int AD_EVENT_TYPE_CLICK = 3;
    public static final int AD_EVENT_TYPE_IMPRESSION = 1;
    public static final int AD_EVENT_TYPE_VIEW = 2;
    public static final int AD_EVENT_TYPE_WIN = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$AdEventType;", "", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface AdEventType {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;", "", "()V", "AD_EVENT_TYPE_CLICK", "", "AD_EVENT_TYPE_IMPRESSION", "AD_EVENT_TYPE_VIEW", "AD_EVENT_TYPE_WIN", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @JvmOverloads
    public FrequencyCapFilters() {
        this(null, null, null, null, 15, null);
    }

    @RequiresExtension.Container({@RequiresExtension(extension = 1000000, version = 8), @RequiresExtension(extension = 31, version = 9)})
    private final List<android.adservices.common.KeyedFrequencyCap> convertToAdServices(List<KeyedFrequencyCap> list) {
        ArrayList arrayList = new ArrayList();
        for (KeyedFrequencyCap keyedFrequencyCap : list) {
            arrayList.add(keyedFrequencyCap.convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = 1000000, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.FrequencyCapFilters convertToAdServices$ads_adservices_release() {
        FrequencyCapFilters.Builder keyedFrequencyCapsForWinEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForImpressionEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForViewEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForClickEvents;
        android.adservices.common.FrequencyCapFilters build;
        keyedFrequencyCapsForWinEvents = Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setKeyedFrequencyCapsForWinEvents(convertToAdServices(this.keyedFrequencyCapsForWinEvents));
        keyedFrequencyCapsForImpressionEvents = keyedFrequencyCapsForWinEvents.setKeyedFrequencyCapsForImpressionEvents(convertToAdServices(this.keyedFrequencyCapsForImpressionEvents));
        keyedFrequencyCapsForViewEvents = keyedFrequencyCapsForImpressionEvents.setKeyedFrequencyCapsForViewEvents(convertToAdServices(this.keyedFrequencyCapsForViewEvents));
        keyedFrequencyCapsForClickEvents = keyedFrequencyCapsForViewEvents.setKeyedFrequencyCapsForClickEvents(convertToAdServices(this.keyedFrequencyCapsForClickEvents));
        build = keyedFrequencyCapsForClickEvents.build();
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FrequencyCapFilters)) {
            return false;
        }
        FrequencyCapFilters frequencyCapFilters = (FrequencyCapFilters) obj;
        if (Intrinsics.areEqual(this.keyedFrequencyCapsForWinEvents, frequencyCapFilters.keyedFrequencyCapsForWinEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForImpressionEvents, frequencyCapFilters.keyedFrequencyCapsForImpressionEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForViewEvents, frequencyCapFilters.keyedFrequencyCapsForViewEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForClickEvents, frequencyCapFilters.keyedFrequencyCapsForClickEvents)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForClickEvents() {
        return this.keyedFrequencyCapsForClickEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForImpressionEvents() {
        return this.keyedFrequencyCapsForImpressionEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForViewEvents() {
        return this.keyedFrequencyCapsForViewEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForWinEvents() {
        return this.keyedFrequencyCapsForWinEvents;
    }

    public int hashCode() {
        return (((((this.keyedFrequencyCapsForWinEvents.hashCode() * 31) + this.keyedFrequencyCapsForImpressionEvents.hashCode()) * 31) + this.keyedFrequencyCapsForViewEvents.hashCode()) * 31) + this.keyedFrequencyCapsForClickEvents.hashCode();
    }

    @NotNull
    public String toString() {
        return "FrequencyCapFilters: keyedFrequencyCapsForWinEvents=" + this.keyedFrequencyCapsForWinEvents + ", keyedFrequencyCapsForImpressionEvents=" + this.keyedFrequencyCapsForImpressionEvents + ", keyedFrequencyCapsForViewEvents=" + this.keyedFrequencyCapsForViewEvents + ", keyedFrequencyCapsForClickEvents=" + this.keyedFrequencyCapsForClickEvents;
    }

    @JvmOverloads
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> list) {
        this(list, null, null, null, 14, null);
    }

    @JvmOverloads
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> list, @NotNull List<KeyedFrequencyCap> list2) {
        this(list, list2, null, null, 12, null);
    }

    @JvmOverloads
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> list, @NotNull List<KeyedFrequencyCap> list2, @NotNull List<KeyedFrequencyCap> list3) {
        this(list, list2, list3, null, 8, null);
    }

    @JvmOverloads
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> list, @NotNull List<KeyedFrequencyCap> list2, @NotNull List<KeyedFrequencyCap> list3, @NotNull List<KeyedFrequencyCap> list4) {
        this.keyedFrequencyCapsForWinEvents = list;
        this.keyedFrequencyCapsForImpressionEvents = list2;
        this.keyedFrequencyCapsForViewEvents = list3;
        this.keyedFrequencyCapsForClickEvents = list4;
    }

    public /* synthetic */ FrequencyCapFilters(List list, List list2, List list3, List list4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt.emptyList() : list3, (i & 8) != 0 ? CollectionsKt.emptyList() : list4);
    }
}
