.class Lcom/applovin/impl/d0$b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d0;->a(Landroid/view/View;Lcom/applovin/impl/d0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/d0$d;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/applovin/impl/d0;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/d0;Lcom/applovin/impl/d0$d;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d0$b;->c:Lcom/applovin/impl/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/d0$b;->a:Lcom/applovin/impl/d0$d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/impl/d0$b;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/applovin/impl/d0$b;->a:Lcom/applovin/impl/d0$d;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/d0$b;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/applovin/impl/d0$d;->a(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d0$b;->c:Lcom/applovin/impl/d0;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/applovin/impl/d0;->h(Lcom/applovin/impl/d0;)Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/applovin/impl/d0$b;->c:Lcom/applovin/impl/d0;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/applovin/impl/d0;->h(Lcom/applovin/impl/d0;)Lcom/applovin/impl/sdk/o;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Failed to capture screenshot with error code: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "BlackViewDetector"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/d0$b;->a:Lcom/applovin/impl/d0$d;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, v0}, Lcom/applovin/impl/d0$d;->a(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
