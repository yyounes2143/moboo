.class public final synthetic Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloader;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/DownloadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
