.class public final synthetic Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/Downloader;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/util/PathProvider;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/load/MraidJsLoader$DownloadResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/MraidJsLoader$DownloadResultListener;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/load/MraidJsLoader$DownloadResultListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/model/AdPayload;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/util/PathProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/Downloader;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/load/MraidJsLoader$DownloadResultListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/model/AdPayload;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/util/PathProvider;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/downloader/Downloader;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/vungle/ads/internal/load/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/load/MraidJsLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/vungle/ads/internal/load/MraidJsLoader$DownloadResultListener;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
