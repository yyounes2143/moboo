package com.changdu.mobovideo.entity;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;", "Ljava/io/Serializable;", "seriesName", "", "coverUrl", "seriesId", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "getSeriesName", "()Ljava/lang/String;", "getCoverUrl", "getSeriesId", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SeriesHomeWidgetEntity implements Serializable {
    @SerializedName("coverUrl")
    @NotNull
    private final String coverUrl;
    @SerializedName("seriesId")
    private final long seriesId;
    @SerializedName("seriesName")
    @NotNull
    private final String seriesName;

    public SeriesHomeWidgetEntity() {
        this(null, null, 0L, 7, null);
    }

    public static /* synthetic */ SeriesHomeWidgetEntity copy$default(SeriesHomeWidgetEntity seriesHomeWidgetEntity, String str, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = seriesHomeWidgetEntity.seriesName;
        }
        if ((i & 2) != 0) {
            str2 = seriesHomeWidgetEntity.coverUrl;
        }
        if ((i & 4) != 0) {
            j = seriesHomeWidgetEntity.seriesId;
        }
        return seriesHomeWidgetEntity.copy(str, str2, j);
    }

    @NotNull
    public final String component1() {
        return this.seriesName;
    }

    @NotNull
    public final String component2() {
        return this.coverUrl;
    }

    public final long component3() {
        return this.seriesId;
    }

    @NotNull
    public final SeriesHomeWidgetEntity copy(@NotNull String str, @NotNull String str2, long j) {
        return new SeriesHomeWidgetEntity(str, str2, j);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SeriesHomeWidgetEntity)) {
            return false;
        }
        SeriesHomeWidgetEntity seriesHomeWidgetEntity = (SeriesHomeWidgetEntity) obj;
        if (Intrinsics.areEqual(this.seriesName, seriesHomeWidgetEntity.seriesName) && Intrinsics.areEqual(this.coverUrl, seriesHomeWidgetEntity.coverUrl) && this.seriesId == seriesHomeWidgetEntity.seriesId) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final long getSeriesId() {
        return this.seriesId;
    }

    @NotNull
    public final String getSeriesName() {
        return this.seriesName;
    }

    public int hashCode() {
        return (((this.seriesName.hashCode() * 31) + this.coverUrl.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.seriesId);
    }

    @NotNull
    public String toString() {
        String str = this.seriesName;
        String str2 = this.coverUrl;
        long j = this.seriesId;
        return "SeriesHomeWidgetEntity(seriesName=" + str + ", coverUrl=" + str2 + ", seriesId=" + j + ")";
    }

    public SeriesHomeWidgetEntity(@NotNull String str, @NotNull String str2, long j) {
        this.seriesName = str;
        this.coverUrl = str2;
        this.seriesId = j;
    }

    public /* synthetic */ SeriesHomeWidgetEntity(String str, String str2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 0L : j);
    }
}
