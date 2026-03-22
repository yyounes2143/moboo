.class final synthetic Lcom/tencent/liteav/txcvodplayer/c/b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/txcvodplayer/c/a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/tencent/liteav/txcvodplayer/b/c$b;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->a:Lcom/tencent/liteav/txcvodplayer/c/a;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->e:Lcom/tencent/liteav/txcvodplayer/b/c$b;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/c$b;)Ljava/lang/Runnable;
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/c/b;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/txcvodplayer/c/b;-><init>(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/c$b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->a:Lcom/tencent/liteav/txcvodplayer/c/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/c/b;->e:Lcom/tencent/liteav/txcvodplayer/b/c$b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/txcvodplayer/c/a;->a(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/c$b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
