package com.unity3d.ads.beta;

import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0001\rB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/beta/LoadOptions;", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "", LegacyLoadUseCase.KEY_AD_MARKUP, "extras", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getAdMarkup", "()Ljava/lang/String;", "getExtras", "()Ljava/util/Map;", "getPlacementId", "Builder", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class LoadOptions {
    @Nullable
    private final String adMarkup;
    @NotNull
    private final Map<String, String> extras;
    @NotNull
    private final String placementId;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/unity3d/ads/beta/LoadOptions$Builder;", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "", "(Ljava/lang/String;)V", LegacyLoadUseCase.KEY_AD_MARKUP, "extras", "", "build", "Lcom/unity3d/ads/beta/LoadOptions;", "withAdMarkup", "withExtras", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Builder {
        @Nullable
        private String adMarkup;
        @NotNull
        private final Map<String, String> extras = new LinkedHashMap();
        @NotNull
        private final String placementId;

        public Builder(@NotNull String str) {
            this.placementId = str;
        }

        @NotNull
        public final LoadOptions build() {
            return new LoadOptions(this.placementId, this.adMarkup, this.extras);
        }

        @NotNull
        public final Builder withAdMarkup(@NotNull String str) {
            this.adMarkup = str;
            return this;
        }

        @NotNull
        public final Builder withExtras(@NotNull Map<String, String> map) {
            this.extras.putAll(map);
            return this;
        }
    }

    public LoadOptions(@NotNull String str, @Nullable String str2, @NotNull Map<String, String> map) {
        this.placementId = str;
        this.adMarkup = str2;
        this.extras = map;
    }

    @Nullable
    public final String getAdMarkup() {
        return this.adMarkup;
    }

    @NotNull
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    public /* synthetic */ LoadOptions(String str, String str2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? MapsKt.emptyMap() : map);
    }
}
