.class Lcom/tencent/thumbplayer/tcmedia/c/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tencent/thumbplayer/tcmedia/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/i;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/i$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/c/i$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/tencent/thumbplayer/tcmedia/c/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/c/i$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 2
    .line 3
    return-object v0
.end method
