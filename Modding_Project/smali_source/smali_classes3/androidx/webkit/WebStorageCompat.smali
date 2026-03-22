.class public final Landroidx/webkit/WebStorageCompat;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static deleteBrowsingData(Landroid/webkit/WebStorage;Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 5
    new-instance v0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v0}, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    invoke-static {p0, v0, p1}, Landroidx/webkit/WebStorageCompat;->deleteBrowsingData(Landroid/webkit/WebStorage;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteBrowsingData(Landroid/webkit/WebStorage;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 2
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/webkit/WebStorageCompat;->getAdapter(Landroid/webkit/WebStorage;)Landroidx/webkit/internal/WebStorageAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebStorageAdapter;->deleteBrowsingData(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static deleteBrowsingDataForSite(Landroid/webkit/WebStorage;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 5
    new-instance v0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v0}, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    invoke-static {p0, p1, v0, p2}, Landroidx/webkit/WebStorageCompat;->deleteBrowsingDataForSite(Landroid/webkit/WebStorage;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteBrowsingDataForSite(Landroid/webkit/WebStorage;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 2
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/webkit/WebStorageCompat;->getAdapter(Landroid/webkit/WebStorage;)Landroidx/webkit/internal/WebStorageAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/webkit/internal/WebStorageAdapter;->deleteBrowsingDataForSite(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method private static getAdapter(Landroid/webkit/WebStorage;)Landroidx/webkit/internal/WebStorageAdapter;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebStorage(Landroid/webkit/WebStorage;)Landroidx/webkit/internal/WebStorageAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
