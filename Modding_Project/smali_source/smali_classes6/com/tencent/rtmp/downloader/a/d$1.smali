.class final Lcom/tencent/rtmp/downloader/a/d$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPOfflineDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/downloader/a/d;->c(Lcom/tencent/rtmp/downloader/a/c;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/rtmp/downloader/a/d;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/downloader/a/d;Lcom/tencent/rtmp/downloader/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDownloadCdnUrlExpired(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "ThumbPlayerDownloader"

    .line 2
    .line 3
    const-string v0, "onDownloadCdnUrlExpired!"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onDownloadCdnUrlUpdate! url:"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "ThumbPlayerDownloader"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDownloadError(IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "offline download error! moduleID:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ", errCode:"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "ThumbPlayerDownloader"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 43
    .line 44
    invoke-interface {p1, v0, p2, p3}, Lcom/tencent/rtmp/downloader/a/d$a;->a(Lcom/tencent/rtmp/downloader/a/c;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onDownloadFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/tencent/rtmp/downloader/a/d$a;->c(Lcom/tencent/rtmp/downloader/a/c;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadSize()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    cmp-long v0, p3, v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 18
    .line 19
    invoke-virtual {v0, p3, p4}, Lcom/tencent/rtmp/downloader/a/c;->b(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p3, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    cmp-long p3, p3, v0

    .line 31
    .line 32
    if-gtz p3, :cond_1

    .line 33
    .line 34
    cmp-long p3, p5, v0

    .line 35
    .line 36
    if-lez p3, :cond_1

    .line 37
    .line 38
    iget-object p3, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 39
    .line 40
    invoke-virtual {p3, p5, p6}, Lcom/tencent/rtmp/downloader/a/c;->a(J)V

    .line 41
    .line 42
    .line 43
    :cond_1
    if-lez p1, :cond_2

    .line 44
    .line 45
    iget-object p3, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Lcom/tencent/rtmp/downloader/a/c;->b(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDuration()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-gtz p1, :cond_4

    .line 57
    .line 58
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    const-string p1, "totalDuration"

    .line 65
    .line 66
    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_4

    .line 71
    .line 72
    const-string p3, ","

    .line 73
    .line 74
    invoke-virtual {p7, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    array-length p4, p3

    .line 79
    const/4 p5, 0x0

    .line 80
    :goto_0
    if-ge p5, p4, :cond_4

    .line 81
    .line 82
    aget-object p6, p3, p5

    .line 83
    .line 84
    invoke-virtual {p6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p7

    .line 88
    if-eqz p7, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 91
    .line 92
    const-string p3, ":"

    .line 93
    .line 94
    invoke-virtual {p6, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    const/4 p4, 0x1

    .line 99
    aget-object p3, p3, p4

    .line 100
    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    mul-int/lit16 p3, p3, 0x3e8

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Lcom/tencent/rtmp/downloader/a/c;->a(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    add-int/lit8 p5, p5, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/c;->e(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/d$1;->b:Lcom/tencent/rtmp/downloader/a/d;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/d;->a(Lcom/tencent/rtmp/downloader/a/d;)Lcom/tencent/rtmp/downloader/a/d$a;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/d$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 138
    .line 139
    invoke-interface {p1, p2}, Lcom/tencent/rtmp/downloader/a/d$a;->d(Lcom/tencent/rtmp/downloader/a/c;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void
.end method

.method public final onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onDownloadProtocolUpdate! protocol:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ", protocolVer:"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "ThumbPlayerDownloader"

    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDownloadStatusUpdate(I)V
    .locals 1

    .line 1
    const-string v0, "onDownloadStatusUpdate! statusCode:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "ThumbPlayerDownloader"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
