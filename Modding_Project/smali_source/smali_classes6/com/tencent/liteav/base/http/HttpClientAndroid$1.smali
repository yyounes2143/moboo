.class final Lcom/tencent/liteav/base/http/HttpClientAndroid$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/base/http/HttpClientAndroid;->updateConfig(IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:Lcom/tencent/liteav/base/http/HttpClientAndroid;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->b:I

    .line 6
    .line 7
    iput p4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->c:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->d:Z

    .line 10
    .line 11
    iput p6, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->e:I

    .line 12
    .line 13
    iput p7, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->f:I

    .line 14
    .line 15
    iput-object p8, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->h:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->i:Ljava/lang/String;

    .line 20
    .line 21
    iput p11, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->j:I

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->a:I

    .line 6
    .line 7
    iget v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->b:I

    .line 8
    .line 9
    iget v4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->c:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->d:Z

    .line 12
    .line 13
    iget v6, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->e:I

    .line 14
    .line 15
    iget v7, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->f:I

    .line 16
    .line 17
    iget-object v8, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->g:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->h:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget v11, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->j:I

    .line 24
    .line 25
    invoke-static {v11}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a(I)Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    invoke-direct/range {v1 .. v11}, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;-><init>(IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$002(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$b;)Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 36
    .line 37
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$102(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->e:I

    .line 43
    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 47
    .line 48
    const-wide/16 v1, 0x0

    .line 49
    .line 50
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$202(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)J

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$302(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)J

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
