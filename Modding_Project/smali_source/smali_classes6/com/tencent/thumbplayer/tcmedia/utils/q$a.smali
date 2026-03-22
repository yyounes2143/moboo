.class Lcom/tencent/thumbplayer/tcmedia/utils/q$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/utils/q;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q$a;->a:Lcom/tencent/thumbplayer/tcmedia/utils/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/utils/q$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/q$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q$a;->a:Lcom/tencent/thumbplayer/tcmedia/utils/q;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
