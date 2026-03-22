.class public final Lcom/changdu/mobovideo/googleengage/EntityMapper;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/changdu/mobovideo/googleengage/EntityMapper;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;",
        "Landroid/content/Context;",
        "context",
        "Lcom/google/android/engage/video/datamodel/TvShowEntity;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvShowEntity;",
        "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEntityMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityMapper.kt\ncom/changdu/mobovideo/googleengage/EntityMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1869#2,2:100\n1869#2,2:102\n*S KotlinDebug\n*F\n+ 1 EntityMapper.kt\ncom/changdu/mobovideo/googleengage/EntityMapper\n*L\n51#1:100,2\n93#1:102,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/googleengage/EntityMapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/googleengage/EntityMapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/googleengage/EntityMapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/googleengage/EntityMapper;->INSTANCE:Lcom/changdu/mobovideo/googleengage/EntityMapper;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvShowEntity;
    .locals 6
    .param p1    # Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "moboreelsgoogleengage://watchepis"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "seriesId"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getEpisId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "startEpisId"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesId()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getEpisId()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v1, "showDetail"

    .line 72
    .line 73
    const-string v2, "1"

    .line 74
    .line 75
    invoke-virtual {p2, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    new-instance v1, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 97
    .line 98
    invoke-direct {v2}, Lcom/google/android/engage/common/datamodel/Image$Builder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getCoverUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const/16 v3, 0x2d0

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageWidthInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/16 v3, 0x3c0

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageHeightInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/google/android/engage/common/datamodel/Image$Builder;->build()Lcom/google/android/engage/common/datamodel/Image;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p2}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setInfoPageUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getPublishTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setFirstEpisodeAirDateEpochMillis(J)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getUpdateTime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setLatestEpisodeAirDateEpochMillis(J)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getUnlock()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    const/4 v0, 0x3

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x2

    .line 166
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setAvailability(I)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const/4 v0, 0x1

    .line 171
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setSeasonCount(I)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getDescription()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getTypeItemVOList()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/lang/Iterable;

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;->getTypeName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->addGenre(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->build()Lcom/google/android/engage/video/datamodel/TvShowEntity;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;Landroid/content/Context;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;
    .locals 6
    .param p1    # Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "moboreelsgoogleengage://watchepis"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "seriesId"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getEpisId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "startEpisId"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesId()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getEpisId()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v1, "showDetail"

    .line 72
    .line 73
    const-string v2, "1"

    .line 74
    .line 75
    invoke-virtual {p2, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    new-instance v1, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getSeriesName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getWatchNum()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " - "

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 121
    .line 122
    invoke-direct {v2}, Lcom/google/android/engage/common/datamodel/Image$Builder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getCoverUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const/16 v3, 0x2d0

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageWidthInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/16 v3, 0x3c0

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Lcom/google/android/engage/common/datamodel/Image$Builder;->setImageHeightInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/google/android/engage/common/datamodel/Image$Builder;->build()Lcom/google/android/engage/common/datamodel/Image;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, p2}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setInfoPageUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getUnlock()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    .line 171
    const/4 v0, 0x3

    .line 172
    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x2

    .line 174
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setAvailability(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getWatchNum()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setEpisodeNumber(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getDuration()J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setDurationMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getPublishTime()J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setAirDateEpochMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setWatchNextType(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getUpdateTime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setLastEngagementTimeMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getWatchStamp()J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    const-wide/16 v2, 0x1

    .line 220
    .line 221
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v0

    .line 225
    invoke-virtual {p2, v0, v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->setLastPlayBackPositionTimeMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;->getTypeItemVOList()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Ljava/lang/Iterable;

    .line 234
    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;->getTypeName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p2, v0}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->addGenre(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->build()Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    return-object p1
.end method
