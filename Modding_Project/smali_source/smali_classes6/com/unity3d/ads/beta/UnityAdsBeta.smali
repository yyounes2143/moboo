.class public final Lcom/unity3d/ads/beta/UnityAdsBeta;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000fH\u0000\"\u0014\u0010\u0000\u001a\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0002\"\u0014\u0010\u0003\u001a\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "isInitialize",
        "",
        "()Z",
        "version",
        "",
        "getVersion",
        "()Ljava/lang/String;",
        "getToken",
        "",
        "configuration",
        "Lcom/unity3d/ads/beta/TokenConfiguration;",
        "listener",
        "Lcom/unity3d/ads/beta/TokenListener;",
        "initialize",
        "Lcom/unity3d/ads/beta/InitializationConfiguration;",
        "Lcom/unity3d/ads/beta/InitializationListener;",
        "unity-ads_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "UnityAdsBeta"
.end annotation


# direct methods
.method public static final getToken(Lcom/unity3d/ads/beta/TokenConfiguration;Lcom/unity3d/ads/beta/TokenListener;)V
    .locals 0
    .param p0    # Lcom/unity3d/ads/beta/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/unity3d/ads/beta/TokenListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public static final initialize(Lcom/unity3d/ads/beta/InitializationConfiguration;Lcom/unity3d/ads/beta/InitializationListener;)V
    .locals 0
    .param p0    # Lcom/unity3d/ads/beta/InitializationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/unity3d/ads/beta/InitializationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static final isInitialize()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
