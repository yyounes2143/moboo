.class public Lio/flutter/plugins/webviewflutter/ViewProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiView;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiView;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/ViewProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    return-object v0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiView;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object v0
.end method

.method public getScrollPosition(Landroid/view/View;)Lio/flutter/plugins/webviewflutter/WebViewPoint;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-long v3, p1

    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/plugins/webviewflutter/WebViewPoint;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public scrollBy(Landroid/view/View;JJ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    long-to-int p2, p2

    .line 2
    long-to-int p3, p4

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public scrollTo(Landroid/view/View;JJ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    long-to-int p2, p2

    .line 2
    long-to-int p3, p4

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;Lio/flutter/plugins/webviewflutter/OverScrollMode;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/webviewflutter/OverScrollMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/ViewProxyApi$1;->$SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p2, v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    if-eq p2, p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/ViewProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Lio/flutter/plugins/webviewflutter/OverScrollMode;->UNKNOWN:Lio/flutter/plugins/webviewflutter/OverScrollMode;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->createUnknownEnumException(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setVerticalScrollBarEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
