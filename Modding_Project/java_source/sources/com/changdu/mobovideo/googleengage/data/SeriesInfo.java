package com.changdu.mobovideo.googleengage.data;

import androidx.annotation.Keep;
import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b1\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BË\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0005HÆ\u0003J\t\u00107\u001a\u00020\u0007HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0007HÆ\u0003J\t\u0010;\u001a\u00020\u0005HÆ\u0003J\t\u0010<\u001a\u00020\u0007HÆ\u0003J\t\u0010=\u001a\u00020\u0007HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0007HÆ\u0003J\t\u0010@\u001a\u00020\u0005HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0005HÆ\u0003J\u000f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0019HÆ\u0003J\t\u0010G\u001a\u00020\u0005HÆ\u0003JÍ\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00052\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u0005HÆ\u0001J\u0013\u0010I\u001a\u00020\u00192\b\u0010J\u001a\u0004\u0018\u00010KHÖ\u0003J\t\u0010L\u001a\u00020\u0007HÖ\u0001J\t\u0010M\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001eR\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\"R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010 R\u0016\u0010\f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u0016\u0010\r\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u0016\u0010\u000e\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010 R\u0016\u0010\u000f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\"R\u0016\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010 R\u0016\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001eR\u0016\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001eR\u0016\u0010\u0013\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010 R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0016\u0010\u0017\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001eR\u0016\u0010\u0018\u001a\u00020\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0016\u0010\u001a\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010 ¨\u0006N"}, d2 = {"Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;", "Ljava/io/Serializable;", "seriesId", "", "seriesName", "", "langId", "", "episId", "watchStamp", "watchNum", "coverUrl", "lastEpis", "publishStatus", "discountText", "tagType", "dubbedText", "publishTime", TypedValues.TransitionType.S_DURATION, "continueType", "typeItemVOList", "", "Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;", "updateTime", "unlock", "", "description", "<init>", "(JLjava/lang/String;IJJILjava/lang/String;IILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/util/List;JZLjava/lang/String;)V", "getSeriesId", "()J", "getSeriesName", "()Ljava/lang/String;", "getLangId", "()I", "getEpisId", "getWatchStamp", "getWatchNum", "getCoverUrl", "getLastEpis", "getPublishStatus", "getDiscountText", "getTagType", "getDubbedText", "getPublishTime", "getDuration", "getContinueType", "getTypeItemVOList", "()Ljava/util/List;", "getUpdateTime", "getUnlock", "()Z", "getDescription", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "copy", "equals", "other", "", "hashCode", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SeriesInfo implements Serializable {
    @SerializedName("continueType")
    @NotNull
    private final String continueType;
    @SerializedName("coverUrl")
    @NotNull
    private final String coverUrl;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("discountText")
    @NotNull
    private final String discountText;
    @SerializedName("dubbedText")
    @NotNull
    private final String dubbedText;
    @SerializedName(TypedValues.TransitionType.S_DURATION)
    private final long duration;
    @SerializedName("episId")
    private final long episId;
    @SerializedName("langId")
    private final int langId;
    @SerializedName("lastEpis")
    private final int lastEpis;
    @SerializedName("publishStatus")
    private final int publishStatus;
    @SerializedName("publishTime")
    private final long publishTime;
    @SerializedName("seriesId")
    private final long seriesId;
    @SerializedName("seriesName")
    @NotNull
    private final String seriesName;
    @SerializedName("tagType")
    private final int tagType;
    @SerializedName("typeItemVOList")
    @NotNull
    private final List<TypeItemVO> typeItemVOList;
    @SerializedName("unlock")
    private final boolean unlock;
    @SerializedName("updateTime")
    private final long updateTime;
    @SerializedName("watchNum")
    private final int watchNum;
    @SerializedName("watchStamp")
    private final long watchStamp;

    public SeriesInfo() {
        this(0L, null, 0, 0L, 0L, 0, null, 0, 0, null, 0, null, 0L, 0L, null, null, 0L, false, null, 524287, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SeriesInfo copy$default(SeriesInfo seriesInfo, long j, String str, int i, long j2, long j3, int i2, String str2, int i3, int i4, String str3, int i5, String str4, long j4, long j5, String str5, List list, long j6, boolean z, String str6, int i6, Object obj) {
        long j7 = (i6 & 1) != 0 ? seriesInfo.seriesId : j;
        return seriesInfo.copy(j7, (i6 & 2) != 0 ? seriesInfo.seriesName : str, (i6 & 4) != 0 ? seriesInfo.langId : i, (i6 & 8) != 0 ? seriesInfo.episId : j2, (i6 & 16) != 0 ? seriesInfo.watchStamp : j3, (i6 & 32) != 0 ? seriesInfo.watchNum : i2, (i6 & 64) != 0 ? seriesInfo.coverUrl : str2, (i6 & 128) != 0 ? seriesInfo.lastEpis : i3, (i6 & 256) != 0 ? seriesInfo.publishStatus : i4, (i6 & 512) != 0 ? seriesInfo.discountText : str3, (i6 & 1024) != 0 ? seriesInfo.tagType : i5, (i6 & 2048) != 0 ? seriesInfo.dubbedText : str4, (i6 & 4096) != 0 ? seriesInfo.publishTime : j4, (i6 & 8192) != 0 ? seriesInfo.duration : j5, (i6 & 16384) != 0 ? seriesInfo.continueType : str5, (32768 & i6) != 0 ? seriesInfo.typeItemVOList : list, (i6 & 65536) != 0 ? seriesInfo.updateTime : j6, (i6 & 131072) != 0 ? seriesInfo.unlock : z, (i6 & 262144) != 0 ? seriesInfo.description : str6);
    }

    public final long component1() {
        return this.seriesId;
    }

    @NotNull
    public final String component10() {
        return this.discountText;
    }

    public final int component11() {
        return this.tagType;
    }

    @NotNull
    public final String component12() {
        return this.dubbedText;
    }

    public final long component13() {
        return this.publishTime;
    }

    public final long component14() {
        return this.duration;
    }

    @NotNull
    public final String component15() {
        return this.continueType;
    }

    @NotNull
    public final List<TypeItemVO> component16() {
        return this.typeItemVOList;
    }

    public final long component17() {
        return this.updateTime;
    }

    public final boolean component18() {
        return this.unlock;
    }

    @NotNull
    public final String component19() {
        return this.description;
    }

    @NotNull
    public final String component2() {
        return this.seriesName;
    }

    public final int component3() {
        return this.langId;
    }

    public final long component4() {
        return this.episId;
    }

    public final long component5() {
        return this.watchStamp;
    }

    public final int component6() {
        return this.watchNum;
    }

    @NotNull
    public final String component7() {
        return this.coverUrl;
    }

    public final int component8() {
        return this.lastEpis;
    }

    public final int component9() {
        return this.publishStatus;
    }

    @NotNull
    public final SeriesInfo copy(long j, @NotNull String str, int i, long j2, long j3, int i2, @NotNull String str2, int i3, int i4, @NotNull String str3, int i5, @NotNull String str4, long j4, long j5, @NotNull String str5, @NotNull List<TypeItemVO> list, long j6, boolean z, @NotNull String str6) {
        return new SeriesInfo(j, str, i, j2, j3, i2, str2, i3, i4, str3, i5, str4, j4, j5, str5, list, j6, z, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SeriesInfo)) {
            return false;
        }
        SeriesInfo seriesInfo = (SeriesInfo) obj;
        if (this.seriesId == seriesInfo.seriesId && Intrinsics.areEqual(this.seriesName, seriesInfo.seriesName) && this.langId == seriesInfo.langId && this.episId == seriesInfo.episId && this.watchStamp == seriesInfo.watchStamp && this.watchNum == seriesInfo.watchNum && Intrinsics.areEqual(this.coverUrl, seriesInfo.coverUrl) && this.lastEpis == seriesInfo.lastEpis && this.publishStatus == seriesInfo.publishStatus && Intrinsics.areEqual(this.discountText, seriesInfo.discountText) && this.tagType == seriesInfo.tagType && Intrinsics.areEqual(this.dubbedText, seriesInfo.dubbedText) && this.publishTime == seriesInfo.publishTime && this.duration == seriesInfo.duration && Intrinsics.areEqual(this.continueType, seriesInfo.continueType) && Intrinsics.areEqual(this.typeItemVOList, seriesInfo.typeItemVOList) && this.updateTime == seriesInfo.updateTime && this.unlock == seriesInfo.unlock && Intrinsics.areEqual(this.description, seriesInfo.description)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getContinueType() {
        return this.continueType;
    }

    @NotNull
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getDiscountText() {
        return this.discountText;
    }

    @NotNull
    public final String getDubbedText() {
        return this.dubbedText;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getEpisId() {
        return this.episId;
    }

    public final int getLangId() {
        return this.langId;
    }

    public final int getLastEpis() {
        return this.lastEpis;
    }

    public final int getPublishStatus() {
        return this.publishStatus;
    }

    public final long getPublishTime() {
        return this.publishTime;
    }

    public final long getSeriesId() {
        return this.seriesId;
    }

    @NotNull
    public final String getSeriesName() {
        return this.seriesName;
    }

    public final int getTagType() {
        return this.tagType;
    }

    @NotNull
    public final List<TypeItemVO> getTypeItemVOList() {
        return this.typeItemVOList;
    }

    public final boolean getUnlock() {
        return this.unlock;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final int getWatchNum() {
        return this.watchNum;
    }

    public final long getWatchStamp() {
        return this.watchStamp;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.seriesId) * 31) + this.seriesName.hashCode()) * 31) + this.langId) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.episId)) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.watchStamp)) * 31) + this.watchNum) * 31) + this.coverUrl.hashCode()) * 31) + this.lastEpis) * 31) + this.publishStatus) * 31) + this.discountText.hashCode()) * 31) + this.tagType) * 31) + this.dubbedText.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.publishTime)) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.duration)) * 31) + this.continueType.hashCode()) * 31) + this.typeItemVOList.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.updateTime)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.unlock)) * 31) + this.description.hashCode();
    }

    @NotNull
    public String toString() {
        long j = this.seriesId;
        String str = this.seriesName;
        int i = this.langId;
        long j2 = this.episId;
        long j3 = this.watchStamp;
        int i2 = this.watchNum;
        String str2 = this.coverUrl;
        int i3 = this.lastEpis;
        int i4 = this.publishStatus;
        String str3 = this.discountText;
        int i5 = this.tagType;
        String str4 = this.dubbedText;
        long j4 = this.publishTime;
        long j5 = this.duration;
        String str5 = this.continueType;
        List<TypeItemVO> list = this.typeItemVOList;
        long j6 = this.updateTime;
        boolean z = this.unlock;
        String str6 = this.description;
        return "SeriesInfo(seriesId=" + j + ", seriesName=" + str + ", langId=" + i + ", episId=" + j2 + ", watchStamp=" + j3 + ", watchNum=" + i2 + ", coverUrl=" + str2 + ", lastEpis=" + i3 + ", publishStatus=" + i4 + ", discountText=" + str3 + ", tagType=" + i5 + ", dubbedText=" + str4 + ", publishTime=" + j4 + ", duration=" + j5 + ", continueType=" + str5 + ", typeItemVOList=" + list + ", updateTime=" + j6 + ", unlock=" + z + ", description=" + str6 + ")";
    }

    public SeriesInfo(long j, @NotNull String str, int i, long j2, long j3, int i2, @NotNull String str2, int i3, int i4, @NotNull String str3, int i5, @NotNull String str4, long j4, long j5, @NotNull String str5, @NotNull List<TypeItemVO> list, long j6, boolean z, @NotNull String str6) {
        this.seriesId = j;
        this.seriesName = str;
        this.langId = i;
        this.episId = j2;
        this.watchStamp = j3;
        this.watchNum = i2;
        this.coverUrl = str2;
        this.lastEpis = i3;
        this.publishStatus = i4;
        this.discountText = str3;
        this.tagType = i5;
        this.dubbedText = str4;
        this.publishTime = j4;
        this.duration = j5;
        this.continueType = str5;
        this.typeItemVOList = list;
        this.updateTime = j6;
        this.unlock = z;
        this.description = str6;
    }

    public /* synthetic */ SeriesInfo(long j, String str, int i, long j2, long j3, int i2, String str2, int i3, int i4, String str3, int i5, String str4, long j4, long j5, String str5, List list, long j6, boolean z, String str6, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? 0L : j, (i6 & 2) != 0 ? "" : str, (i6 & 4) != 0 ? 0 : i, (i6 & 8) != 0 ? 0L : j2, (i6 & 16) != 0 ? 0L : j3, (i6 & 32) != 0 ? 0 : i2, (i6 & 64) != 0 ? "" : str2, (i6 & 128) != 0 ? 0 : i3, (i6 & 256) != 0 ? 0 : i4, (i6 & 512) != 0 ? "" : str3, (i6 & 1024) != 0 ? 0 : i5, (i6 & 2048) != 0 ? "" : str4, (i6 & 4096) != 0 ? 0L : j4, (i6 & 8192) != 0 ? 0L : j5, (i6 & 16384) != 0 ? "" : str5, (i6 & 32768) != 0 ? CollectionsKt.emptyList() : list, (i6 & 65536) != 0 ? 0L : j6, (i6 & 131072) != 0 ? false : z, (i6 & 262144) != 0 ? "" : str6);
    }
}
