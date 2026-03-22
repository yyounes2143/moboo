.class public interface abstract Lcom/unity3d/ads/beta/ShowListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnityAd:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008`\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\tH&\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/unity3d/ads/beta/ShowListener;",
        "UnityAd",
        "",
        "showClick",
        "",
        "unityAd",
        "(Ljava/lang/Object;)V",
        "showComplete",
        "state",
        "Lcom/unity3d/ads/beta/ShowFinishState;",
        "(Ljava/lang/Object;Lcom/unity3d/ads/beta/ShowFinishState;)V",
        "showFailed",
        "error",
        "Lcom/unity3d/ads/beta/UnityAdsError;",
        "(Ljava/lang/Object;Lcom/unity3d/ads/beta/UnityAdsError;)V",
        "showImpression",
        "showStart",
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
.method public abstract showClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method

.method public abstract showComplete(Ljava/lang/Object;Lcom/unity3d/ads/beta/ShowFinishState;)V
    .param p2    # Lcom/unity3d/ads/beta/ShowFinishState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;",
            "Lcom/unity3d/ads/beta/ShowFinishState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showFailed(Ljava/lang/Object;Lcom/unity3d/ads/beta/UnityAdsError;)V
    .param p2    # Lcom/unity3d/ads/beta/UnityAdsError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;",
            "Lcom/unity3d/ads/beta/UnityAdsError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showImpression(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method

.method public abstract showStart(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method
