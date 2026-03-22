.class public final Lcom/tencent/liteav/txcplayer/common/b;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:I = -0x1

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/liteav/txcplayer/common/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 2
    sput p0, Lcom/tencent/liteav/txcplayer/common/b;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/liteav/txcplayer/common/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tencent/liteav/txcplayer/common/b;->c:Ljava/util/List;

    return-void
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/liteav/txcplayer/common/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/liteav/txcplayer/common/b;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
