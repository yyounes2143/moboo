.class public abstract Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/services/ads/gmascar/managers/IBiddingManager;


# instance fields
.field private final _isAsyncTokenCall:Z

.field private final _scarRequestHandler:Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;

.field protected final isUploadPermitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final scarAdFormatProvider:Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;

.field private final signals:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenIdentifier:Ljava/lang/String;

.field private final unityAdsTokenListener:Lcom/unity3d/ads/IUnityAdsTokenListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;-><init>(Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;Lcom/unity3d/ads/IUnityAdsTokenListener;Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;-><init>(Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;Lcom/unity3d/ads/IUnityAdsTokenListener;Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;Lcom/unity3d/ads/IUnityAdsTokenListener;Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->isUploadPermitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->signals:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->tokenIdentifier:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->unityAdsTokenListener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 9
    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_scarRequestHandler:Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;

    .line 10
    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->scarAdFormatProvider:Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/unity3d/services/ads/gmascar/GMA;->getInstance()Lcom/unity3d/services/ads/gmascar/GMA;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->scarAdFormatProvider:Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;->buildAdFormatList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager$1;-><init>(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/GMA;->getSCARBiddingSignals(Ljava/util/List;Lcom/unity3d/services/ads/gmascar/listeners/IBiddingSignalsListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->unityAdsTokenListener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_scarRequestHandler:Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->tokenIdentifier:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;->getCurrentConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getScarBiddingUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/unity3d/services/ads/gmascar/utils/ScarRequestHandler;->makeUploadRequest(Ljava/lang/String;Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-boolean v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 29
    .line 30
    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsUploadSuccess(Z)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-boolean p0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsUploadFailure(ZLjava/lang/String;)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {v0, p0}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private declared-synchronized attemptUpload()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->signals:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->isUploadPermitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->uploadSignals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method


# virtual methods
.method public fetchSignals()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 6
    .line 7
    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsFetchStart(Z)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v1, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getFormattedToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getTokenIdentifier()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "%s:%s"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v0, v2, v3

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object p1, v2, v0

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_2
    :goto_0
    return-object p1

    .line 39
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .locals 1

    .line 1
    const-class v0, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 8
    .line 9
    return-object v0
.end method

.method public getTokenIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->tokenIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onSignalsReady(Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->signals:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->attemptUpload()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUnityAdsTokenReady(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->unityAdsTokenListener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public permitSignalsUpload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->isUploadPermitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->attemptUpload()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public permitUpload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->isUploadPermitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sendFetchResult(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 10
    .line 11
    invoke-static {v1, p1}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsFetchFailure(ZLjava/lang/String;)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-boolean v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 24
    .line 25
    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsFetchSuccess(Z)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public abstract start()V
.end method

.method public uploadSignals()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 6
    .line 7
    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsUploadStart(Z)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->signals:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v2, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lcom/unity3d/services/ads/gmascar/managers/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->getMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->_isAsyncTokenCall:Z

    .line 50
    .line 51
    const-string v2, "null or empty signals"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->hbSignalsUploadFailure(ZLjava/lang/String;)Lcom/unity3d/services/core/request/metrics/Metric;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
