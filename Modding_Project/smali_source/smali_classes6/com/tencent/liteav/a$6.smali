.class public final Lcom/tencent/liteav/a$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;

.field final synthetic b:Lcom/tencent/liteav/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/a;Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/a$6;->b:Lcom/tencent/liteav/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/a$6;->a:Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/a$6;->a:Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lcom/tencent/liteav/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;->onSubtitleData(Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
