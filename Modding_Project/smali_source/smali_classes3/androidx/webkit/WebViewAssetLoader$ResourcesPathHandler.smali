.class public final Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourcesPathHandler"
.end annotation


# instance fields
.field private final mAssetHelper:Landroidx/webkit/internal/AssetHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/webkit/internal/AssetHelper;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/AssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/internal/AssetHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Landroidx/webkit/internal/AssetHelper;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v2, Landroid/webkit/WebResourceResponse;

    .line 13
    .line 14
    invoke-direct {v2, p1, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :catch_0
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 19
    .line 20
    invoke-direct {p1, v0, v0, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method
