.class public final synthetic Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest$Callback;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest$Callback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/ImageRequest$Callback;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
