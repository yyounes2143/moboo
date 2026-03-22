.class public interface abstract Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;",
        "",
        "getCurrentInitializationState",
        "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
        "setInitializationTime",
        "",
        "setInitializationTimeSinceEpoch",
        "setInitializeState",
        "initializeState",
        "setInitialized",
        "initialized",
        "",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setInitializationTime()V
.end method

.method public abstract setInitializationTimeSinceEpoch()V
.end method

.method public abstract setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .param p1    # Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setInitialized(Z)V
.end method
