.class Lio/flutter/plugins/webviewflutter/SslErrorProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiSslError;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiSslError;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public certificate(Landroid/net/http/SslError;)Landroid/net/http/SslCertificate;
    .locals 0
    .param p1    # Landroid/net/http/SslError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/SslErrorProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    return-object v0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiSslError;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object v0
.end method

.method public getPrimaryError(Landroid/net/http/SslError;)Lio/flutter/plugins/webviewflutter/SslErrorType;
    .locals 1
    .param p1    # Landroid/net/http/SslError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNKNOWN:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->DATE_INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNTRUSTED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->ID_MISMATCH:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_4
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->EXPIRED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_5
    sget-object p1, Lio/flutter/plugins/webviewflutter/SslErrorType;->NOT_YET_VALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 41
    .line 42
    return-object p1
.end method

.method public hasError(Landroid/net/http/SslError;Lio/flutter/plugins/webviewflutter/SslErrorType;)Z
    .locals 2
    .param p1    # Landroid/net/http/SslError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/webviewflutter/SslErrorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/SslErrorProxyApi$1;->$SwitchMap$io$flutter$plugins$webviewflutter$SslErrorType:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 p2, -0x1

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/SslErrorProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->createUnknownEnumException(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :pswitch_1
    const/4 p2, 0x3

    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    const/4 p2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    const/4 p2, 0x5

    .line 28
    goto :goto_0

    .line 29
    :pswitch_4
    const/4 p2, 0x2

    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const/4 p2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :pswitch_6
    const/4 p2, 0x4

    .line 34
    :goto_0
    invoke-virtual {p1, p2}, Landroid/net/http/SslError;->hasError(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public url(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/http/SslError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
