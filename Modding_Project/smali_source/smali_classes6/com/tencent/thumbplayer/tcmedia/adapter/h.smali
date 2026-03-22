.class public Lcom/tencent/thumbplayer/tcmedia/adapter/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/os/ParcelFileDescriptor;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

.field private g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public a(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;)V
    .locals 2

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V
    .locals 2

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->f:Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->f:Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d:Landroid/content/res/AssetFileDescriptor;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->f:Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    return v0
.end method
