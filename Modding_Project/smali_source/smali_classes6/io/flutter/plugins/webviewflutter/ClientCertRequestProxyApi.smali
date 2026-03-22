.class Lio/flutter/plugins/webviewflutter/ClientCertRequestProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cancel(Landroid/webkit/ClientCertRequest;)V
    .locals 0
    .param p1    # Landroid/webkit/ClientCertRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public ignore(Landroid/webkit/ClientCertRequest;)V
    .locals 0
    .param p1    # Landroid/webkit/ClientCertRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->ignore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public proceed(Landroid/webkit/ClientCertRequest;Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/webkit/ClientCertRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/PrivateKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ClientCertRequest;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 3
    .line 4
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, [Ljava/security/cert/X509Certificate;

    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
