package com.changdu.mobovideo.googleengage.data;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J#\u0010\u000b\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R&\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/googleengage/data/ContentModel;", "Ljava/io/Serializable;", "dataList", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/ArrayList;)V", "getDataList", "()Ljava/util/ArrayList;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ContentModel implements Serializable {
    @SerializedName("dataList")
    @NotNull
    private final ArrayList<SeriesInfo> dataList;

    public ContentModel() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ContentModel copy$default(ContentModel contentModel, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = contentModel.dataList;
        }
        return contentModel.copy(arrayList);
    }

    @NotNull
    public final ArrayList<SeriesInfo> component1() {
        return this.dataList;
    }

    @NotNull
    public final ContentModel copy(@NotNull ArrayList<SeriesInfo> arrayList) {
        return new ContentModel(arrayList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ContentModel) && Intrinsics.areEqual(this.dataList, ((ContentModel) obj).dataList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ArrayList<SeriesInfo> getDataList() {
        return this.dataList;
    }

    public int hashCode() {
        return this.dataList.hashCode();
    }

    @NotNull
    public String toString() {
        ArrayList<SeriesInfo> arrayList = this.dataList;
        return "ContentModel(dataList=" + arrayList + ")";
    }

    public ContentModel(@NotNull ArrayList<SeriesInfo> arrayList) {
        this.dataList = arrayList;
    }

    public /* synthetic */ ContentModel(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList);
    }
}
