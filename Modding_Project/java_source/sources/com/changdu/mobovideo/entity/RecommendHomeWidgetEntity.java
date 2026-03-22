package com.changdu.mobovideo.entity;

import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J7\u0010\u0013\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001R&\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;", "Ljava/io/Serializable;", "seriesList", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;", "Lkotlin/collections/ArrayList;", CampaignEx.JSON_KEY_TITLE, "", "noContentText", "<init>", "(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V", "getSeriesList", "()Ljava/util/ArrayList;", "getTitle", "()Ljava/lang/String;", "getNoContentText", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RecommendHomeWidgetEntity implements Serializable {
    @SerializedName("noContentText")
    @NotNull
    private final String noContentText;
    @SerializedName("seriesList")
    @NotNull
    private final ArrayList<SeriesHomeWidgetEntity> seriesList;
    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    @NotNull
    private final String title;

    public RecommendHomeWidgetEntity() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RecommendHomeWidgetEntity copy$default(RecommendHomeWidgetEntity recommendHomeWidgetEntity, ArrayList arrayList, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = recommendHomeWidgetEntity.seriesList;
        }
        if ((i & 2) != 0) {
            str = recommendHomeWidgetEntity.title;
        }
        if ((i & 4) != 0) {
            str2 = recommendHomeWidgetEntity.noContentText;
        }
        return recommendHomeWidgetEntity.copy(arrayList, str, str2);
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> component1() {
        return this.seriesList;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final String component3() {
        return this.noContentText;
    }

    @NotNull
    public final RecommendHomeWidgetEntity copy(@NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str, @NotNull String str2) {
        return new RecommendHomeWidgetEntity(arrayList, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendHomeWidgetEntity)) {
            return false;
        }
        RecommendHomeWidgetEntity recommendHomeWidgetEntity = (RecommendHomeWidgetEntity) obj;
        if (Intrinsics.areEqual(this.seriesList, recommendHomeWidgetEntity.seriesList) && Intrinsics.areEqual(this.title, recommendHomeWidgetEntity.title) && Intrinsics.areEqual(this.noContentText, recommendHomeWidgetEntity.noContentText)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getNoContentText() {
        return this.noContentText;
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> getSeriesList() {
        return this.seriesList;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((this.seriesList.hashCode() * 31) + this.title.hashCode()) * 31) + this.noContentText.hashCode();
    }

    @NotNull
    public String toString() {
        ArrayList<SeriesHomeWidgetEntity> arrayList = this.seriesList;
        String str = this.title;
        String str2 = this.noContentText;
        return "RecommendHomeWidgetEntity(seriesList=" + arrayList + ", title=" + str + ", noContentText=" + str2 + ")";
    }

    public RecommendHomeWidgetEntity(@NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str, @NotNull String str2) {
        this.seriesList = arrayList;
        this.title = str;
        this.noContentText = str2;
    }

    public /* synthetic */ RecommendHomeWidgetEntity(ArrayList arrayList, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2);
    }
}
