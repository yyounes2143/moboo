package com.unity3d.ads.adplayer;

import android.app.Activity;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0011J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0083\u0001\u0010&\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010'\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0007HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u000f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0014R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R!\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006,"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidShowOptions;", "Lcom/unity3d/ads/adplayer/ShowOptions;", "activity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "unityAdsShowOptions", "", "", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "isScarAd", "", "scarQueryId", "scarAdString", "scarAdUnitId", "isOfferwallAd", "offerwallPlacementName", "(Ljava/lang/ref/WeakReference;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getActivity", "()Ljava/lang/ref/WeakReference;", "()Z", "getOfferwallPlacementName", "()Ljava/lang/String;", "getPlacementId", "getScarAdString", "getScarAdUnitId", "getScarQueryId", "getUnityAdsShowOptions", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidShowOptions implements ShowOptions {
    @NotNull
    private final WeakReference<Activity> activity;
    private final boolean isOfferwallAd;
    private final boolean isScarAd;
    @Nullable
    private final String offerwallPlacementName;
    @Nullable
    private final String placementId;
    @Nullable
    private final String scarAdString;
    @Nullable
    private final String scarAdUnitId;
    @Nullable
    private final String scarQueryId;
    @Nullable
    private final Map<String, Object> unityAdsShowOptions;

    public AndroidShowOptions(@NotNull WeakReference<Activity> weakReference, @Nullable Map<String, ? extends Object> map, @Nullable String str, boolean z, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z2, @Nullable String str5) {
        this.activity = weakReference;
        this.unityAdsShowOptions = map;
        this.placementId = str;
        this.isScarAd = z;
        this.scarQueryId = str2;
        this.scarAdString = str3;
        this.scarAdUnitId = str4;
        this.isOfferwallAd = z2;
        this.offerwallPlacementName = str5;
    }

    public static /* synthetic */ AndroidShowOptions copy$default(AndroidShowOptions androidShowOptions, WeakReference weakReference, Map map, String str, boolean z, String str2, String str3, String str4, boolean z2, String str5, int i, Object obj) {
        WeakReference<Activity> weakReference2 = weakReference;
        if ((i & 1) != 0) {
            weakReference2 = androidShowOptions.activity;
        }
        Map<String, Object> map2 = map;
        if ((i & 2) != 0) {
            map2 = androidShowOptions.unityAdsShowOptions;
        }
        if ((i & 4) != 0) {
            str = androidShowOptions.placementId;
        }
        if ((i & 8) != 0) {
            z = androidShowOptions.isScarAd;
        }
        if ((i & 16) != 0) {
            str2 = androidShowOptions.scarQueryId;
        }
        if ((i & 32) != 0) {
            str3 = androidShowOptions.scarAdString;
        }
        if ((i & 64) != 0) {
            str4 = androidShowOptions.scarAdUnitId;
        }
        if ((i & 128) != 0) {
            z2 = androidShowOptions.isOfferwallAd;
        }
        if ((i & 256) != 0) {
            str5 = androidShowOptions.offerwallPlacementName;
        }
        boolean z3 = z2;
        String str6 = str5;
        String str7 = str3;
        String str8 = str4;
        String str9 = str2;
        String str10 = str;
        return androidShowOptions.copy(weakReference2, map2, str10, z, str9, str7, str8, z3, str6);
    }

    @NotNull
    public final WeakReference<Activity> component1() {
        return this.activity;
    }

    @Nullable
    public final Map<String, Object> component2() {
        return this.unityAdsShowOptions;
    }

    @Nullable
    public final String component3() {
        return this.placementId;
    }

    public final boolean component4() {
        return this.isScarAd;
    }

    @Nullable
    public final String component5() {
        return this.scarQueryId;
    }

    @Nullable
    public final String component6() {
        return this.scarAdString;
    }

    @Nullable
    public final String component7() {
        return this.scarAdUnitId;
    }

    public final boolean component8() {
        return this.isOfferwallAd;
    }

    @Nullable
    public final String component9() {
        return this.offerwallPlacementName;
    }

    @NotNull
    public final AndroidShowOptions copy(@NotNull WeakReference<Activity> weakReference, @Nullable Map<String, ? extends Object> map, @Nullable String str, boolean z, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z2, @Nullable String str5) {
        return new AndroidShowOptions(weakReference, map, str, z, str2, str3, str4, z2, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidShowOptions)) {
            return false;
        }
        AndroidShowOptions androidShowOptions = (AndroidShowOptions) obj;
        if (Intrinsics.areEqual(this.activity, androidShowOptions.activity) && Intrinsics.areEqual(this.unityAdsShowOptions, androidShowOptions.unityAdsShowOptions) && Intrinsics.areEqual(this.placementId, androidShowOptions.placementId) && this.isScarAd == androidShowOptions.isScarAd && Intrinsics.areEqual(this.scarQueryId, androidShowOptions.scarQueryId) && Intrinsics.areEqual(this.scarAdString, androidShowOptions.scarAdString) && Intrinsics.areEqual(this.scarAdUnitId, androidShowOptions.scarAdUnitId) && this.isOfferwallAd == androidShowOptions.isOfferwallAd && Intrinsics.areEqual(this.offerwallPlacementName, androidShowOptions.offerwallPlacementName)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final WeakReference<Activity> getActivity() {
        return this.activity;
    }

    @Nullable
    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    @Nullable
    public final String getPlacementId() {
        return this.placementId;
    }

    @Nullable
    public final String getScarAdString() {
        return this.scarAdString;
    }

    @Nullable
    public final String getScarAdUnitId() {
        return this.scarAdUnitId;
    }

    @Nullable
    public final String getScarQueryId() {
        return this.scarQueryId;
    }

    @Nullable
    public final Map<String, Object> getUnityAdsShowOptions() {
        return this.unityAdsShowOptions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = this.activity.hashCode() * 31;
        Map<String, Object> map = this.unityAdsShowOptions;
        int i = 0;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        int i2 = (hashCode6 + hashCode) * 31;
        String str = this.placementId;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        boolean z = this.isScarAd;
        int i4 = 1;
        int i5 = z;
        if (z != 0) {
            i5 = 1;
        }
        int i6 = (i3 + i5) * 31;
        String str2 = this.scarQueryId;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i7 = (i6 + hashCode3) * 31;
        String str3 = this.scarAdString;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i8 = (i7 + hashCode4) * 31;
        String str4 = this.scarAdUnitId;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i9 = (i8 + hashCode5) * 31;
        boolean z2 = this.isOfferwallAd;
        if (!z2) {
            i4 = z2 ? 1 : 0;
        }
        int i10 = (i9 + i4) * 31;
        String str5 = this.offerwallPlacementName;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return i10 + i;
    }

    public final boolean isOfferwallAd() {
        return this.isOfferwallAd;
    }

    public final boolean isScarAd() {
        return this.isScarAd;
    }

    @NotNull
    public String toString() {
        return "AndroidShowOptions(activity=" + this.activity + ", unityAdsShowOptions=" + this.unityAdsShowOptions + ", placementId=" + this.placementId + ", isScarAd=" + this.isScarAd + ", scarQueryId=" + this.scarQueryId + ", scarAdString=" + this.scarAdString + ", scarAdUnitId=" + this.scarAdUnitId + ", isOfferwallAd=" + this.isOfferwallAd + ", offerwallPlacementName=" + this.offerwallPlacementName + ')';
    }

    public /* synthetic */ AndroidShowOptions(WeakReference weakReference, Map map, String str, boolean z, String str2, String str3, String str4, boolean z2, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(weakReference, map, (i & 4) != 0 ? null : str, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? false : z2, (i & 256) != 0 ? null : str5);
    }
}
