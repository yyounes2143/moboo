package com.changdu.mobovideo.entity;

import com.changdu.mobovideo.googleengage.data.SeriesInfo;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerialName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J\u0019\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J\u0019\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003JW\u0010\u0015\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00052\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00052\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R,\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR,\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rR,\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;", "Ljava/io/Serializable;", "recoList", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;", "Lkotlin/collections/ArrayList;", "continueWatchingList", "cpList", "<init>", "(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V", "getRecoList$annotations", "()V", "getRecoList", "()Ljava/util/ArrayList;", "getContinueWatchingList$annotations", "getContinueWatchingList", "getCpList$annotations", "getCpList", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GoogleEngageApiResult implements Serializable {
    @NotNull
    private final ArrayList<SeriesInfo> continueWatchingList;
    @NotNull
    private final ArrayList<SeriesInfo> cpList;
    @NotNull
    private final ArrayList<SeriesInfo> recoList;

    public GoogleEngageApiResult() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GoogleEngageApiResult copy$default(GoogleEngageApiResult googleEngageApiResult, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = googleEngageApiResult.recoList;
        }
        if ((i & 2) != 0) {
            arrayList2 = googleEngageApiResult.continueWatchingList;
        }
        if ((i & 4) != 0) {
            arrayList3 = googleEngageApiResult.cpList;
        }
        return googleEngageApiResult.copy(arrayList, arrayList2, arrayList3);
    }

    @NotNull
    public final ArrayList<SeriesInfo> component1() {
        return this.recoList;
    }

    @NotNull
    public final ArrayList<SeriesInfo> component2() {
        return this.continueWatchingList;
    }

    @NotNull
    public final ArrayList<SeriesInfo> component3() {
        return this.cpList;
    }

    @NotNull
    public final GoogleEngageApiResult copy(@NotNull ArrayList<SeriesInfo> arrayList, @NotNull ArrayList<SeriesInfo> arrayList2, @NotNull ArrayList<SeriesInfo> arrayList3) {
        return new GoogleEngageApiResult(arrayList, arrayList2, arrayList3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GoogleEngageApiResult)) {
            return false;
        }
        GoogleEngageApiResult googleEngageApiResult = (GoogleEngageApiResult) obj;
        if (Intrinsics.areEqual(this.recoList, googleEngageApiResult.recoList) && Intrinsics.areEqual(this.continueWatchingList, googleEngageApiResult.continueWatchingList) && Intrinsics.areEqual(this.cpList, googleEngageApiResult.cpList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ArrayList<SeriesInfo> getContinueWatchingList() {
        return this.continueWatchingList;
    }

    @NotNull
    public final ArrayList<SeriesInfo> getCpList() {
        return this.cpList;
    }

    @NotNull
    public final ArrayList<SeriesInfo> getRecoList() {
        return this.recoList;
    }

    public int hashCode() {
        return (((this.recoList.hashCode() * 31) + this.continueWatchingList.hashCode()) * 31) + this.cpList.hashCode();
    }

    @NotNull
    public String toString() {
        ArrayList<SeriesInfo> arrayList = this.recoList;
        ArrayList<SeriesInfo> arrayList2 = this.continueWatchingList;
        ArrayList<SeriesInfo> arrayList3 = this.cpList;
        return "GoogleEngageApiResult(recoList=" + arrayList + ", continueWatchingList=" + arrayList2 + ", cpList=" + arrayList3 + ")";
    }

    public GoogleEngageApiResult(@NotNull ArrayList<SeriesInfo> arrayList, @NotNull ArrayList<SeriesInfo> arrayList2, @NotNull ArrayList<SeriesInfo> arrayList3) {
        this.recoList = arrayList;
        this.continueWatchingList = arrayList2;
        this.cpList = arrayList3;
    }

    public /* synthetic */ GoogleEngageApiResult(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList, (i & 2) != 0 ? new ArrayList() : arrayList2, (i & 4) != 0 ? new ArrayList() : arrayList3);
    }

    @SerialName("continueWatchingList")
    public static /* synthetic */ void getContinueWatchingList$annotations() {
    }

    @SerialName("cpList")
    public static /* synthetic */ void getCpList$annotations() {
    }

    @SerialName("recoList")
    public static /* synthetic */ void getRecoList$annotations() {
    }
}
