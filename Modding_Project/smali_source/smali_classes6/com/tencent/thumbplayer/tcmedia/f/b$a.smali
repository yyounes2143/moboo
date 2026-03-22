.class Lcom/tencent/thumbplayer/tcmedia/f/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/f/b;

.field private b:Lcom/tencent/thumbplayer/tcmedia/f/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/f/a$a;

    .line 2
    .line 3
    return-void
.end method

.method public onGetCurrentPositionMs(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;)J
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/f/a$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/f/a$a;->a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 12
    .line 13
    long-to-int v4, v0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/16 v3, 0x137

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    return-wide v0
.end method
