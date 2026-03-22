.class public final Lcom/facebook/internal/ImageResponse;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B3\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0011\u0010\u0013R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0017\u001a\u0004\u0008\r\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/internal/ImageResponse;",
        "",
        "Lcom/facebook/internal/ImageRequest;",
        "request",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "",
        "isCachedRedirect",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "<init>",
        "(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/internal/ImageRequest;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/facebook/internal/ImageRequest;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/Exception;",
        "()Ljava/lang/Exception;",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Landroid/graphics/Bitmap;",
        "()Landroid/graphics/Bitmap;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Lcom/facebook/internal/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/ImageRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method
