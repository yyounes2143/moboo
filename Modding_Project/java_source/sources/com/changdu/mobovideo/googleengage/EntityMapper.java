package com.changdu.mobovideo.googleengage;

import android.content.Context;
import android.net.Uri;
import com.changdu.mobovideo.googleengage.data.SeriesInfo;
import com.changdu.mobovideo.googleengage.data.TypeItemVO;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.video.datamodel.TvEpisodeEntity;
import com.google.android.engage.video.datamodel.TvShowEntity;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\b\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/changdu/mobovideo/googleengage/EntityMapper;", "", "<init>", "()V", "Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;", "Landroid/content/Context;", "context", "Lcom/google/android/engage/video/datamodel/TvShowEntity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvShowEntity;", "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEntityMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityMapper.kt\ncom/changdu/mobovideo/googleengage/EntityMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1869#2,2:100\n1869#2,2:102\n*S KotlinDebug\n*F\n+ 1 EntityMapper.kt\ncom/changdu/mobovideo/googleengage/EntityMapper\n*L\n51#1:100,2\n93#1:102,2\n*E\n"})
/* loaded from: classes3.dex */
public final class EntityMapper {
    @NotNull
    public static final EntityMapper INSTANCE = new EntityMapper();

    @NotNull
    public final TvShowEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SeriesInfo seriesInfo, @NotNull Context context) {
        int i;
        Uri parse = Uri.parse("moboreelsgoogleengage://watchepis");
        Uri build = parse.buildUpon().appendQueryParameter("seriesId", String.valueOf(seriesInfo.getSeriesId())).appendQueryParameter("startEpisId", String.valueOf(seriesInfo.getEpisId())).build();
        TvShowEntity.Builder latestEpisodeAirDateEpochMillis = new TvShowEntity.Builder().setName(seriesInfo.getSeriesName()).addPosterImage(new Image.Builder().setImageUri(Uri.parse(seriesInfo.getCoverUrl())).setImageWidthInPixel(TXVodDownloadDataSource.QUALITY_720P).setImageHeightInPixel(960).build()).setPlayBackUri(build).setInfoPageUri(parse.buildUpon().appendQueryParameter("seriesId", String.valueOf(seriesInfo.getSeriesId())).appendQueryParameter("startEpisId", String.valueOf(seriesInfo.getEpisId())).appendQueryParameter("showDetail", "1").build()).setFirstEpisodeAirDateEpochMillis(seriesInfo.getPublishTime()).setLatestEpisodeAirDateEpochMillis(seriesInfo.getUpdateTime());
        if (seriesInfo.getUnlock()) {
            i = 3;
        } else {
            i = 2;
        }
        TvShowEntity.Builder description = latestEpisodeAirDateEpochMillis.setAvailability(i).setSeasonCount(1).setDescription(seriesInfo.getDescription());
        for (TypeItemVO typeItemVO : seriesInfo.getTypeItemVOList()) {
            description.addGenre(typeItemVO.getTypeName());
        }
        return description.build();
    }

    @NotNull
    public final TvEpisodeEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SeriesInfo seriesInfo, @NotNull Context context) {
        int i;
        Uri parse = Uri.parse("moboreelsgoogleengage://watchepis");
        Uri build = parse.buildUpon().appendQueryParameter("seriesId", String.valueOf(seriesInfo.getSeriesId())).appendQueryParameter("startEpisId", String.valueOf(seriesInfo.getEpisId())).build();
        Uri build2 = parse.buildUpon().appendQueryParameter("seriesId", String.valueOf(seriesInfo.getSeriesId())).appendQueryParameter("startEpisId", String.valueOf(seriesInfo.getEpisId())).appendQueryParameter("showDetail", "1").build();
        TvEpisodeEntity.Builder builder = new TvEpisodeEntity.Builder();
        String seriesName = seriesInfo.getSeriesName();
        int watchNum = seriesInfo.getWatchNum();
        TvEpisodeEntity.Builder playBackUri = builder.setName(seriesName + " - " + watchNum).addPosterImage(new Image.Builder().setImageUri(Uri.parse(seriesInfo.getCoverUrl())).setImageWidthInPixel(TXVodDownloadDataSource.QUALITY_720P).setImageHeightInPixel(960).build()).setInfoPageUri(build2).setPlayBackUri(build);
        if (seriesInfo.getUnlock()) {
            i = 3;
        } else {
            i = 2;
        }
        TvEpisodeEntity.Builder lastPlayBackPositionTimeMillis = playBackUri.setAvailability(i).setEpisodeNumber(seriesInfo.getWatchNum()).setDurationMillis(seriesInfo.getDuration()).setAirDateEpochMillis(seriesInfo.getPublishTime()).setWatchNextType(1).setLastEngagementTimeMillis(seriesInfo.getUpdateTime()).setLastPlayBackPositionTimeMillis(Math.max(seriesInfo.getWatchStamp(), 1L));
        for (TypeItemVO typeItemVO : seriesInfo.getTypeItemVOList()) {
            lastPlayBackPositionTimeMillis.addGenre(typeItemVO.getTypeName());
        }
        return lastPlayBackPositionTimeMillis.build();
    }
}
