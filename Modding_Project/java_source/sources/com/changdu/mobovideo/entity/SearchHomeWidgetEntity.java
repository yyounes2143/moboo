package com.changdu.mobovideo.entity;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J7\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR&\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;", "Ljava/io/Serializable;", "searchHintText", "", "seriesList", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;", "Lkotlin/collections/ArrayList;", "noContentText", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V", "getSearchHintText", "()Ljava/lang/String;", "getSeriesList", "()Ljava/util/ArrayList;", "getNoContentText", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SearchHomeWidgetEntity implements Serializable {
    @SerializedName("noContentText")
    @NotNull
    private final String noContentText;
    @SerializedName("searchHintText")
    @NotNull
    private final String searchHintText;
    @SerializedName("seriesList")
    @NotNull
    private final ArrayList<SeriesHomeWidgetEntity> seriesList;

    public SearchHomeWidgetEntity() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchHomeWidgetEntity copy$default(SearchHomeWidgetEntity searchHomeWidgetEntity, String str, ArrayList arrayList, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchHomeWidgetEntity.searchHintText;
        }
        if ((i & 2) != 0) {
            arrayList = searchHomeWidgetEntity.seriesList;
        }
        if ((i & 4) != 0) {
            str2 = searchHomeWidgetEntity.noContentText;
        }
        return searchHomeWidgetEntity.copy(str, arrayList, str2);
    }

    @NotNull
    public final String component1() {
        return this.searchHintText;
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> component2() {
        return this.seriesList;
    }

    @NotNull
    public final String component3() {
        return this.noContentText;
    }

    @NotNull
    public final SearchHomeWidgetEntity copy(@NotNull String str, @NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str2) {
        return new SearchHomeWidgetEntity(str, arrayList, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchHomeWidgetEntity)) {
            return false;
        }
        SearchHomeWidgetEntity searchHomeWidgetEntity = (SearchHomeWidgetEntity) obj;
        if (Intrinsics.areEqual(this.searchHintText, searchHomeWidgetEntity.searchHintText) && Intrinsics.areEqual(this.seriesList, searchHomeWidgetEntity.seriesList) && Intrinsics.areEqual(this.noContentText, searchHomeWidgetEntity.noContentText)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getNoContentText() {
        return this.noContentText;
    }

    @NotNull
    public final String getSearchHintText() {
        return this.searchHintText;
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> getSeriesList() {
        return this.seriesList;
    }

    public int hashCode() {
        return (((this.searchHintText.hashCode() * 31) + this.seriesList.hashCode()) * 31) + this.noContentText.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.searchHintText;
        ArrayList<SeriesHomeWidgetEntity> arrayList = this.seriesList;
        String str2 = this.noContentText;
        return "SearchHomeWidgetEntity(searchHintText=" + str + ", seriesList=" + arrayList + ", noContentText=" + str2 + ")";
    }

    public SearchHomeWidgetEntity(@NotNull String str, @NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str2) {
        this.searchHintText = str;
        this.seriesList = arrayList;
        this.noContentText = str2;
    }

    public /* synthetic */ SearchHomeWidgetEntity(String str, ArrayList arrayList, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new ArrayList() : arrayList, (i & 4) != 0 ? "" : str2);
    }
}
