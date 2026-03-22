.class public abstract Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const-string p1, "gmaScarBiddingRewardedSignal"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    const-string p1, "gmaScarBiddingInterstitialSignal"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    const-string p1, "gmaScarBiddingBannerSignal"

    .line 28
    .line 29
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/List;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 3
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
    new-instance v0, Lcom/unity3d/scar/adapter/common/DispatchGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, v2, v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;

    .line 35
    .line 36
    invoke-direct {p1, p0, p3, v1}, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;-><init>(Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/unity3d/scar/adapter/common/DispatchGroup;

    .line 2
    .line 3
    invoke-direct {v4}, Lcom/unity3d/scar/adapter/common/DispatchGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;

    .line 7
    .line 8
    invoke-direct {v5}, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p3

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;

    .line 22
    .line 23
    invoke-direct {p1, p0, p4, v5}, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;-><init>(Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/DispatchGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/unity3d/scar/adapter/common/signals/SignalsResult;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->INTERSTITIAL:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 15
    .line 16
    invoke-interface {p0, p1, v2, v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->REWARDED:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 23
    .line 24
    invoke-interface {p0, p1, v2, v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->BANNER:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 33
    .line 34
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;

    .line 38
    .line 39
    invoke-direct {p1, p0, p3, v1}, Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase$GMAScarDispatchCompleted;-><init>(Lcom/unity3d/scar/adapter/common/signals/SignalsCollectorBase;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;Lcom/unity3d/scar/adapter/common/signals/SignalsResult;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
