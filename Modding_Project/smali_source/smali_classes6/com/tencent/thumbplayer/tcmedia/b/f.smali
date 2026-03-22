.class Lcom/tencent/thumbplayer/tcmedia/b/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "base_video"

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    sget p0, Lcom/tencent/thumbplayer/tcmedia/b/f;->d:I

    .line 5
    .line 6
    add-int/lit8 v0, p0, 0x1

    .line 7
    .line 8
    sput v0, Lcom/tencent/thumbplayer/tcmedia/b/f;->d:I

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    sget p0, Lcom/tencent/thumbplayer/tcmedia/b/f;->b:I

    .line 15
    .line 16
    add-int/lit8 v0, p0, 0x1

    .line 17
    .line 18
    sput v0, Lcom/tencent/thumbplayer/tcmedia/b/f;->b:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    const/4 v0, 0x3

    .line 22
    if-ne p0, v0, :cond_2

    .line 23
    .line 24
    sget p0, Lcom/tencent/thumbplayer/tcmedia/b/f;->c:I

    .line 25
    .line 26
    add-int/lit8 v0, p0, 0x1

    .line 27
    .line 28
    sput v0, Lcom/tencent/thumbplayer/tcmedia/b/f;->c:I

    .line 29
    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method
