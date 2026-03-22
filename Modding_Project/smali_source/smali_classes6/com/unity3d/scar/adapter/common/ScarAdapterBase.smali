.class public abstract Lcom/unity3d/scar/adapter/common/ScarAdapterBase;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/IScarAdapter;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/scar/adapter/common/IAdsErrorHandler<",
            "Lcom/unity3d/scar/adapter/common/WebViewAdsError;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/IAdsErrorHandler<",
            "Lcom/unity3d/scar/adapter/common/WebViewAdsError;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Could not find ad for placement \'"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\'."

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p3, p2, v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/IUnityAdsError;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;

    .line 44
    .line 45
    new-instance p2, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1}, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;-><init>(Lcom/unity3d/scar/adapter/common/ScarAdapterBase;Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/unity3d/scar/adapter/common/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/List;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;",
            ">;",
            "Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/List;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
