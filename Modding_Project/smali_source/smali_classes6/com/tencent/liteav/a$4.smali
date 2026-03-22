.class final Lcom/tencent/liteav/a$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/liteav/a;->t(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 10
    .line 11
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Lcom/tencent/liteav/txcvodplayer/renderer/c;)Lcom/tencent/liteav/txcvodplayer/renderer/c;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/tencent/liteav/a;->t(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/c;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "SubtitleRender"

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    const-string p1, "[renderToBitmap] subtitleFrameBuffer is null"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "[renderToBitmap] subtitleFrameBuffer, trackId: "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v2, p2, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->trackID:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " ,width: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcWidth()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", height: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a:Landroid/graphics/Bitmap;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcWidth()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcHeight()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eq v0, v1, :cond_3

    .line 104
    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcWidth()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getSrcHeight()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 114
    .line 115
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p1, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->getData()[[B

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const/4 v0, 0x0

    .line 126
    aget-object p2, p2, v0

    .line 127
    .line 128
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p1, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a:Landroid/graphics/Bitmap;

    .line 138
    .line 139
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 140
    .line 141
    invoke-static {p2}, Lcom/tencent/liteav/a;->u(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/ui/TXSubtitleView;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-eqz p2, :cond_4

    .line 146
    .line 147
    iget-object p2, p0, Lcom/tencent/liteav/a$4;->a:Lcom/tencent/liteav/a;

    .line 148
    .line 149
    invoke-static {p2}, Lcom/tencent/liteav/a;->u(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/ui/TXSubtitleView;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2, p1}, Lcom/tencent/rtmp/ui/TXSubtitleView;->show(Landroid/graphics/Bitmap;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    return-void
.end method
